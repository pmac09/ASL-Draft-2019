##############
## PACKAGES ## ----
##############

library(shiny)
library(miniUI)
library(shinyWidgets)
library(tidyverse)
library(rdrop2)
library(Jmisc)

# for local running
#setwd('./Draft-Pong-Mobile/')

###############
## FUNCTIONS ## ----
###############

# Source all functions from folder
sourceAll('./functions')


######################
## GLOBAL VARIABLES ## ----
######################

# Read in token to access Dropbox
gvToken <- readRDS("droptoken.rds")

# Print debug output to console
gvShowDebug <- TRUE

# .csv Filename for Dropbox
gvFilename <- "ASL_DRAFT_2019.csv"
