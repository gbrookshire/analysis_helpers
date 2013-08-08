fix.factors <- function(d) {
	# Prepare data frames for analysis with lmer
	# Remove unused levels of factors
	# and move factors with 2 levels to deviation coding
	#
	# Takes one data.frame and returns a new version of it
	
	dat <- d
	for (field in names(dat)) {
    
    	# get rid of unused factor levels
	    if (is.factor(dat[,field]))
    	    dat[,field] <- factor(dat[,field][])
	
	    # move to deviation coding (mean-centered)
    	if (length(levels(dat[,field])) == 2)
        	contrasts(dat[,field]) <- c(-0.5, 0.5)
	}
	return(dat)
}