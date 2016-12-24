fix.factors <- function(dat) {
	# Prepare data frames for analysis with lmer
	# Remove unused levels of factors
	# and move factors to deviation coding
	#
	# Takes a data.frame and returns a new version of it
	
	for (field in names(dat)) {
    	# get rid of unused factor levels
	    if (is.factor(dat[,field])) {
	      # Remove unused levels
	      dat[,field] <- factor(dat[,field][])
	      if (nlevels(dat[,field]) > 1) {
  	      # move to deviation coding (mean-centered)
  	      contrasts(dat[,field]) <- deviation.code(dat[,field],
  	                                               levels(dat[,field])[1])
  	      # The baseline level doesn't affect the output of summary(aov(...)),
  	      # so this script randomly chooses a baseline level of the factor.
	      }
	    }
	      
	}
	return(dat)
}