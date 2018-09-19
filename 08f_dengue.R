install.packages("dismo")
library(dismo)

#-------------------------------------------------------------------------------------

#Environment layers Eurasia
Ebio1<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio2.tif")
Ebio2<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio4.tif")
Ebio3<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio8.tif")
Ebio4<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio9.tif")
Ebio5<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio15.tif")
Ebio6<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio16.tif")
Ebio7<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio17.tif")
Ebio8<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio18.tif")
Ebio9<-raster("E:/ENMs/Climate Data/Dengue/eurasia/bio19.tif")
Elc3<-raster("E:/ENMs/Climate Data/Dengue/eurasia/flood.tif")
Elc2<-raster("E:/ENMs/Climate Data/Dengue/eurasia/farm.tif")
Elc1<-raster("E:/ENMs//Climate Data/Dengue/eurasia/urban.tif")

environmentlayersEUR<-stack(Ebio1, Ebio2, Ebio3, Ebio4, Ebio5, Ebio6, Ebio7, Ebio8, Ebio9, Elc3, Elc2, Elc1)

##Occurence data
Dengue_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Eurasia_THIN.csv", header = T)
Dengue_Eurasia_subset<-subset(Dengue_Eurasia, select = c(decimalLongitude, decimalLatitude))

#-------------------------------------------------------------------------------------

#Model, Dengue on Eurasia
#changing betamultiplier: 1.0
DE.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
  
))  
DE.maxent

D.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
D.maxent

D.maps<-predict(
  
  object=D.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(D.maps)
points(Dengue_Eurasia_subset, pch=19, cex=0.05)

#-------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------

#changing betamultiplier: 0.25
DE1.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE1.maxent

#changing betamultiplier: 0.75
DE2.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE2.maxent

#changing betamultiplier: 1.25
DE3.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE3.maxent

DE3.1.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE3.1.maxent

#changing betamultiplier: 1.75
DE4.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE4.maxent

#changing betamultiplier: 1.75
DE4.1.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE4.maxent

#changing betamultiplier: 2.25
DE5.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE5.maxent

#changing betamultiplier: 2.75
DE6.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE6.maxent

#changing betamultiplier: 3.25
DE7.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE7.maxent

#changing betamultiplier: 3.75
DE8.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE8.maxent

#changing betamultiplier: 4.25
DE9.maxent<-maxent(x=environmentlayersEUR, p=Dengue_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DE9.maxent

#-------------------------------------------------------------------------------------

#Map dengue on Eurasia
#look at outputs of changing reg. parameter

DE.maps<-predict(
  
  object=DE.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mean(DE.maps))
points(Dengue_Eurasia_subset, pch=19, cex=0.1)

#Map dengue on Eurasia 0.25 reg. parameter
DE1.maps<-predict(
  
  object=DE1.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DE1.maps)
plot(mean(DE1.maps))
points(Dengue_Eurasia_subset, pch=19, cex=0.05)

#Map dengue on Eurasia 3.75 reg. parameter
DE8.maps<-predict(
  
  object=DE8.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DE8.maps)
plot(mean(DE8.maps))
points(Dengue_Eurasia_subset, pch=19, cex=0.05)

#Map dengue on Eurasia 2.25 reg. parameter
DE5.maps<-predict(
  
  object=DE5.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DE5.maps)
plot(mean(DE5.maps))
points(Dengue_Eurasia_subset, pch=19, cex=0.05)

#map dengue on Eurasia with 1.25 reg. parameter  and without cross val.
DE3.1.maps<-predict(
  
  object=DE3.1.maxent,
  x=environmentlayersEUR,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DE3.1.maps)
points(Dengue_Eurasia_subset, pch=19, cex=0.05)

writeRaster(DE3.1.maps, filename="Deur.tif", overwrite = TRUE)
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------

#AFRICA
#Environment layers africa
Afbio1<-raster("E:/ENMs/Climate Data/Dengue/africa/bio2.tif")
Afbio2<-raster("E:/ENMs/Climate Data/Dengue/africa/bio4.tif")
Afbio3<-raster("E:/ENMs/Climate Data/Dengue/africa/bio8.tif")
Afbio4<-raster("E:/ENMs/Climate Data/Dengue/africa/bio9.tif")
Afbio5<-raster("E:/ENMs/Climate Data/Dengue/africa/bio15.tif")
Afbio6<-raster("E:/ENMs/Climate Data/Dengue/africa/bio16.tif")
Afbio7<-raster("E:/ENMs/Climate Data/Dengue/africa/bio17.tif")
Afbio8<-raster("E:/ENMs/Climate Data/Dengue/africa/bio18.tif")
Afbio9<-raster("E:/ENMs/Climate Data/Dengue/africa/bio19.tif")
Aflc3<-raster("E:/ENMs/Climate Data/Dengue/africa/flood.tif")
Aflc2<-raster("E:/ENMs/Climate Data/Dengue/africa/farm.tif")
Aflc1<-raster("E:/ENMs/Climate Data/Dengue/africa/urban.tif")

environmentlayersAf<-stack(Afbio1, Afbio2, Afbio3, Afbio4, Afbio5, Afbio6, Afbio7, Afbio8, Afbio9, Aflc3, Aflc2, Aflc1)

#occurence data
Dengue_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Africa_THIN.csv", header = T)
Dengue_Africa_subset<-subset(Dengue_Africa, select = c(decimalLongitude, decimalLatitude))

#----------------------------------------------------------------------------

#Model Dengue on Africa
DEAfrica.maxent<-maxent(x=environmentlayersAf, p=Dengue_Africa_subset, nbg = 5000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DEAfrica.maxent

DEAf.maxent<-maxent(x=environmentlayersAf, p=Dengue_Africa_subset, nbg = 5000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  

DEAf1.maps<-predict(
  
  object=DEAf.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)


plot(DEAf1.maps)
points(Dengue_Africa_subset, pch=19, cex=0.1)

#modelling Africa with reg. parameter: 1.25
DEAfrica1.maxent<-maxent(x=environmentlayersAf, p=Dengue_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DEAfrica1.maxent

#modelling Africa with reg. parameter: 1.25 without CV
DEAfrica2.maxent<-maxent(x=environmentlayersAf, p=Dengue_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DEAfrica2.maxent

#plotting Dengue Africa
DEAfrica1.maps<-predict(
  
  object=DEAfrica.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)


plot(mean(DEAfrica1.maps))
points(Dengue_Africa_subset, pch=19, cex=0.1)

#plotting Dengue Africa reg parameter: 1.25  
DEAfrica2.maps<-predict(
  
  object=DEAfrica2.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)


plot(DEAfrica2.maps)
points(Dengue_Africa_subset, pch=19, cex=0.1)

writeRaster(DEAfrica2.maps, filename="Daf.tif", overwrite = TRUE)

#Predicting africa from eurasia model
DEAfrica.maps<-predict(
  
  object=DE.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mean(DEAfrica.maps))
points(Dengue_Africa_subset, pch=19, cex=0.1)

DAfrica.maps<-predict(
  
  object=D.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DAfrica.maps)
points(Dengue_Africa_subset, pch=19, cex=0.1)

#Predicting africa from eurasia model, beta multiplier 2.25
DE1Africa.maps<-predict(
  
  object=DE3.1.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mean(DE1Africa.maps))
points(Dengue_Africa_subset, pch=19, cex=0.1)

#Predicting africa from eurasia model, beta multiplier 2.25 without CV
DE2Africa.maps<-predict(
  
  object=DE3.1.maxent,
  x=environmentlayersAf,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DE2Africa.maps)
points(Dengue_Africa_subset, pch=19, cex=0.1)

writeRaster(DE2Africa.maps, filename="Daf_pr.tif", overwrite = TRUE)

#Extracting AUC from projection
install.packages("AUC")
library(AUC)

#projAUC<-function(test.coords, proj.rast, bg.n=10000, return.bg=F, return.curve=F ) {
projAUC<-function(test.coords, proj.rast, bg.n=10000, return.bg=F, return.curve=F ) {
  require(AUC)
  require(raster)
  bg.pts<-sampleRandom(proj.rast, bg.n, xy=T)
  pres.pts<-extract(proj.rast,test.coords)
  pts<-c(pres.pts,bg.pts[,3])
  pt.ind<-as.factor(c(rep(1,length(pres.pts)),rep(0,nrow(bg.pts))))
  
  pred.asdf<-roc(pts,pt.ind)
  if (return.curve==T) {
    return(list("auc"=auc(pred.asdf),"auc.curve"=cbind(pred.asdf$fpr,pred.asdf$tpr)))	
  } else return(auc(pred.asdf))
  
  
}

plot.auc.roc<-function(auc.list=NULL, fpr=NULL,tpr=NULL,auc.col="black",auc.lwd=2,ref.col="grey70",ref.lwd=1,plot.ref=T) {
  #function plots the Roc curve for a list arising from projAUC, or fpr (1-specificty) and tpr (sensitivity) values
  #auc.list = list ouput of projAUC
  #fpr = vector of false positive rates (1-specificity) if auc.list not supplied
  #tpr = vecture of true positive rates (sensitivity) if auc.list not supplied
  #The other parameters control the colour, width  of the ROC line an ref (1:1) line.
  if (class(auc.list)=="list") {
    
    if (names(auc.list)[2]=="auc.curve") {
      fpr<-auc.list$auc.curve[,1]
      tpr<-auc.list$auc.curve[,2]
    } else stop("auc.list is incorrect format")
  } 
  plot(fpr,tpr,type="l",xlab="1-Specificity",ylab="Sensitivity")
  if (plot.ref==T) lines(c(0,1),c(0,1),col=ref.col,lwd=ref.lwd)
  
  
}

AUC_dengue_africa<-projAUC(test.coords=Dengue_Africa_subset, proj.rast=DE2Africa.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_dengue_africa
#correlation test
#randomly select 10000 locatoins and pull out environment values for Africa and Africa predicted
#Using correlation function, compare values.
dengueaf<-sampleRandom(DEAfrica2.maps, 10000, xy=T)
dengueaf_ss<-subset(dengueaf, select=c(x,y))

dengueafpred<-sampleRandom(DE2Africa.maps, 10000, xy=T)
dengueafpred_ss<-subset(dengueafpred, select=c(x,y))

dengueafricavalues<-extract(environmentlayersAf, dengueaf_ss)
dengueafricapredvalues<-extract(environmentlayersAf, dengueafpred_ss)
dengue_africa_corvalues<-rbind(dengueafricavalues, dengueafricapredvalues)
dengue_africa_corvalues
dengueafrica_correlation<-cor(dengue_africa_corvalues)
dengueafrica_correlation
dengueafrica_correlation1<-cor.test(dengueafricavalues, dengueafricapredvalues)
dengueafrica_correlation1

#---------------------------------------------------------------------------------------

#Environment layers oceania
O_dengue_bio1<-raster("E:/ENMs/Climate Data/Dengue/oceania/oceania/bio2.tif")
O_dengue_bio2<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio4.tif")
O_dengue_bio3<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio8.tif")
O_dengue_bio4<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio9.tif")
O_dengue_bio5<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio15.tif")
O_dengue_bio6<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio16.tif")
O_dengue_bio7<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio17.tif")
O_dengue_bio8<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio18.tif")
O_dengue_bio9<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/bio19.tif")
O_dengue_lc3<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/flood.tif")
O_dengue_lc2<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/farm.tif")
O_dengue_lc1<-raster("E:/ENMs/Climate Data/dengue/oceania/oceania/urban.tif")

environmentlayersO_Dengue<-stack(O_dengue_bio1, O_dengue_bio2, O_dengue_bio3, O_dengue_bio4, O_dengue_bio5, O_dengue_bio6, O_dengue_bio7, O_dengue_bio8, O_dengue_bio9, O_dengue_lc3, O_dengue_lc2, O_dengue_lc1)
plot(environmentlayersO_Dengue)
     
##occurrence data
dengue_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Oceania_THIN.csv", header = T)
dengue_oceania_subset<-subset(dengue_oceania, select = c(decimalLongitude, decimalLatitude))

#------------------------------------------------------------------------------------------------------
#dengue model oceania
dengue_oceania.maxent<-maxent(x=environmentlayersO_Dengue, p=dengue_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
dengue_oceania.maxent

d_oceania.maxent<-maxent(x=environmentlayersO_Dengue, p=dengue_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
d_oceania.maxent

#plotting dengue oceania
dengue_oceania.maps<-predict(
  
  object=dengue_oceania.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_oceania.maps)
plot(mean(dengue_oceania.maps))
points(dengue_oceania_subset, pch=19, cex=0.1)

d_oceania.maps<-predict(
  
  object=d_oceania.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(d_oceania.maps)
points(dengue_oceania_subset, pch=19, cex=0.1)

#dengue model oceania with reg parameter: 1.25
dengue_oceania1.maxent<-maxent(x=environmentlayersO_Dengue, p=dengue_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
dengue_oceania1.maxent

#dengue model oceania with reg parameter:1.25 without cv
dengue_oceania2.maxent<-maxent(x=environmentlayersO_Dengue, p=dengue_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
dengue_oceania2.maxent

#plotting dengue oceania default reg
dengue_oceania1.maps<-predict(
  
  object=dengue_oceania1.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_oceania1.maps)
plot(mean(dengue_oceania1.maps))
points(dengue_oceania_subset, pch=19, cex=0.1)

#plotting dengue oceania reg=1.25, no cv
dengue_oceania2.maps<-predict(
  
  object=dengue_oceania2.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_oceania2.maps)
points(dengue_oceania_subset, pch=19, cex=0.1)

writeRaster(dengue_oceania2.maps, filename="Doce.tif")


#plotting dengue predicted from eurasia on oceania
dengue_oceania_prediction.maps<-predict(
  
  object=DE.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_oceania_prediction.maps)
plot(mean(dengue_oceania_prediction.maps))
points(dengue_oceania_subset, pch=19, cex=0.1)

#plotting dengue predicted from eurasia on oceania 1.25 with no cv
dengue_oceania_pred1.maps<-predict(
  
  object=DE3.1.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_oceania_pred1.maps)
points(dengue_oceania_subset, pch=19, cex=0.1)

writeRaster(dengue_oceania_pred1.maps, filename="Doce_pr.tif")

DOceania.maps<-predict(
  
  object=D.maxent,
  x=environmentlayersO_Dengue,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DOceania.maps)
points(dengue_oceania_subset, pch=19, cex=0.1)

#extracting AUC from projected, using function projAUC
AUC_dengue_oceania<-projAUC(test.coords=dengue_oceania_subset, proj.rast=dengue_oceania_pred1.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_dengue_oceania


##correlation
dengueo<-sampleRandom(dengue_oceania2.maps, 10000, xy=T)
dengueo_ss<-subset(dengueo, select=c(x,y))

dengueopred<-sampleRandom(dengue_oceania_pred1.maps, 10000, xy=T)
dengue0pred_ss<-subset(dengueopred, select=c(x,y))

dengueoceaniavalues<-extract(environmentlayersO_Dengue, dengueo_ss)
dengueoceaniapredvalues<-extract(environmentlayersO_Dengue, dengue0pred_ss)
dengue_oceania_corvalues<-rbind(dengueoceaniavalues, dengueoceaniapredvalues)

dengueoceania_correlation1<-cor.test(dengueoceaniavalues, dengueoceaniapredvalues)
dengueoceania_correlation1
#--------------------------------------------------------------------------
#americasss
Abio1<-raster("E:/ENMs/Climate Data/Dengue/americas/bio2.tif")
Abio2<-raster("E:/ENMs/Climate Data/Dengue//americas/bio4.tif")
Abio3<-raster("E:/ENMs/Climate Data/Dengue//americas/bio8.tif")
Abio4<-raster("E:/ENMs/Climate Data/Dengue//americas/bio9.tif")
Abio5<-raster("E:/ENMs/Climate Data/Dengue//americas/bio15.tif")
Abio6<-raster("E:/ENMs/Climate Data/Dengue//americas/bio16.tif")
Abio7<-raster("E:/ENMs/Climate Data/Dengue//americas/bio17.tif")
Abio8<-raster("E:/ENMs/Climate Data/Dengue//americas/bio18.tif")
Abio9<-raster("E:/ENMs/Climate Data/Dengue//americas/bio19.tif")
Alc3<-raster("E:/ENMs/Climate Data/Dengue//americas/flood.tif")
Alc2<-raster("E:/ENMs/Climate Data/Dengue//americas/farm.tif")
Alc1<-raster("E:/ENMs/Climate Data/Dengue//americas/urban.tif")

environmentlayersA<-stack(Abio1, Abio2, Abio3, Abio4, Abio5, Abio6, Abio7, Abio8, Abio9, Alc3, Alc2, Alc1)

Dengue_Americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Americas_THIN.csv", header = T)
Dengue_Americas_subset<-subset(Dengue_Americas, select = c(decimalLongitude, decimalLatitude))


DEAmerica.maxent<-maxent(x=environmentlayersA, p=Dengue_Americas_subset, nbg = 5000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DEAmerica.maxent

DAmerica.maxent<-maxent(x=environmentlayersA, p=Dengue_Americas_subset, nbg = 5000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
DAmerica.maxent

#plotting Dengue America
DEAmerica.maps<-predict(
  
  object=DEAmerica.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)


plot(DEAmerica.maps)
plot(mean(DEAmerica.maps))
points(Dengue_Americas_subset, pch=19, cex=0.1)

DAmerica.maps<-predict(
  
  object=DAmerica.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DAmerica.maps)
points(Dengue_Americas_subset, pch=19, cex=0.1)

#predicting america from eurasia
DEAmerica_prediction.maps<-predict(
  
  object=DE.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DEAmerica_prediction.maps)
plot(mean(DEAmerica_prediction.maps))
points(Dengue_Americas_subset, pch=19, cex=0.1)

DAmerica_prediction.maps<-predict(
  
  object=D.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(DAmerica_prediction.maps)
points(Dengue_Americas_subset, pch=19, cex=0.1)

#dengue model americas with reg parameter: 1.25
dengue_americas1.maxent<-maxent(x=environmentlayersA, p=Dengue_Americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
dengue_americas1.maxent

#dengue model americas with reg parameter: 2.25 without cv
dengue_americas2.maxent<-maxent(x=environmentlayersA, p=Dengue_Americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
dengue_americas2.maxent

#plotting dengue americas reg=1.25, no cv
dengue_americas2.maps<-predict(
  
  object=dengue_americas2.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_americas2.maps)
points(Dengue_Americas_subset, pch=19, cex=0.1)

writeRaster(dengue_americas2.maps, filename ="Dam.tif")

#plotting dengue predicted from eurasia on americas 1.25 with no cv
dengue_americas_pred1.maps<-predict(
  
  object=DE3.1.maxent,
  x=environmentlayersA,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(dengue_americas_pred1.maps)
points(Dengue_Americas_subset, pch=19, cex=0.1)

writeRaster(dengue_americas_pred1.maps, filename ="Dam_pr.tif")

#extracting AUC from projected, using function projAUC
AUC_dengue_americas<-projAUC(test.coords=Dengue_Americas_subset, proj.rast=dengue_americas_pred1.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_dengue_americas


##correlation
dengueAm<-sampleRandom(dengue_americas2.maps, 10000, xy=T)
dengueAm_ss<-subset(dengueAm, select=c(x,y))

dengueAmpred<-sampleRandom(dengue_americas_pred1.maps, 10000, xy=T)
dengueAmpred_ss<-subset(dengueAmpred, select=c(x,y))

dengueamericasvalues<-extract(environmentlayersA, dengueAm_ss)
dengueamericaspredvalues<-extract(environmentlayersA, dengueAmpred_ss)
dengue_americas_corvalues<-rbind(dengueamericasvalues, dengueamericaspredvalues)

dengueamericas_correlation1<-cor.test(dengueamericasvalues, dengueamericaspredvalues)
dengueamericas_correlation1
