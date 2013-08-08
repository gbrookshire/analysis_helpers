# Filter outliers
# Return a data frame of same structure as input,
# but with outliers removed on a subject-wise basis.
#
# dat: a data frame
# DV: name of the column containing numerical data (char)
# subject.names: name of column containing subject names (char)
# sds: outer limit of retained observations in SDs (numeric)

filter.outliers <- function(dat, DV, subject.names, sds) {

	dat[[subject.names]] <- factor(dat[[subject.names]])
	
	subj.means <- tapply(dat[[DV]], dat[[subject.names]], mean)
	subj.sds <- tapply(dat[[DV]], dat[[subject.names]], sd)
	subj.stats <- data.frame(cbind(subj.means, subj.sds))
	subj.stats[[subject.names]] <- factor(rownames(subj.stats))
	d <- merge(dat, subj.stats, subject.names)
	d$filter <- with(d,
		(d[[DV]] >= subj.means + sds*subj.sds) | 
		(d[[DV]] <= subj.means - sds*subj.sds))
	
	return(subset(d, !filter))	
}