# RVPedigree
[![Build Status](https://travis-ci.org/GreenwoodLab/RVPedigree.svg?branch=master)](https://travis-ci.org/GreenwoodLab/RVPedigree)


An R package which is a collection of the five region-based rare-variant genetic association tests. The following tests are currently implemented: ASKAT, ASKAT-Normalized, VC-C1, VC-C2 and VC-C3. 

## Installation

You first need to install the R package [`snpStats`](https://www.bioconductor.org/packages/release/bioc/html/snpStats.html) from Bioconductor:

``` r
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite("snpStats")
```

You can then install the `RVPedigree` package from GitHub using the [devtools](http://cran.r-project.org/web/packages/devtools/index.html) package:

``` r
library(devtools)
devtools::install_github('GreenwoodLab/RVPedigree', build_vignettes = TRUE)
```

## Usage

Please see the included vignette to see how the functions included in this package can be used. From within R use the following command:

``` r
vignette("vignette", package = "RVPedigree")
```


## References

A BibTeX entry for LaTeX users:

> @article{lakhal2015rare,  
  title={A rare variant association test in family-based designs and non-normal quantitative traits},  
  author={Lakhal-Chaieb, Lajmi and Oualkacha, Karim and Richards, Brent J and Greenwood, Celia MT},  
  journal={Statistics in medicine},  
  year={2015},  
  publisher={Wiley Online Library}  
}  




