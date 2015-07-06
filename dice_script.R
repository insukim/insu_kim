d = 10000

dice1 <- sample(6, d, replace = TRUE)
dice2 <- sample(6, d, replace = TRUE)

dice_roll <- dice1 + dice2

hist(dice_roll)

hist(dice_roll, freq=FALSE)

plot.ecdf(dice_roll)

n <- rnorm(1000)
