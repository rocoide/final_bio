install.packages("bio3d")
install.packages("BiocManager")
install.packages("ggplot2")

BiocManager::install("pwalign")
BiocManager::install("Biostrings")

library(bio3d)
library(Biostrings)
library(pwalign)
library(ggplot2)

source("menu.r")
source("CIF.r")
source("PDB.r")
source("global.r")
source("local.r")
source("dotplot.r")


menu_principal()
