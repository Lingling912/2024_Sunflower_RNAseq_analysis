library(tidyverse)
library(ggplot2)
library(here)
library(MetaCycle)
library(edgeR)
here()

#-------------------------
## ----anther --------
head(group.anther.condDD)
timepoints = rep(seq(12, 60, by=4),each = 2)
meta2d.anther.condDD = meta2d(infile = here("5_MetaCycle/input_data/anther_condDD_cpm_filterByExpr_20241104.csv"), 
       outdir = here("5_MetaCycle/anther/condDD/"), 
       filestyle = "csv", 
       timepoints = timepoints, 
       minper = 24, maxper = 24,
       cycMethod = c("ARS", "JTK", "LS"),
       analysisStrategy = "auto", 
       outputFile = TRUE,
       outIntegration = "both", 
       adjustPhase = "predictedPer",
       combinePvalue = "fisher", 
       weightedPerPha = FALSE, 
       ARSmle = "auto",
       ARSdefaultPer = 24, 
       outRawData = TRUE, 
       releaseNote = TRUE,
       outSymbol = "meta2d_", 
       # parallelize = FALSE, 
       nCores = 1, inDF = NULL)


## ----ovary----
head(group.ovary.condDD)
timepoints = rep(seq(12, 60, by=4),each = 2)
meta2d.ovary.condDD = meta2d(infile = here("5_MetaCycle/input_data/ovary_condDD_cpm_filterByExpr_20241104.csv"), 
                              outdir = here("5_MetaCycle/ovary/condDD/"), 
                              filestyle = "csv", 
                              timepoints = timepoints, 
                              minper = 24, maxper = 24,
                              cycMethod = c("ARS", "JTK", "LS"),
                              analysisStrategy = "auto", 
                              outputFile = TRUE,
                              outIntegration = "both", 
                              adjustPhase = "predictedPer",
                              combinePvalue = "fisher", 
                              weightedPerPha = FALSE, 
                              ARSmle = "auto",
                              ARSdefaultPer = 24, 
                              outRawData = TRUE, 
                              releaseNote = TRUE,
                              outSymbol = "meta2d_", 
                              # parallelize = FALSE, 
                              nCores = 1, inDF = NULL)

##----style----
head(group.style.condDD)
timepoints = rep(seq(12, 60, by=4),each = 2)
meta2d.style.condDD = meta2d(infile = here("5_MetaCycle/input_data/style_condDD_cpm_filterByExpr_20241104.csv"), 
                             outdir = here("5_MetaCycle/style/condDD/"), 
                             filestyle = "csv", 
                             timepoints = timepoints, 
                             minper = 24, maxper = 24,
                             cycMethod = c("ARS", "JTK", "LS"),
                             analysisStrategy = "auto", 
                             outputFile = TRUE,
                             outIntegration = "both", 
                             adjustPhase = "predictedPer",
                             combinePvalue = "fisher", 
                             weightedPerPha = FALSE, 
                             ARSmle = "auto",
                             ARSdefaultPer = 24, 
                             outRawData = TRUE, 
                             releaseNote = TRUE,
                             outSymbol = "meta2d_", 
                             # parallelize = FALSE, 
                             nCores = 1, inDF = NULL)


