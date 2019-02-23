rm(list = ls())
options(stringsAsFactors = F)
a=read.table('e4-plot.txt',sep = '\t',fill = T,header = T)

colnames(a)=c('id','subtype','expression','mut')
dat=a
library(ggstatsplot)
ggbetweenstats(data =dat, x = subtype,  y = expression)
library(ggplot2)
ggsave('plot-again-BRCA1-TCGA-BRCA-cbioportal.png')
