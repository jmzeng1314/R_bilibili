rm(list = ls())
options(stringsAsFactors = F)
a=read.table('e2.txt')
colnames(a)='probe_id'
library(hgu133a.db)
ids=toTable(hgu133aSYMBOL)
head(ids)
tmp1=merge(ids,a,by='probe_id')
tmp2=ids[match(a$probe_id,ids$probe_id),]


