\name{merge.csv}
\alias{merge.csv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Combine .csv files}
\description{
Combine all .csv files in a single directory.
}
\usage{
merge.csv(dirname, outputname, sep = ",", skip = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dirname}{
Name of the directory containing the .csv files to be combined.
}
  \item{filenames}{
A character vector of names of individual files to be read in.
  }
  \item{outputname}{
A filename can be passed in here to optionally ouput a merged csv file.
}
  \item{sep}{
Separator character, defaults to the csv standard ",". The output file is also written with this separator.
}
  \item{skip}{
Number of lines to skip at the top of each input file. Does not have to be specified for a group of csv files with one header line.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Quietly returns the merged csv for assignment.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Geoff Brookshire + Ché Lucero}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Read all of the csv files in ../results/ merge them, and assign it to foo.
foo <- merge.csv('../results/')

# Read all of the csv files in ../results/ merge them, and write it out to AllResults.csv
merge.csv('../results/', 'AllResults.csv')

# Read all of the csv files in ../results/ merge them, assign it to foo and write it out to AllResults.csv
foo <- merge.csv('../results/', 'AllResults.csv')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
