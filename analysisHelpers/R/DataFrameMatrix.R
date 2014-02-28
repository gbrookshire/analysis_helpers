data.frame.matrix <- function(d, dv){
    # convert an aggregated data.frame to a matrix
    # this data frame must have only one observation per experimental condition
    # works for 2-factor designs, i.e. data frames with 3 columns:
    #      2 factors and one numeric dependent variable
    #
    # dv is a string for the name of the dependent var
    # the columns of IVs will be coerced to factors
	
	cnames <- names(d)
	cnames <- cnames[cnames != dv]
    
    # make sure these are both factors
    d[[cnames[1]]] <- as.factor(d[[cnames[1]]])
    d[[cnames[2]]] <- as.factor(d[[cnames[2]]])
 
    # get the levels of each factor
	dims <- list()
	dims[[cnames[1]]] <- levels(d[[cnames[1]]])
	dims[[cnames[2]]] <- levels(d[[cnames[2]]])

    m <- matrix(nrow = length(dims[[cnames[1]]]),  # empty matrix to hold data
        ncol = length(dims[[cnames[2]]]),
		dimnames = dims)
	for (lev.1 in levels(d[[cnames[1]]])){
		for (lev.2 in levels(d[[cnames[2]]])){
            # store the observation in that part of the matrix
			obs <- d[d[[cnames[1]]]==lev.1 & d[[cnames[2]]]==lev.2, dv]
            if (length(obs) > 1)
                stop('d contains more than one column per level of the factors.')
            m[lev.1, lev.2] <- obs}}
	return(m)
}


interaction.barplot <- function(m, main='', ylim=NULL, ...) {
	# plot the output of data.frame.matrix
	d.lims <- c(min(m), max(m))
	if (is.null(ylim))
        {ylim <- d.lims + diff(d.lims)*.2*c(-1,1)}
	col = c('black', 'grey')
	barplot(m, beside=T, xpd=F, col=col, ylim=ylim, main=main)
	legend(x='topright', fill = col,
		legend = dimnames(m)[[1]], title = names(dimnames(m))[1])
	box()
}