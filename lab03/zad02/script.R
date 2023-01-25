library(neuralnet)
set.seed(123)
n <- 20
lodowy <- data.frame(
  name = paste0("Lodowka",1:n),
  pojemnosc_zamrazarki = sample(100:1000, n, replace = T),
  pojemnosc = sample(400:800, n, replace = T),
  cena = sample(600:1200, n, replace = T)
)
nn <- neuralnet(cena ~ pojemnosc_zamrazarki + pojemnosc, lodowy, hidden = c(20, 5), threshold = 100)
nn

prediction <- compute(nn, data.frame(pojemnosc_zamrazarki = 300, pojemnosc=350))
price_predicted <- prediction$net.result