library(dplyr)

#   DplyrAndPipes.R

#   http://seananderson.ca/2014/09/13/dplyr-intro.html
  

url <- "http://esapubs.org/archive/ecol/E090/184/PanTHERIA_1-0_WR05_Aug2008.txt"
fileName <- "mammals.txt"

if(!file.exists(fileName))
  download.file(url, destfile =fileName )


mammals <- read.table("mammals.txt", sep = "\t", header = TRUE, 
                      stringsAsFactors = FALSE)
names(mammals) <- sub("X[0-9._]+", "", names(mammals))
names(mammals) <- sub("MSW05_", "", names(mammals))
mammals <- dplyr::select(mammals, Order, Binomial, AdultBodyMass_g, 
                         AdultHeadBodyLen_mm, HomeRange_km2, LitterSize)
names(mammals) <- gsub("([A-Z])", "_\\L\\1", names(mammals), perl = TRUE)
names(mammals) <- gsub("^_", "", names(mammals), perl = TRUE)
mammals[mammals == -999] <- NA
names(mammals)[names(mammals) == "binomial"] <- "species"
mammals <- dplyr::tbl_df(mammals) # for prettier printing
