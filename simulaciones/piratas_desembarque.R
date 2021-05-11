conReposicion <- FALSE
cantRepeticiones <- 10000
cantPiratas <- 13
cantPuertos <- 3

piratas <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M")

a <- replicate(cantRepeticiones, {
    portobelo <- sample(piratas, 5, conReposicion)
    maracaibo <- sample(subset(piratas, !(piratas %in% portobelo)), 4, conReposicion)
    gibraltar <- sample(subset(piratas, !(piratas %in% maracaibo)), 4, conReposicion)
})

table(a)