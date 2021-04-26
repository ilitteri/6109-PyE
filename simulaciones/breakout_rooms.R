repCant <- 100000
coWorkersCant <- 39
groupCant <- 4

mean(replicate(repCant, {
    team <- sample(1:coWorkersCant, groupCant-1, replace = FALSE, prob = NULL)
    1 %in% team 
}))