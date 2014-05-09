merge.csv <- function(dirname, outputname, sep=',', skip=0) {
  # Reads in all the csvs in directory dirname, merges them, and quietly returns
  # them as a dataframe. If outputname is passed in, it will also write a merged
  # csv file to the current working directory.
  
  if(missing(dirname)) {
    stop('No directory specified.')
  }
  
  sep.char <- sep  
  filecont <- dir(dirname)
  # Strip out anything other than csv files
  filecont <- filecont[substr(filecont, nchar(filecont)-3, nchar(filecont))=='.csv']
  # Add directory to each filename 
  filecont <- paste(dirname, filecont, sep ='')
  message(paste('Merging', as.character(length(filecont)), 'files.'))
  # first make a table to hold all the data, fill with first CSV
  agg <- read.csv(filecont[1], sep=sep.char, skip=skip)
  message(filecont[1])
  filecont <- filecont[-1]
  
  for (f in filecont) {
    message(f)   
    d <- read.csv(f, sep=sep.char, skip=skip)
    agg <- merge(agg, d, all=TRUE, sort=FALSE) # fill in blanks for absent rows
  }
  
  # If outputname was passed in, write out the merged csv data to that filename
  if(!missing(outputname)) {
    write.table(agg, outputname, sep=sep.char, row.names=FALSE, quote=FALSE) 
  }
  
  # Return the object for assignment, but don't barf it on to the screen if
  # no assignment is made.
  invisible(agg)
}