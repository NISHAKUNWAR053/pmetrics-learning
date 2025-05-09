# simple drug Concentration simulation

#Time from 0 to 24 hours 1 hour intervals

time <-seq(0,24, by = 1) # time in hours
dose <- 100 #dose in mg
ke <- 0.2  #elimination rate constant 


concentration <- dose * exp(-ke * time)

plot(time, concentration, type = "b", col = "blue",
     main = "Simulated Drug Concentration Over Time",
     xlab = "Time (hours)", ylab = "Concentration (mg/L)")
