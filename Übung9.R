install.packages("class")

setwd("~/Library/Mobile Documents/3L68KQB4HG~com~readdle~CommonDocuments/Documents/8. Semester/Bioinformatik/R")
library(readxl)
##ich habe vorher die 'number' datei nach excel exportiert, um die hier einfacher importieren zu können
genedata <- read_excel("genedata-for-knn.excel.xlsx", 
                                     col_types = c("numeric", "numeric", "text"))
View(genedata_for_knn_excel)

b0 <- mean(genedata$`genedata-for-knn`[2:length(genedata$`genedata-for-knn`)])
b1 <- mean(genedata$...2[2:length(genedata$...2)])


1/1+exp(-(b0+b1+b0*0+b1*2)) ##Wert1: x1=0, x2=0 ==> 4.485807
1/1+exp(-(b0+b1+b0*0+b1*5)) 
1/1+exp(-(b0+b1+b0*0+b1*(-8)))
1/1+exp(-(b0+b1+b0*(-5)+b1*10))  



