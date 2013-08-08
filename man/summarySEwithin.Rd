\name{summarySEwithin}
\alias{summarySEwithin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute within-subjects standard errors
}
\description{
Get within-subjects standard error of the mean, count, mean, standard deviation, and confidence interval (default 95\%) for a numeric variable.
}
\usage{
summarySEwithin(data = NULL, measurevar, betweenvars = NULL, withinvars = NULL, idvar = NULL, na.rm = FALSE, conf.interval = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame.
}
  \item{measurevar}{
the name of a column that contains the variable to be summarized.
}
  \item{betweenvars}{
a vector containing names of columns that contain grouping variables.
}
  \item{withinvars}{
a boolean that indicates whether to ignore NA's.
}
  \item{idvar}{
%%     ~~Describe \code{idvar} here~~
}
  \item{na.rm}{
a boolean that indicates whether to ignore NA's.
}
  \item{conf.interval}{
the percent range of the confidence interval.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
a data.frame that summarizes the contents of the input data. The column with the name of the dependent variable (arg: DV) gives an adjusted mean. To use the unadjusted mean (which is what you almost certainly want), use the column called <DV>.unadjusted.
\item{<Name of your measurevar>}{an adjusted mean. You probably don't want this. Instead, use the unadjusted mean.}
\item{<Name of your measurevar>.unadjusted}{unadjusted mean of the values in that group.}
\item{N}{number of observations.}
\item{se}{within-subjects standard error of the mean.}
\item{ci}{confidence interval.}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Geoff adapted this function from a script taken from http://wiki.stdout.org/rcookbook/Graphs/Plotting\%20means\%20and\%20error\%20bars\%20(ggplot2)}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
summarySE
}
\examples{
dv <- rnorm(120)
subject <- factor(rep(paste('s', 1:6), each=20))
f.within <- factor(rep(c('a', 'b'), times=60))
f.between <- factor(rep(c('x', 'y'), each=60))
d <- data.frame(subject, f.within, f.between, dv)

summarySEwithin(d, measurevar='dv',
  withinvars='f.within', betweenvars='f.between',
  idvar='subject')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
