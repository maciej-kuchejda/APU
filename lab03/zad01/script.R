install.packages("neuralnet")
library(neuralnet)
x <- seq(0, 1, length.out = 100)
y <- sin(2*pi*x)
data <- data.frame(x, y)
nn <- neuralnet(y ~ x, data, hidden = c(10, 5), threshold = 0.01)
nn