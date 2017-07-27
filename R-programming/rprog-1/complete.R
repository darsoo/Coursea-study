complete <- function(directory, id = 332) {
    output_df <- data.frame(id = numeric(), nrow = numeric())
    for (ids in id) {
        ids <- sprintf("%03d", ids)
        csv2 <-read.csv(paste(directory, '/', ids, '.csv', sep = ''))
        csv3 <- sum(!is.na(csv2$sulfate)&!is.na(csv2$nitrate))
        output_df[ids,1] <- ids
        output_df[ids,2] <- csv3
    }
    output_df
}
