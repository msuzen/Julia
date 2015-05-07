#!/bin/bash
# msuzen
# April.2015 GPLv3  
# Parameters
Rscr=Rscript
#
$Rscr -e "library(roxygen2); roxygen2::roxygenise()"
