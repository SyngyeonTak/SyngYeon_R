# LOAD PACKAGES ############################################

# pacman: The pacman package is an R package management tool that combines 
#     the functionality of base library related functions into intuitively named functions.
install.packages("pacman")

# Then load the package by using either of the following:

# require(): The require() is designed to be used inside functions 
#    as it gives a warning message and returns a logical value say,
#    FALSE if the requested package is not found and TRUE if the package is loaded.
#    It is better to use the library() as it gives the error message if the package 
#    is not found during the package loading time.
require(pacman)  # Gives a confirmation message.

# library(): library() : possibly the most common function call in R. 
#    loc the location of the R library tree to search through or NULL .
#    NULL by default.
library(pacman)  # No message.

# Or, by using "pacman::p_load" you can use the p_load
# function from pacman without actually loading pacman.
# p_load: p_load: Load One or More Packages
#     It checks to see if a package is installed,
#     if not it attempts to install the package from CRAN and/or 
#     any other repository in the pacman repository list.
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr) 

library(datasets)  # Load/unload base packages manually

# CLEAN UP #################################################

# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
