coloresEnRuleta <- c(rep("v", 2), rep("n", 18), rep("r", 18))

repeticiones <- 10000

negroProba <- replicate(repeticiones, {
    ruleta <- sample(coloresEnRuleta, 1)
    ruleta == "n"
})

mean(negroProba)