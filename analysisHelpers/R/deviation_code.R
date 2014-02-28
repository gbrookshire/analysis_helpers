deviation.code <- function(recode.factor, baseline){
  # function that creates deviation coding contrasts for a multilevel factor
  # takes factor to be coded and the name of the level to be used as baseline
  # returns a matrix containing the deviation contrasts for the factor provided as input 
  
  # get the K of levels of the factor 
  k <- length(levels(recode.factor))
  # get the names of all levels
  fact.lvl.names <- levels(recode.factor)
  # get the names of all, non-baseline levels
  contr.lvls <- fact.lvl.names[fact.lvl.names != baseline]
  # create an empty matrix
  dummy.mat <- matrix(nrow = k, ncol = k-1, data = 0)
  # set up the correct labels for columns & rows
  colnames(dummy.mat) <- contr.lvls
  rownames(dummy.mat) <- fact.lvl.names
  # set up the correct values for the dummy matrix
  for (level in contr.lvls){
    dummy.mat[level, level] <- 1
  }
  # set up the deviation coding
  new.coding <- matrix(rep(1/k, (k*(k-1))), ncol = k-1)
  dev.coding <- dummy.mat - new.coding
  return(dev.coding)
}