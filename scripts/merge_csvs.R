merge.csv <- function(dirname, outputname='all.csv', sep=',', skip=0) {
  # Takes all the csvs in a given directory and outputs a csv with all their
  # contents.  The 'outputname' arg gives the name of the file to be written.

  # This function merges multiple .csv files in a single directory
  # into a single .csv file called all.csv
  # it will not overwrite old files called all.csv
  # load it into R and then call it with the path of the directory
  # which holds the logfiles you want to merge.
  
  sep.char <- sep
  start.dir <- getwd()
  setwd(dirname)
  filecont <- dir()
  # only look at the .csv’s
  filecont <- filecont[substr(filecont, nchar(filecont)-3, nchar(filecont))=='.csv']
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
  write.table(agg, outputname, sep=sep.char, row.names=FALSE, quote=FALSE)
  setwd(start.dir)
}


