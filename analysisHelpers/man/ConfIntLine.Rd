\name{ConfIntLine}
\alias{ConfIntLine}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plotting regression confidence intervals
}
\description{
Plot confidence intervals around a linear regression line.
}
\usage{
ConfIntLine(x, y, x.range = NULL, color = NULL, level = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{y}{
%%     ~~Describe \code{y} here~~
}
  \item{x.range}{
%%     ~~Describe \code{x.range} here~~
}
  \item{color}{
%%     ~~Describe \code{color} here~~
}
  \item{level}{
Confidence interval to plot around the line.
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
Geoff
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
set.seed(10)
x <- 1:20
y <- (0.2 * x) + rnorm(20)
plot(x, y)
ConfIntLine(x, y)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
