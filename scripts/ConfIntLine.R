# Plot a best-fit regression line with confidence intervals around it.
# It's not all that customizable at this point, but that could be changed.

ConfIntLine <- function(x, y, x.range=NULL, color=NULL, level=0.95) {
  if (is.null(x.range)) {
    x.range <- seq(from=min(x), to=max(x), by=(max(x) - min(x)) / 200)
  }
  if (is.null(color)) {
    color='black'
  }
  
  fm <- lm(y ~ x)
  abline(fm, col=color)
  
  # confidence intervals
  preds <- predict(fm, newdata=data.frame(x=x.range), 
                   interval='confidence', level=level)
  poly.col <- col2rgb(color)
  polygon(c(rev(x.range), x.range), c(rev(preds[,3]), preds[,2]),
          col=rgb(poly.col[1], poly.col[2], poly.col[3],
                  50, maxColorValue=255),
          border=NA)
}
