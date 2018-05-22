# install packages
install.packages('vcfR')

# load packages
library(vcfR)\

# glimpse at vignette
vignette("intro_to_vcfR", package="vcfR")

# read VCF files and store as new object in R
vcf <- read.vcfR( vcf_file, verbose = FALSE )
