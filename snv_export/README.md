---
title: "README.md"
author: "mattsada"
date: "August 8, 2018"
output: html_document
---
# Single Nucleotide Variants extraction
Custom [script](https://github.com/mattsada/analysis/blob/master/snv_export/snv_export.Rmd) that exrtacts information from the FIX region in any Variant Call Format (VCF) file, filters columns (CHROM and POS) and output complete list of Single Nucleotide Variants (SNV) as .txt file. Filtered VCF file could be used as input for [StrandPhaseR](https://github.com/mattsada/project/tree/master/groningen_StrandSeq) analysis, wich requires for each sample a complete list of SNV's cordinates throughout the genomic landscape. 

#### User defined variables are:
**input** - Variable that holds path to input VCF file. i.e output from GATK haplotype caller, freebayes, pindel etc. Structural Variants (SV) calling algorithms. 

**output** - Path to output .txt file (filtered VCF file, including CHROM and POS).

**FIXregion** - Path to output .txt file (FIX region of initial VCF input).

# VCFtools .sh script.
Custom [script](https://github.com/mattsada/analysis/blob/master/snv_export/vcfTools.sh) using [VCFtools](https://vcftools.github.io/man_latest.html) to filter out SV with quality < 200 (HGSV paper).

# Processing SNV list.
[This](https://github.com/mattsada/analysis/blob/master/snv_export/snv_lift.Rmd) script first takes the SNV list generated in **Single Nucleotide Variants extraction** as input and preforms necessary pre-processing steps before genomic locations can be lifted, using the UCSC liftOver tool. After coordinates has been lifted, the original data structure of the SNV list is restored. Output is ready for further anlysis using StrandPhaseR package.

#### User defined variables are:
**input** - Path to file generated using Single Nucleotide Variants extraction script. 

**bedFile** - Output path to generated bed file (input in UCSC liftOver).

**liftedBed** - Path to UCSC-lifted bed file.

**output** - Variable that holds path to final output. List containing SNV locations.

# Lift Genome Annotations.
[Lift Genome Annotations](http://genome.ucsc.edu/cgi-bin/hgLiftOver) converts genome coordinates and genome annotation files between assemblies.  The input data can be pasted into the text box, or uploaded from a file.  If a pair of assemblies cannot be selected from the pull-down menus, a direct lift between them is unavailable.  However, a sequential lift may be possible.  Example: lift from Mouse, May 2004, to Mouse, Feb. 2006, and then from Mouse, Feb. 2006 to Mouse, July 2007 to achieve a lift from mm5 to mm9.  

