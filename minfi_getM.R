require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

RSet <- get(load(input))

m <- getM(RSet)

write.table(m, output)
