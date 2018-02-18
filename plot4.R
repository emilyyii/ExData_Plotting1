# plot 4
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
# 1
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
# 2
plot(data$DateTime, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
# 3
plot(data$DateTime, data$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red", type = "l")
lines(data$DateTime, data$Sub_metering_3, col = "blue", type = "l")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, bty = "n")
# 4
with(data, plot(DateTime, Global_reactive_power, xlab = "datetime", type = "l"))
dev.off()