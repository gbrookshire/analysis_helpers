\name{summarySEwithin}
\alias{summarySEwithin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
summarySEwithin}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
summarySEwithin(data = NULL, measurevar, betweenvars = NULL, withinvars = NULL, idvar = NULL, na.rm = FALSE, conf.interval = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
}
  \item{measurevar}{
%%     ~~Describe \code{measurevar} here~~
}
  \item{betweenvars}{
%%     ~~Describe \code{betweenvars} here~~
}
  \item{withinvars}{
%%     ~~Describe \code{withinvars} here~~
}
  \item{idvar}{
%%     ~~Describe \code{idvar} here~~
}
  \item{na.rm}{
%%     ~~Describe \code{na.rm} here~~
}
  \item{conf.interval}{
%%     ~~Describe \code{conf.interval} here~~
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
function (data = NULL, measurevar, betweenvars = NULL, withinvars = NULL, 
    idvar = NULL, na.rm = FALSE, conf.interval = 0.95) 
{
    data <- normDataWithin(data, idvar, measurevar, betweenvars, 
        na.rm)
    measureNormedVar <- paste(measurevar, "Normed", sep = "")
    data.unadjust <- summarySE(data, measurevar, groupvars = c(betweenvars, 
        withinvars), na.rm = na.rm, conf.interval = conf.interval)
    mean.unadjust <- data.unadjust[, measurevar]
    data[, measurevar] <- data[, measureNormedVar]
    datac <- summarySE(data, measurevar, groupvars = c(betweenvars, 
        withinvars), na.rm = na.rm, conf.interval = conf.interval)
    nWithinGroups <- prod(sapply(datac[, withinvars, drop = FALSE], 
        FUN = nlevels))
    correctionFactor <- sqrt(nWithinGroups/(nWithinGroups - 1))
    datac$sd <- datac$sd * correctionFactor
    datac$se <- datac$se * correctionFactor
    datac$ci <- datac$ci * correctionFactor
    datac[[paste(measurevar, ".unadjusted", sep = "")]] <- mean.unadjust
    return(datac)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
