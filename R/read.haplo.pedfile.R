#' Read haplotype data, selected by region of interest, from PED files
#' (regular PLINK untransposed text files)
#'
#' @param filename character, path to PED file containing haplotype
#' data. Attention! filename should contain path to \code{<file>.ped}
#' with full file name. For example \code{../mydata/inputplink.ped}
#' @param recode character, designates if data are in 1/2 format or in
#'     letters (A, C, G, T) format. The defaut is 1/2 where 1
#'     designating the minor allele
#' @inheritParams read.haplo
#' @return matrix object containing the haplotypes selected by the
#'     region of interest, or \code{NULL} if there are no variants in
#'     the region
#' @seealso \code{\link{read.haplo}},
#' \code{\link{read.haplo.bedfile}},
#' \code{\link{read.haplo.shapeit_haps}},
#' \code{\link{readMapFile}}
#' @importFrom data.table fread
#' @keywords internal
read.haplo.pedfile <- function(filename = "NULL",
                               map,
                               chr = "NULL",
                               startpos = "NULL",
                               endpos = "NULL",
                               recode = "recodeLetters"){

    snps2out <- as.numeric(rownames(map)[which(map[, 1] == chr &
                                               map[, 3] > startpos &
                                               map[, 3] < endpos)])

    if ( length(snps2out) < 1 ) {
        warning("No genotypes available in the region from ",
                startpos, " to ", endpos, " on chromosome ",
                chr, " (filename ", filename, ")")
        return(NULL)
    }

    cols2out = as.vector(sapply(snps2out, ff.hap))

    switch(recode,
           recode12={
               haplotypes = as.data.frame(fread(filename,
                                                select = cols2out,
                                                colClasses = 'character'))
           },
           recodeLetters={
               haplotypes = as.data.frame(fread(filename,
                                                select = cols2out,
                                                colClasses = 'character'))
               list.haplo = lapply(seq_len(ncol(haplotypes)/2), function(i){
                   haplotypes[, c(((2*i) - 1):(2*i))]
               }
               )
               haplotypes = lapply(list.haplo, lettersTo12)
               haplotypes = matrix(as.numeric(unlist(haplotypes)),
                                   nrow = dim(haplotypes[[1]])[1],
                                   byrow = FALSE)
           }
           )

    return(haplotypes)
}
