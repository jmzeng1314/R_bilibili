rm(list = ls())
options(stringsAsFactors = F)
a=read.table('BRCA_7157_50_50.csv',sep = ',',fill = T,header = T)
dat=a
library(ggplot2)
library(survival)
library(survminer) 
table(dat$Status)
dat$Status=ifelse(dat$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=dat)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE)
ggsave('survival_TP53_in_BRCA_TCGA.png')

### 分割线
 
head(a)
b=read.table('e4-plot.txt',sep = '\t',fill = T,header = T)
colnames(b)=c('Patient','subtype','expression','mut')
head(b)
b$Patient=substring(b$Patient,1,12)
tmp=merge(a,b,by='Patient')

table(tmp$subtype)

type='BRCA_LumB'
x=tmp[tmp$subtype==type,] 
library(ggplot2)
library(survival)
library(survminer) 
#table(x$Status)
x$Status=ifelse(x$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=x)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE)  

table(tmp$subtype)

type='BRCA_Normal'
x=tmp[tmp$subtype==type,] 
library(ggplot2)
library(survival)
library(survminer) 
#table(x$Status)
x$Status=ifelse(x$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=x)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE) 

table(tmp$subtype)
type='BRCA_Basal'

x=tmp[tmp$subtype==type,] 
library(ggplot2)
library(survival)
library(survminer) 
#table(x$Status)
x$Status=ifelse(x$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=x)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE) 

table(tmp$subtype)

type='BRCA_Her2'
x=tmp[tmp$subtype==type,] 
library(ggplot2)
library(survival)
library(survminer) 
#table(x$Status)
x$Status=ifelse(x$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=x)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE) 

table(tmp$subtype)

type='BRCA_LumA'
x=tmp[tmp$subtype==type,] 
library(ggplot2)
library(survival)
library(survminer) 
#table(x$Status)
x$Status=ifelse(x$Status=='Dead',1,0)
sfit <- survfit(Surv(Days, Status)~Group, data=x)
sfit
summary(sfit)
ggsurvplot(sfit, conf.int=F, pval=TRUE) 


 



