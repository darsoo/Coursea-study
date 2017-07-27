pollutantmean <- function(directory, pollutant, id = 332) {
    csv1 <- data.frame()
    for (ids in id) {
        ids <- sprintf("%03d", ids)
        csv2 <- read.csv(paste(directory, '/', ids, '.csv', sep = ''))
        csv1 <- rbind(csv2, csv1)
    }
    mean(csv1[[pollutant]], na.rm = T)
}
