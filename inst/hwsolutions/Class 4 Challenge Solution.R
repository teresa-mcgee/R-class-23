setwd("~/Documents/HLC Curriculum/HLC-Curriculum/R Materials")
primers <- read.csv("primers.csv", header = FALSE, stringsAsFactors = FALSE)
primers

library(stringr)
Tms <- numeric(length=length(primers$V1))
for (i in 1:length(primers$V1)){
  plen <- nchar(primers[i,1]) #get length of ith primer
  nA <- sum(str_count(primers[i,1],"A"))
  nC <- sum(str_count(primers[i,1],"C"))
  nG <- sum(str_count(primers[i,1],"G"))
  nT <- sum(str_count(primers[i,1],"T"))
  if (plen<=13){
    Tm <- (nA+nT)*2 + (nG+nC)*4
  }
  else{
    Tm <- 64.9 +41*(nG+nC-16.4)/(nA+nT+nG+nC)
  }
  Tms[i]<-Tm #store the mass of the ith primer in the vector "masses"
}
Tms