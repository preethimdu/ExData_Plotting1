## Coursera - Exploratory Data Analysis - Plotting Assignment 1
##
## Plot1.R - generates plot1.png

## First of all, we make sure we have the downloaded data available, we will
## put is in a file in the local working directory
filename = "exdata_plotting1.zip"
if (!file.exists(filename)) {
  retval = download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                         destfile = filename,
                         method = "curl")
}

## Reading the data from the contents of the zipped file
df.power = read.csv(unz(filename, "household_power_consumption.txt"), header=T,
                    sep=";", stringsAsFactors=F, na.strings="?",
                    colClasses=c("character", "character", "numeric",
                                 "numeric", "numeric", "numeric",
                                 "numeric", "numeric", "numeric"))


