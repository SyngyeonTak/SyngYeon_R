library(datasets) # Load/unload base packages manually

head(iris)

?plot
# Introduction. plot() function is the generic function for plotting in R.
# It can be used to create basic graphs. A simplified format of 
# the function is plot(x, y, type="p") x and y: the coordinates of points to plot.

plot(iris$Species) # Categorical variable
plot(iris$Petal.Length) # Quantitative variable
plot(iris$Species, iris$Petal.Width) # Cat x quant
# to interpret Category X quantitative graph...
# Outliers: An outlier is an observation that lies an abnormal distance
#   from other values in a random sample from a population
#   Examination of the data for unusual observations that are far removed
#   from the mass of data. These points are often referred to as outliers.
#   in statistics Outliers are shown as empty circles.
# The graph shows minimum, lower Quartile, median, upper quartile and maximum values
plot(iris$Petal.Length, iris$Petal.Width) # Quantitative pair
plot(iris) # Entire data frame

# plot with options
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",
     pch = 19,
     main = "IrisL Petal Length vs. Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")

# Formula plot with options
# cos:
# exp:
# dnorm:

plot(cos, 0, 2*pi) # cosine graph in which x ranges from 0 to 2*pi
plot(exp, 1, 5) # Exponential graph in which x range 1 to 5
plot(dnorm, -3, +3)

dnorm(1, 5, 9, FALSE)
# dnorm: function provides the density of the normal distribution at a specific quantile
#   FIRST ARGUMENT: X value from the graph that you want to see
#   SECOND ARGUMENT:  Mean value from the graph
#   THRID ARGUMENT: How wide you want your bell curve to be
#   FOURTH ARGUMENT: Whether you want Log algorithm
#   You could also put vectors as arguments

# Formula plot with options
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,
     main = "Standard Normal Distribution",
     xlab = "z-scores",
     ylab = "Density")

#Clear packages
detach("package:datasets", unload = TRUE)
dev.off()
cat("\014")





