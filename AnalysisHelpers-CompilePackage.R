# Update the man files so that they're actually informative.
# Man files in the build directory are generated online, so
# update the man pages in the outer man directory, not analysisHelpers/man.

rm(list=ls())
script.dir <- "~/Documents/programming/r/analysis_helpers/scripts/"
scrs <- dir(script.dir)
print(scrs)

setwd(paste(script.dir, '..', sep=''))

package.skeleton('analysisHelpers',
                 code_files=paste(script.dir, scrs, sep=""),
                 force=TRUE)

today <- substr(Sys.time(), 1, 10)
description <- c(
  "Package: analysisHelpers",
  "Type: Package",
  "Title: Simple functions for data analysis in the Casasanto lab",
  paste("Version:", today),
  paste("Date:", today),
  "Author: Geoff Brookshire and other Casasanto lab people",
  "Maintainer: Geoff Brookshire <g_b@cal.berkeley.edu>",
  "Description: See the individual functions for more about what they do.",
  "License: None!")

setwd('analysisHelpers')

# copy description and man files over
write(description, "DESCRIPTION")
system("rm -rf man")
system("cp -R ../man .")

# compile into a .tar.gz
system('R CMD build .')

# copy it to the builds directory
last.build <- tail(grep('analysisHelpers', dir('.'), value=T), 1)
system(paste('cp', last.build, '../builds/'))

# to install:
# install.packages('path/to/package/analysisHelpers-V.V.tar.gz', repos=NULL, type='source')