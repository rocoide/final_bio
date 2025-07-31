install.packages("bio3d")
install.packages("BiocManager")
install.packages("ggplot2")
install.packages("seqinr")

BiocManager::install("pwalign")
BiocManager::install("Biostrings")

library(bio3d)
library(Biostrings)
library(pwalign)
library(ggplot2)
library(seqinr)

source("./R/menu.r")
source("./R/CIF.r")
source("./R/PDB.r")
source("./R/global.r")
source("./R/local.r")
source("./R/dotplot.r")
source("./R/descargar_y_leer_fasta.r")


menu_principal()
