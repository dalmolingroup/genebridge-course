# Lista de pacotes do CRAN
packs_cran <- c("dplyr", "ggplot2", "rmarkdown", "knitr", "igraph", "BiocManager",
                "remotes", "purrr", "magrittr", "tidyverse", "data.table", "stringi",
                "sourcetools", "here", "ggraph", "vroom", "paletteer", "UpSetR", "tinter",
                "readr", "hrbrthemes")


# Lista de pacotes do Bioconductor
packs_bioc <- c("BiocStyle", "AnnotationHub", "biomaRt")

# Instalar pacotes CRAN
lapply(packs_cran, function(i) {
  if(!require(i, character.only = TRUE)) install.packages(i)
})

# Instalar pacotes Bioconductor
if(!require("BiocManager")) install.packages("BiocManager")
lapply(packs_bioc, function(i) {
  if(!require(i, character.only = TRUE)) BiocManager::install(i)
})


# Instalando o GeneBridge
remotes::install_github("sysbiolab/GeneBridge", build_vignettes=TRUE)

#instalaando o easylayout
remotes::install_github("dalmolingroup/easylayout")