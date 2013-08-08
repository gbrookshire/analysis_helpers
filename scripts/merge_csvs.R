merge.csv <- function(dirname, outputname='all.csv', sep=',', skip=0) {
  # Takes all the csvs in a given directory and outputs a csv with all their
  # contents.  The 'outputname' arg gives the name of the file to be written.

  # This function merges multiple .csv files in a single directory
  # into a single .csv file called all.csv
  # it will not overwrite old files called all.csv
  # load it into R and then call it with the path of the directory
  # which holds the logfiles you want to merge.
  
  print("This might sort the columns -- it's best to check that it doesn't.\n")
  setwd(dirname)
  filecont <- dir()
  # only look at the .csv’s
  filecont <- filecont[substr(filecont, nchar(filecont)-3, nchar(filecont))=='.csv']
  # first make a table to hold all the data, fill with first CSV
  agg <- read.csv(filecont[1], sep=sep, skip=skip)
  filecont <- filecont[-1]
  for (f in filecont) {
    print(f)   
    d <- read.csv(f, sep=sep, skip=skip)
    agg <- merge(agg, d, all=TRUE, sort=FALSE) # fill in blanks for absent rows
  }
  write.csv(agg, outputname, row.names=FALSE, quote=FALSE)
}


