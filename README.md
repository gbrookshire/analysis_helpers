# analysisHelpers
A library of functions for analyzing behavioral data in R.

## Installation

You can install analysisHelpers in one of two ways:

1) Download the most recent *.tar.gz build in the current_version/ directory, and run `install.packages('analysisHelpers.tar.gz', repos=NULL, type='source')` from the directory where the *.tar.gz file is saved.

2) Using the `install_github()` function from the devtools library:
```{r}
library(devtools)
install_github("gbrookshire/analysis_helpers", subdir='analysisHelpers')
```

## Contribute

To contribute to analysisHelpers: alter the code in scripts/, and update the documentation in man/. Then build a packaged library by running `AnalysisHelpers-CompilePackage.R`, and move the most recent build to the analysisHelpers/ directory. Then submit a pull request.
