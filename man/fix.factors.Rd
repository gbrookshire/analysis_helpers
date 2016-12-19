\name{fix.factors}
\alias{fix.factors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Clean up a data.frame}
\description{
Prepare data frames for regression analysis. Remove unused levels of factors and move factors to deviation coding.
}
\usage{
fix.factors(d)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{d}{
a data.frame.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
a data.frame
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
deviation.code
}
\examples{
f.1 <- factor(x=rep(c('a', 'b'), times=15), levels=c('a', 'b', 'c'))
f.2 <- factor(x=rep(c('x', 'y', 'z'), each=10), levels=c('x', 'y', 'z'))
d <- data.frame(f.1, f.2)

d.new <- fix.factors(d)

summary(d)
contrasts(d$f.1)
contrasts(d$f.2)

summary(d.new)
contrasts(d.new$f.1)
contrasts(d.new$f.2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
