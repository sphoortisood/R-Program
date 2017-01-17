library('preprocessCore')
setwd("E:/30thdecemberThesis")
re22 <-read.table("Transcript_before_norm.txt",sep = "\t",header=TRUE)
tt<-(t(re22[,-1]))
v1<- normalize.quantiles(tt,copy = TRUE)
write.table(t(v1),file = "quantile.txt",sep = "\t")




