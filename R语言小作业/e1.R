rm(list = ls())
options(stringsAsFactors = F)
a=read.table('e1.txt')
head(a)
library(org.Hs.eg.db)
ls("package:org.Hs.eg.db")
g2s=toTable(org.Hs.egSYMBOL);head(g2s)
g2e=toTable(org.Hs.egENSEMBL);head(g2e)
head(g2e)
library(stringr)

a$ensembl_id=unlist(lapply(a$V1,function(x){
  strsplit(as.character(x),'[.]')[[1]][1]
})
)
tmp=merge(a,g2e,by='ensembl_id')
tmp=merge(tmp,g2s,by='gene_id')


