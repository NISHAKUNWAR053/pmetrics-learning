# Two dose simulation 
# TIme range (0 to 24 hours)
time <- seq(0, 24, by = 1)

# Dose parameters
dose <- 100   #mg
ke <-0.2.   # elimination rate constant 

# First dose at 0 hour 

conc1 <- dose * exp(-ke * time)

# Second dose at 12h (only kicks in at t >= 12)
conc2 <- ifelse(time >= 12, dose * exp(-ke * (time - 12)), 0)

total_conc <- conc1 + conc2

# Plot
plot(time, total_conc, type = "b", col = "darkgreen",
     main = "Two-Dose Drug Simulation (0h & 12h)",
     xlab = "Time (hours)", ylab = "Concentration (mg/L)")
