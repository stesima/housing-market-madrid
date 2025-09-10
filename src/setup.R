##########################################################
## The following uses renv to help with reproducibility ##
##########################################################

# Uncomment the codes in this section if you would like to use it with your
# Check if renv is installed and load it
# if (!require("renv", character.only = TRUE)) {
#   install.packages("renv")
#   library("renv", character.only = TRUE)
# }

# Initialize renv and restore packages from the lockfile
# renv::init()
# renv::restore()

#############################################
## The following loads the needed packages ##
#############################################

# load your virtual environment for the project

# Load necessary libraries
packages <- c(
  "here",
  "tidyverse",
  "lubridate",
  "patchwork",
  "maps",
  "scales",
  "knitr",
  "kableExtra",
  "rmarkdown",
  "readxl",
  "dplyr",
  "glmnet",
  "reshape2",
  "sf",
  "ggplot2",
  "ggrepel",
  "ggridges",
  "forecast",
  "plotly",
  "randomForest",
  "sf",
  "forecast",
  "mclust"
)

# Install missing packages and load all the required libraries
load_packages <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    try(install.packages(pkg))
  }
  require(pkg, character.only = TRUE)
}

# Load all packages
invisible(sapply(packages, load_packages))

########################################
## The following sets the python path ##
########################################
# reticulate::use_condaenv("NAME_OF_YOUR_ENVIRONMENT")

######################################################
## The following sets a few option for nice reports ##
######################################################
# You can use this if you wanted to change the rendered output

# general options
# options(
#   digits = 3,
#   str = strOptions(strict.width = "cut"),
#   width = 69,
#   tibble.width = 69,
#   cli.unicode = FALSE
# )

# ggplot options for the report
ggplot2::theme_set(theme_light())

# knitr options
# opts_chunk$set(
#   comment = "#>",
#   collapse = TRUE,
#   # cache = TRUE,
#   fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
#   dpi = 300,
#   out.width = "70%",
#   fig.align = "center",
#   fig.width = 6,
#   fig.asp = 0.618,
#   fig.show = "hold",
#   message = FALSE,
#   echo = FALSE
# )
