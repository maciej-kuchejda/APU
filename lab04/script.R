install.packages("C50")
library(C50)

data <- read.csv("customer_ratings.csv")
data$rating <- as.factor(data$rating)

model <- C5.0(rating ~ price + capacity + power + brand, data)

cv_model <- C5.0(rating ~ price + capacity + power + brand, data, trials = 10)

new_data <- data.frame(price = 500, capacity = 300, power = 100, brand = "Brand A")
predict(model, new_data)
new_data2 <- data.frame(price = 10000, capacity = 10000, power = 10000, brand = "Brand C")
predict(model, new_data2)