setwd("E:/30thdecemberThesis")
library("ggplot2")
trans2 <-read.table("Tring.txt", header=TRUE,sep = "\t")
df1 <- as.data.frame(t(trans2))
names(df1) <- as.matrix(df1[1, ])
df1 <- df1[-1, ]
df1[] <- lapply(df1, function(x) type.convert(as.character(x)))
df1
df2<-stack(df1)
head(df2)
colnames(df2)<- c("values","Genes")
df2
ggplot(df2, aes(x=values,group=Genes,col=Genes,fill=Genes))+
  geom_density(alpha=0.2)+ggtitle("Genes distribution across 119 samples") +
  labs(x="log2(FPKM values)",y="frequency") 
