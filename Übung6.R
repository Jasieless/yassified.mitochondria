## Übung 6

coin <- c("head", "tail")
sample(coin, size = 1)
sample(coin, size = 5, replace = T) ## -->random samples

sample(coin, size = 5, replace = T, prob = c(0.2, 0.8))

n <- 100
number.flips <- n

p <- flips/n

flips <- sample(coin, size = number.flips, replace = T)
flips <- table(flips)
flips

## laplace: p = (H+1)/(H+T+2)
pp <- (flips["head"]+1) / (flips["head"]+flips["tail"]+1) 
pp
