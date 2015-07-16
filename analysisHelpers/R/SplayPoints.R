# Draw points for one-dimensional with duplicated values adjacent to each other
#
# x <- c(1, 3, 4, 4, 5, 6, 6, 6, 7, 9, 9, 10)
# bp <- barplot(mean(x), ylim=c(0, 11))
# SplayPoints(x, center=bp, scale=0.05)

SplayPoints <- function(x, center=0, scale=0.1, vertical=TRUE, ...) {
  splay_helper <- function(z) {
    pos <- 1:length(z)
    pos <- pos - mean(pos)
  }
  splayed <- (ave(x, x, FUN=splay_helper) * scale) + center
  if (vertical)
    points(splayed, x, ...)
  else
    points(x, splayed, ...)
}