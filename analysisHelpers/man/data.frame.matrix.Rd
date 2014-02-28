\name{data.frame.matrix}
\alias{data.frame.matrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{data.frame.matrix}
\description{
Convert an aggregates data.frame into a matrix for easy plotting with barplot(). The data.frame must have only one observation per experimental condition, and be a 2-factor design (i.e. data frames with 3 columns). Two columns must be factors, and the third a numeric dependent variable.
}
\usage{
data.frame.matrix(d, dv)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{d}{
3-column data.frame.
}
  \item{dv}{
The name of the dependent variable (character).
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
2-by-2 numeric matrix.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Geoff Brookshire <g_b@cal.berkeley.edu>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Generate the data
x1 <- rep(c('a', 'b'), times=2)
x2 <- rep(c('c', 'd'), each=2)
y <- rnorm(length(x1))
d <- data.frame(x1, x2, y)

d.mat <- data.frame.matrix(d)

# quickly plot it
interaction.barplot(d.mat)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
