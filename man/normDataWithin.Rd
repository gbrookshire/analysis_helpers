\name{normDataWithin}
\alias{normDataWithin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
normDataWithin}
\description{
Used by summarySEwithin - don't call this function directly.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
normDataWithin(data = NULL, idvar, measurevar, betweenvars = NULL, na.rm = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{idvar}{
%%     ~~Describe \code{idvar} here~~
}
  \item{measurevar}{
%%     ~~Describe \code{measurevar} here~~
}
  \item{betweenvars}{
%%     ~~Describe \code{betweenvars} here~~
}
  \item{na.rm}{
%%     ~~Describe \code{na.rm} here~~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (data = NULL, idvar, measurevar, betweenvars = NULL, 
    na.rm = FALSE) 
{
    require(doBy)
    subjMeanFormula <- as.formula(paste(measurevar, paste(c(idvar, 
        betweenvars), collapse = " + "), sep = " ~ "))
    data.subjMean <- summaryBy(subjMeanFormula, data = data, 
        keep.names = TRUE, na.rm = na.rm)
    names(data.subjMean)[names(data.subjMean) == measurevar] <- "subjMean"
    data <- merge(data, data.subjMean)
    measureNormedVar <- paste(measurevar, "Normed", sep = "")
    data[, measureNormedVar] <- data[, measurevar] - data[, "subjMean"] + 
        mean(data[, measurevar])
    data$subjMean <- NULL
    return(data)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
