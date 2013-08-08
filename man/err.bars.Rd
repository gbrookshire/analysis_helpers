\name{err.bars}
\alias{err.bars}
\alias{superpose.eb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Add error bars to a plot
}
\description{
Add error bars to a plot.
}
\usage{
err.bars(x, y, ebl, ebu = ebl, length = 0.08, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
x position of the bars.
}
  \item{y}{
y position of the central point of the error bars.
}
  \item{ebl}{
distance  the error bars should extend below the central point.
}
  \item{ebu}{
distance above the central point.
}
  \item{length}{
length of the caps on the error bars.
}
  \item{\dots}{
additional args passed to arrows().
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
heights <- rnorm(4)
eb <- rnorm(4, mean=0.2, sd=0.1)

x <- barplot(heights, ylim=c(-2, 2))
err.bars(x, heights, eb)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
