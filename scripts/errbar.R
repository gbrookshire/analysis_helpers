# add errorbars to a barplot
# might require 'grid' library

# x <- the output of a barplot
# y <- a matrix of the data
# ebl <- the confidence interval
err.bars <- function(x, y, ebl, ebu=ebl, length = 0.08, ...)
    arrows(x, y+ebu, x, y-ebl, angle=90, code=3, length=length, ...)

superpose.eb <- function(...) {
  err.bars(...)
  warning('Function name preserved for back-compatibility. Switch to err.bars() in future scripts.')
}