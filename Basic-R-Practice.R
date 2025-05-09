# Basic R math practice
dose <- c(100, 200, 150)
half <- dose / 2
print(half)

# B Making a data frame
# creating a small Pk dataset 
time <- c(0, 1, 2, 4, 6)
conc <- c(100, 80, 60, 35, 20)
pk_data <- data.frame(time, conc)
print(pk_data)


# PLOT
# Plotting concentration over time 
plot(pk_data$time, pk_data$conc, type = "b", col = "purple",
     main = "Basic PK Data Plot",
     xlab = "Time (hours)", ylab = "Concentration (mg/L)")
