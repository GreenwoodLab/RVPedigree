lettersTo12 <- function(x){
    x1 <- c(x[, 1], x[, 2])
    Letters.SNP <- unique(x1)

    if (length(Letters.SNP) == 1) {
        x[, 1] <- x[, 2] <- 2
    }

    if (length(Letters.SNP) > 1) {
        if ( ( length(which(x1 == Letters.SNP[1])) / length(x1) ) > 0.5 ) {
            x[which(x[, 1] == Letters.SNP[1]), 1] <- 2
            x[which(x[, 2] == Letters.SNP[1]), 2] <- 2
            x[which(x[, 1] == Letters.SNP[2]), 1] <- 1
            x[which(x[, 2] == Letters.SNP[2]), 2] <- 1
        } else {
            x[which(x[, 1] == Letters.SNP[2]), 1] <- 2
            x[which(x[, 2] == Letters.SNP[2]), 2] <- 2
            x[which(x[, 1] == Letters.SNP[1]), 1] <- 1
            x[which(x[, 2] == Letters.SNP[1]), 2] <- 1
        }
    }

    return(x)
}
