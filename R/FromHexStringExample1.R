library(stringr)


FromHexString <- function (hex.string) {
  result <- ""
  length <- str_length(hex.string)
  for (i in seq(1, length, by=2)) {
    hex.value <- str_sub(hex.string, i, i + 1)
    char.code <- strtoi(hex.value, 16)
    char <- rawToChar(as.raw(char.code))
    result <- paste(result, char, sep="")
    char
  }
  result
}

FromHexTwoChar <- function (hex.value) {
    char.code <- strtoi(hex.value, 16)
    char <- rawToChar(as.raw(char.code))
    char
}



