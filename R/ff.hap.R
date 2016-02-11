ff.hap <- function(k){
    if (k==1) {
        x <- 6 + c(1, 2)
    } else {
        x <- 6 + c((2*k - 1), (2*k))
    }
    return(x)
}
