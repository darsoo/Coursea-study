corr <- function(directory, threshold  = 0) {
    comp <- complete(directory, 1:332)    
    com <- comp[comp$nrow > threshold,]
    output <- vector()
    for (ids in com$id){
        csv2 <-read.csv(paste(directory, '/', ids, '.csv', sep = ''))
        csv22 <- csv2[(!is.na(csv2$sulfate)&!is.na(csv2$nitrate)),]
        csv3 <- cor(csv22$sulfate,csv22$nitrate)
        output[ids] <- csv3
    }
    output
}

