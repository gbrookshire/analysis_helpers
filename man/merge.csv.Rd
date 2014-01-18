\name{merge.csv}
\alias{merge.csv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Combine .csv files}
\description{
Combine all .csv files in a single directory. Be sure to delete any old aggregated .csv files before running mrege.csv, or you'll end up duplicating those data points!
}
\usage{
merge.csv(dirname, outputname = "all.csv", sep = ",", skip = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dirname}{
Name of the directory containing the .csv files to be combined.
}
  \item{outputname}{
Name of the output file to be written.
}
  \item{sep}{
Separator character. In normal csv files this is a comma (","). The output file is also written with this separator.
}
  \item{skip}{
Number of lines to skip at the top of each input file.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Does not return anything. Instead, writes a .csv file.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Geoff Brookshire}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
