\name{filter.outliers}
\alias{filter.outliers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Remove outliers}
\description{
Remove the outliers from numeric data on a subject-wise basis.
}
\usage{
filter.outliers(dat, DV, subject.names, sds)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
A data.frame.
}
  \item{DV}{
The name of the column containing your numerical dependent variable (char).
}
  \item{subject.names}{
The name of the column containing the subject names (char).
}
  \item{sds}{
The outer limit of retained observations in standard deviations (numeric). E.g. sds=3 will filter out any responses greater than 3*SD from the subject mean.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
data.frame with the same structure as the input.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
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
