return_period <- c(2, 5, 10, 25, 100, 250, 500, 1000)
discharge <- c(545, 927, 1179, 1498, 1970.2, 2279.66, 2513.32, 2746.82)
data <- data.frame(Return_Period = return_period, Discharge = discharge)
print(data)
plot(data$Return_Period, data$Discharge, type = "b", col = "blue", pch = 19,
     xlab = "Return Period (years)", ylab = "Discharge (m/s)",
     main = "Discharge vs Return Period")
grid()
model <- lm(Discharge ~ log(Return_Period), data = data)
lines(data$Return_Period, predict(model, data), col = "red", lwd = 2)
summary(model)
