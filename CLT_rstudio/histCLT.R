hist(runif(1000)*10, main="")
means <- numeric(1000)
for (i in 1:1000) {
  means[i] <- mean(runif(5)*10)
}
hist(means, freq = FALSE)
mean(means)
sd(means)
xv <- seq(0, 10, 0.1)
yv <- dnorm(xv, mean = mean(means), sd=sd(means))
lines(xv, yv)