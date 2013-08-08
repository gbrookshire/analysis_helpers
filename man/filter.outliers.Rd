\name{filter.outliers}
\alias{filter.outliers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{filter.outliers}
\description{
Return a data frame of same structure as input, but with outliers removed on a subject-wise basis.
}
\usage{
filter.outliers(dat, DV, subject.names, sds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
The full data.frame of your data.
}
  \item{DV}{
The name of the column containing your numerical dependent variable (character).
}
  \item{subject.names}{
The name of the column containing subject names (char).
}
  \item{sds}{
The outer limit of retained observations in standard deviations (numeric). E.g. sds=3 will filter out any responses greater than 3*SD from the subject mean.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Data.frame of the same structure as the input.
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
subjects <- as.factor(rep(paste('s', 1:10), each=50))
y <- rnorm(length(subjects))
d <- data.frame(subjects, y)

d.filt <- filter.outliers(d, 'y', 'subjects', 2.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
