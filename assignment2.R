# Assignment 2, Insu Kim


# Question 1 -(a)
score = c(90, 95, 89, 71, 73, 96, 87, 95, 107, 89, 96, 80, 97, 95, 102, 97, 93, 101, 82, 83, 74, 91, 83, 98, 95, 111, 99, 120, 93, 84)
# taking out samples from original score sets
s_score <- sample(score, 10, replace = FALSE, prob = NULL)
# sample mean of 10 sample scores
mean(s_score)
# answer : 87.7


# Question 1 -(b)

# answer : Not exactly same with the population parameter because of sampling.


# Question 1 -(c)
se <- sd(score)/sqrt(length(score))
se
# answer : 1.976529

# Question 1 -(d)
# answer : The standard error measures the variability of a population parameter: the spread of the sampling distribution of the sample mean.

# Question 1 -(e)
library(MASS)
e=qt(.95,df=length(score)-1)*se
e
xbar=mean(score)
xbar + c(-e, e)
#answer : 88.84163 95.55837

# Question 1 -(f)
# answer : The confidence interval is the range of value that you can be 95% certain contains the true mean of the population

# Question 2

m <- c(220.1, 218.6,	229.6, 228.8, 222.0, 224.1, 226.5)
f <-c(223.4, 221.5, 230.2, 224.3, 223.8, 230.8)
hist(m)
hist(f)

mean.m <- mean(m)
mean.f <- mean(f)

se.m <- sd(m)/sqrt(length(m))
se.f <- sd(f)/sqrt(length(f))

e.m <-qt(.95, df=length(m)-1)*se.m
e.f <-qt(.95, df=length(f)-1)*se.f

mbar <- mean(m)
CI.m <- mbar + c(-e.m, e.m)
CI.m
fbar <- mean(f)
CI.f <- fbar + c(-e.f, e.f)
CI.f

t.test(m, f, alternative="two.sided")

# answer : We cannot reject the null hypothesis because the p-value is 0.5405


# Question 3 -(a)
# answer : False, p-value is nothing about size of the effect

# Question 3 -(b)
# answer : True

# Question 3 -(c)
# answer : False, typeI error is determined by alpha.

# Question 3 -(d)
# answer : False, typeII error is determined by the effect size.

# Question 3 -(e)
# answer : True


# Question 4
a <- c(248, 236, 269, 254, 249, 251, 260, 245, 239, 255)
b <- c(380, 391, 377, 392, 398, 374)
a2 <- 1.5*a

t.test(a2, b)
# answer : We cannot reject the null hypothesis because the p-value is 0.1471


# Question 5
# answer : Standard deviation says how much the values vary from one another. Standard error of a mean says how precisely you know the true mean of the population.
