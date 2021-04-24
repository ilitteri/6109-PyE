set.seed(27)

cantidadDePersonasEnLaSala <- 60
conReposicion <- TRUE
diasPorAnio <- 365

reps = 10000

coincidenciaDeCumples <- mean(
    replicate(reps, {
        cumples <- sample(1:diasPorAnio, cantidadDePersonasEnLaSala, conReposicion)
        length(unique(cumples)) < length(cumples)
    })
)

# prob <- c()
# for (i in 1:121)
# {
#     coincidencias <- replicate(n = 10000, {
#     cumples <- sample(x = 1:365, i, conReposicion)
#     anyDuplicated(cumples) > 0
#     })
#     prob[i] <- mean(coincidencias)
# }

# write.csv(prob, file = "cumpleaños.csv", append = FALSE, quote = TRUE, sep = " ")

mydata <- read.csv("cumpleaños.csv")
matplot(mydata[, 1], mydata[, -1], type="l", xlab="Personas en una sala", ylab="Probabilidad de que al menos dos cumplan el mismo año")