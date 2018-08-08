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

# VCFtools .sh script
Custom [script](https://github.com/mattsada/analysis/blob/master/snv_export/vcfTools.sh) using [VCFtools](https://vcftools.github.io/man_latest.html) to filter out SV with quality < 200 (HGSV paper).

# NCBI Genome Remapping Service
[NCBI Remap](https://www.ncbi.nlm.nih.gov/genome/tools/remap) is a tool that allows users to project annotation data from one coordinate system to another. This remapping (sometimes called 'liftover') uses genomic alignments to project features from one sequence to the other. For each feature on the source sequence, we perform a base-by-base analysis of each feature on the source sequence in order to project the feature through the alignment to the new sequence.
