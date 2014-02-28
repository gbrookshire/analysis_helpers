\name{deviation.code}
\alias{deviation.code}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Move a factor to deviation coding
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
deviation.code(recode.factor, baseline)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{recode.factor}{
%%     ~~Describe \code{recode.factor} here~~
}
  \item{baseline}{
%%     ~~Describe \code{baseline} here~~
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
tom.gijssels@gmail.com
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
function (recode.factor, baseline) 
{
    k <- length(levels(recode.factor))
    fact.lvl.names <- levels(recode.factor)
    contr.lvls <- fact.lvl.names[fact.lvl.names != baseline]
    dummy.mat <- matrix(nrow = k, ncol = k - 1, data = 0)
    colnames(dummy.mat) <- contr.lvls
    rownames(dummy.mat) <- fact.lvl.names
    for (level in contr.lvls) {
        dummy.mat[level, level] <- 1
    }
    new.coding <- matrix(rep(1/k, (k * (k - 1))), ncol = k - 
        1)
    dev.coding <- dummy.mat - new.coding
    return(dev.coding)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
