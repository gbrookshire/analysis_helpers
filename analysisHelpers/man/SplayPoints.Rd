\name{SplayPoints}
\alias{SplayPoints}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A function to make points for 1D data with duplicates.
}
\description{
Draw points for one-dimensional with duplicated values adjacent to each other
}
\usage{
SplayPoints(x, center = 0, scale = 0.1, vertical = TRUE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
vector of data.
}
  \item{center}{
where to plot the data. This is an x-coordinate if vertical=TRUE, a y-coordinate otherwise.
}
  \item{scale}{
how much to splay out the points.
}
  \item{vertical}{
TRUE if the data vary along the y-axis, FALSE if they vary along the x-axis.
}
  \item{\dots}{
additional arguments passed to points().
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
d <- c(2, 3, 3, 4, 6, 6, 6, 7, 8, 8, 9)
bp <- barplot(mean(d), ylim=c(0, 10))
SplayPoints(d, center=bp, scale=0.02)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
