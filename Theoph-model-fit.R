# Load Theoph dataset
data(Theoph, package = "datasets")  

# View structure
str(Theoph)

# Preview data
head(Theoph)
# filter data for subject 1
sub1 <- subset(Theoph, Subject == 1)
# Plot observed data
plot(sub1$Time, sub1$conc, type = "b", col = "darkred",
     main = "Observed Theophylline Levels (Subject 1)",
     xlab = "Time (hours)", ylab = "Concentration (mg/L)")

# Fit a nonlinear model: conc = C0 * exp(-k * time)
model <- nls(conc ~ C0 * exp(-k * Time), data = sub1,
             start = list(C0 = 100, k = 0.1))
# Check model summary
summary(model)

# Get predicted values
sub1$predicted <- predict(model)

# Plot observed and fitted
plot(sub1$Time, sub1$conc, col = "red", pch = 16,
     main = "Observed vs Fitted - Theophylline (Subject 1)",
     xlab = "Time (hours)", ylab = "Concentration (mg/L)")
lines(sub1$Time, sub1$predicted, col = "blue", lwd = 2)

legend("topright", legend = c("Observed", "Fitted Model"),
       col = c("red", "blue"), pch = c(16, NA), lty = c(NA, 1))
