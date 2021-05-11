set.seed(27)

repCount <- 10000

z <- rnorm(repCount)
x <- ifelse(z < qnorm(.25), 0, ifelse(z < qnorm(.75), 1, 2))

barplot(table(x)/repCount)