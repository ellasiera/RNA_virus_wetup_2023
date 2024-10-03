# IRGA data processing function
# E.S. 10/8/2021

# This function takes raw data from an IRGA single-injection system and calculates the CO2 concentration
# Inputs are assumed to be from jar incubations, so jar volume is specified to calculate C/jar in mg.
# Calibration is performed using peak area.
# Input data must be strictly formatted:

# (1) IRGA_file is the file where the raw data are stored.
# This corresponds to the .txt file output from the LI-850.

# (2) sequence file is a .csv file with strict column/data format requirements
# It gives the sample ID sequence plus operator estimates of peak height used for data QC
# These estimates are best recorded in a notebook along with the injection sequence during sampling.
# See example sequence file before setting this up.

# (3) baseline parameter must specify the baseline value for the IRGA system.
# this corresponds to the threshold value that the operator used to separate injections.
# when using the IRGA, be sure that the readings fall below this value before injecting a new sample.
# the function will auto-calculate the baseline if the value is set to 'auto'
# auto calculation assumes the baseline is 2 + the mode of the data

# (4)-(8) are parameters for gas-law calculations.
# default values are supplied assuming standard pressure and a lab temperature of 20c

# For each IRGA sample sequence the function produces a four-panel QC graph:
# Panel 1: raw time series 
# Panel 2: checks estimated heights against the heights from the file.
#          * If there are substantial deviations then the sequence file has errors.
#          * Missed injection or double-entered injection
#          * Baseline could be too high or too low.
# Panel 3: checks height/area relationship
#          * Measures peak shape. Must show a straight line with minimal scatter.
#          * If there are a few strong deviations, peaks may be merged due to low baseline parameter.
#          * Alternatively the flow rate was changed mid-run, in which case the data are not trustworthy.
# Panel 4: shows standard curve
#          * If the standard curve fails, this could reflect misalligned sample sequence.
#          * If there were issues recorded during calibration, exclude standards by leaving the ID blank.




# example line of code to run function:

# cdata = IRGA_data("IRGA_data_example.txt","sequence_file_example.csv")


IRGA_data = function(IRGA_file,sequence_file,baseline="auto",logging_rate = 0.5,
                     labtemp=20,AtmP=101.325,R = 8.3144621e3,
                     AbsZero=-273.15,AW_C = 12.01){
  
  #=============================================================
  # User inputs
  #=============================================================
  # AtmP = 101.325 #kPa
  # R = 8.3144621e3 #cm^3 kPa / mol K
  # AbsZero = -273 # c
  # AW_C = 12.01 #g/mol
  # lab_temperature = 20 # safe to assume 20 c
  # IRGA_file = "C:/Users/..." # path to the .txt file with the raw data
  # sequence_file = "C:/Users/..." # path to the .csv file holding the sample sequence
  
  #=============================================================
  # F0: read data
  #=============================================================
  
  # read in sample sequence
  sample_sequence = read.csv(sequence_file,
                             colClasses=c("numeric","character","numeric","numeric"))
  sample_sequence = data.frame(file=rep(IRGA_file,nrow(sample_sequence)),sample_sequence)
  sample_sequence$baseline_type = ifelse(baseline=="auto","auto","user")
  
  # read in the raw data file
  CO2_timeseries = read.table(IRGA_file,header=T,skip=1)
  colnames(CO2_timeseries) = c("date","time","CO2","H2O","H2O_C","Cell_Temp","Cell_P","CO2_abs","H2O_abs","Voltage")
  
  # read the timestamp on the file
  timestamp_date = strsplit(as.character(read.table(IRGA_file,header=F,nrow=1)[1,1])," ")[[1]][1]
  timestamp_time = as.character(CO2_timeseries$time[1])
  timestamp = strptime(paste(timestamp_date,timestamp_time),"%F%X")
  
  # time since file initiated in seconds
  CO2_timeseries$time_elapsed = seq(1,nrow(CO2_timeseries),1)*logging_rate

  # logical indicating values above the baseline
  
  if(baseline=="auto"){
    dfun = density(CO2_timeseries$CO2)
    baseline = dfun$x[which.max(dfun$y)]+2
  }
  sample_sequence$baseline = baseline
  
  CO2_timeseries$is_peak = CO2_timeseries$CO2 > baseline
  CO2_timeseries$CO2 = CO2_timeseries$CO2 - baseline

  # new array: subract values below the baseline
  CO2_timeseries_peaks = CO2_timeseries[CO2_timeseries$is_peak,]
  
  # plot time-course
  par(oma = c(1,1,3,0))
  layout(matrix(1:4,2,2))
  plot(CO2_timeseries$time_elapsed,CO2_timeseries$CO2,
       pch=NA,main="raw time-series",
       ylab="IRGA CO2 value (ppm)",
       xlab="time elapsed (seconds)")
  lines(CO2_timeseries$time_elapsed,CO2_timeseries$CO2)
  abline(h=5,lty=3)
  mtext(paste(IRGA_file,"  diagnostics"),3,outer=T)

  
  
  #=============================================================
  # F1: assign peaks
  #=============================================================
  
  
  # pre-allocate a vector of zeros for assigning peaks
  CO2_timeseries_peaks$pn = vector("numeric",nrow(CO2_timeseries_peaks))
  
  # initiate at peak 1
  pn = 1
  CO2_timeseries_peaks$pn[1] = pn
    
  # loop through peaks to assign numbers
  # the loop iterates through each ine of data (second) looking for gaps
  # after a gap the peak number increases by 1
  for(i in 2:nrow(CO2_timeseries_peaks)){
    
    # if the times are not sequential, add one to the peak number
    if(CO2_timeseries_peaks$time_elapsed[i] != (CO2_timeseries_peaks$time_elapsed[i-1] + logging_rate)){pn = pn + 1}
    
    # assign the peak number
    CO2_timeseries_peaks$pn[i] = pn
  }
  
  #=============================================================
  # F2: integrate peaks
  #=============================================================
  
  #list the peaks
  peak_numbers = unique(CO2_timeseries_peaks$pn)
  np = length(peak_numbers)
  
  # preallocate an array with an entry for each peak
  CO2_peaks = data.frame("peak_number" = numeric(np),
                               "time"= numeric(np),
                               "area" = numeric(np),
                               "height" = numeric(np))
  
  for(peak_number in peak_numbers){
    
    # subset time series to isolate the peak
    peak = CO2_timeseries_peaks[CO2_timeseries_peaks$pn==peak_number,]
    peak$CO2 = peak$CO2 #- baseline 
    
    #compute area by trapezoids (linear interpolation)
    rectangles = peak$CO2 * 1 # each rectangle is 1 second wide
    triangles = abs(diff(c(0,peak$CO2,0)) * 1/2)
    area = sum(rectangles) + sum(triangles)
    
    # get peak height
    height = max(peak$CO2)
    
    # get time of peak
    time = peak$time_elapsed[1]

    CO2_peaks[peak_number,1] = peak_number
    CO2_peaks[peak_number,2] = time
    CO2_peaks[peak_number,3] = area
    CO2_peaks[peak_number,4] = height
    #CO2_peaks[peak_number,5] = timestamp
    
  }
   
  # convert times
  CO2_peaks$time = timestamp + CO2_peaks$time 
  
  # plotting diagnostic
  plot(CO2_peaks$area,CO2_peaks$height,pch=19,main="height-area match?",
       xlab="peak area (ppm*seconds)",ylab="peak height (ppm)")
  
  
  #=============================================================
  # F3: merge with sequence data
  #=============================================================
  
  CO2_peaks = merge(sample_sequence,CO2_peaks,by="peak_number")
  
  if(sum(!grepl("std",CO2_peaks$sample_ID))>0){
    sample_maxval = max(CO2_peaks$height_estimate[!grepl("std",CO2_peaks$sample_ID)],na.rm=T)
  }else{sample_maxval=5000}
  # plotting diagnostic
  plot(CO2_peaks$height_estimate,CO2_peaks$height,pch=19,main="height-height match?",
       xlab="estimated peak height (ppm)",ylab="peak height (ppm)",
       xlim=c(0,sample_maxval),ylim=c(0,sample_maxval))
  abline(0,1,lty=2)
  
  
  #=============================================================
  # F4: calculate standard curve
  #=============================================================
  standard_peaks = CO2_peaks[grepl("std",CO2_peaks$sample_ID),]
  standard_peaks$std_con = as.numeric(sub("std","",standard_peaks$sample_ID))

  # estimate standard curve. 
  # weight based on inverse concentration to account for certification error
  # (standards are certified within a percentage of their concentration)
  # (also the IRGA error is proportionate to concentration)
  std_curve = lm(std_con~area,data=standard_peaks,
                 weights=1/(std_con))
  curve_stats = summary(std_curve)
  
  # R squared
  R2 = round(curve_stats$r.squared,4)
  if(R2<0.95){cat("\n\nBAD STANDARD CURVE!!!\n\n")}
  
  # The slope. Must invert for calculating concentration from area. 
  slope = curve_stats$coef[2]
  
  # The intercept. Must invert for calculating concentration from area. 
  intercept = curve_stats$coef[1]
  
  standard_peaks$pct_err = abs(100*resid(std_curve)/standard_peaks$std_con)
  err_summary = aggregate(standard_peaks$pct_err,list(standard_peaks$std_con),mean)
  err_summary$x = round(err_summary$x,1)
  colnames(err_summary) = c("ppm",expression("  % error"))
  
  cat("\n\nError of standards\n")
  print(err_summary)
  
  cat("\n\nStandard curve summary:\n")
  print(summary(std_curve))
  
  # plotting diagnostic
  plot(standard_peaks$area,standard_peaks$std_con,
       pch=19,main="standard curve",
       ylab = "CO2 concentration (ppm)",
       xlab="peak area")
  abline(intercept,slope)
  xprint = par("usr")[1] + diff(par("usr")[1:2])*0.1
  yprint = par("usr")[4] - diff(par("usr")[3:4])*0.2
  text(xprint,yprint,bquote(R^2 ~ "=" ~ .(R2)),adj=0)
  
  
  # use the standard curve to calculate ppm CO2 in each jar
  CO2_peaks$CO2_ppm = CO2_peaks$area*slope + intercept # the mole fraction, ppm
  
  cat("\n\n============================================================\n\n")
  
  if(min(CO2_peaks$CO2_ppm,na.rm=T) < min(standard_peaks$std_con)*0.95){
    cat("Warning: data below lowest standard.")
  }
  if(max(CO2_peaks$CO2_ppm,na.rm=T) < max(standard_peaks$std_con)){
    cat("\n\nWarning: data above highest standard.")
  }
  
  
  #=============================================================
  # F7: calculate mg released and append CO2 concentrations
  #=============================================================
  CO2_peaks$CO2_C_mg = (1e3)*(AW_C*CO2_peaks$CO2_ppm*(1e-6)*AtmP*CO2_peaks$jar_volume) / (R*(20 - AbsZero))

  cat("\n\n============================================================\n\n")

  
  cat("Processing complete.")
  

  return(list(data = CO2_peaks,curve = std_curve))
}
