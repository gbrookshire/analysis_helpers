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
Separator character. In normal csv's this is a comma (","), but it could be a tab ("\t") or anything else.
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (dirname, outputname = "all.csv", sep = ",", skip = 0) 
{
    setwd(dirname)
    filecont <- dir()
    filecont <- filecont[substr(filecont, nchar(filecont) - 3, 
        nchar(filecont)) == ".csv"]
    agg <- read.csv(filecont[1], sep = sep, skip = skip)
    filecont <- filecont[-1]
    print(filecont[1])
    for (f in filecont) {
        print(f)
        d <- read.csv(f, sep = sep, skip = skip)
        agg <- merge(agg, d, all = TRUE, sort = FALSE)
    }
    write.csv(agg, outputname, row.names = FALSE, quote = FALSE)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
