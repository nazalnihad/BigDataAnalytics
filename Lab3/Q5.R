# Load necessary libraries
library(dplyr)
library(forecast)

data("AirPassengers")

head(AirPassengers)

# time series object  monthly frequency from  data
passenger_ts <- AirPassengers

# time series of monthly airline passengers
plot(passenger_ts, type = "l", col = "blue",
     main = "Monthly Airline Passengers ",
     xlab = "Year", ylab = "Number of Passengers (in thousands)")

# ARIMA model to the passenger time series
arima_model <- auto.arima(passenger_ts)
summary(arima_model)

# forecast the next 12 months
forecast_passengers <- forecast(arima_model, h = 12)
print(forecast_passengers)

# plot forecast
plot(forecast_passengers, main = "Forecast of Monthly Airline Passengers",
     xlab = "Year", ylab = "Number of Passengers (in thousands)")
