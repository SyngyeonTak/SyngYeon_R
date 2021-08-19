# File: script_210817
# Contents: what is library()?
#           What is head()?
#           What is summary()?
#           What is plot()?


# What is library()?
# Packages are collections of R functions, data, and compiled code in a
# well-defined format. The directory where packages are stored is called the
# library. R comes with a standard set of packages. Others are available for
# download and installation. Once installed, they have to be loaded into the
# session to be used _Google.

library(datasets)

# SUMMARIZE data
# What is head()?
#       head() function in R Language is used to get the first parts of a vector,
#       matrix, table, data frame or function.
head(iris)

# What is summary()?
#       summary() function is a generic function used to produce result summaries
#       of the results of various model fitting functions. The function invokes 
#       particular methods which depend on the class of the first argument.
#       Min, 1st quarter, Median, Mean, 3rd quarter, Max
summary(iris)

# What is plot()?
# The plot() function in R isn't a single defined function but a placeholder 
# for a family of related functions. The exact function being called will
# depend upon the parameters used. At its simplest, plot() function simply plots 
# two vectors against each other. This gives a simple plot for y = x^2.

# cf: What is ^ operator in R?
# Advertisements. An operator is a symbol that tells the compiler to perform 
# specific mathematical or logical manipulations. R language is rich in 
# built-in operators and provides following types of operators.

plot(iris)    # Scatterplot matrix for iris data

# CLEAN UP #################################################

# Clear packages
#detach("package:datasets", unload = TRUE)  # For base

# Clear plots
#dev.off()  # But only if there IS a plot

# Clear console
# ctrl + l
