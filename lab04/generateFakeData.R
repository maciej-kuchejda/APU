set.seed(123)
n <- 30

customer_ratings <- data.frame(
  rating = sample(1:5, n, replace = TRUE),
  price = sample(c(100,200,300,400,500,600,700,800,900,1000), n, replace = TRUE),
  capacity = sample(c(100,200,300,400,500,600,700,800,900,1000), n, replace = TRUE),
  power = sample(c(100,200,300,400,500,600,700,800,900,1000), n, replace = TRUE),
  brand = sample(c("Brand A", "Brand B", "Brand C", "Brand D","Brand E"), n, replace = TRUE)
)

write.csv(customer_ratings, "customer_ratings.csv", row.names = FALSE)
