library(dismo)
library(rJava)
#Chikungunya
#Environment layers africa

Af_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio2.tif")
Af_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio4.tif")
Af_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio8.tif")
Af_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio9.tif")
Af_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio15.tif")
Af_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio16.tif")
Af_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio17.tif")
Af_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio18.tif")
Af_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio19.tif")
Af_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/flood.tif")
Af_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/farm.tif")
Af_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/urban.tif")

environmentlayersAf_chik<-stack(Af_chik_bio1, Af_chik_bio2, Af_chik_bio3, Af_chik_bio4, Af_chik_bio5, Af_chik_bio6, Af_chik_bio7, Af_chik_bio8, Af_chik_bio9, Af_chik_lc3, Af_chik_lc1, Af_chik_lc2)


#occurence data
chik_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Africa_THIN.csv", header = T)
chik_Africa_subset<-subset(chik_Africa, select = c(decimalLongitude, decimalLatitude))

#chik model africa
chik_Africa.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_Africa.maxent

chik_Af.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_Af.maxent

#plotting chik Africa
chik_Africa.maps<-predict(
  
  object=chik_Africa.maxent,
  x=environmentlayersAf_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Africa.maps)
plot(mean(chik_Africa.maps))
points(chik_Africa_subset, pch=19, cex=0.1)

chik_Af.maps<-predict(
  
  object=chik_Af.maxent,
  x=environmentlayersAf_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Af.maps)
points(chik_Africa_subset, pch=19, cex=0.1)

#changing betamultiplier: 0.25
Chik1.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik1.maxent

#changing betamultiplier: 0.75
Chik2.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik2.maxent

#changing betamultiplier: 1.25
Chik3.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik3.maxent

#changing betamultiplier: 1.75
Chik4.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik4.maxent

#changing betamultiplier: 2.25
Chik5.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik5.maxent

#changing betamultiplier: 2.25 without CV
Chik5.1.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik5.1.maxent

#changing betamultiplier: 2.75
Chik6.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik6.maxent

#changing betamultiplier: 3.25
Chik7.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik7.maxent

#changing betamultiplier: 3.75
Chik8.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik8.maxent

#changing betamultiplier: 4.25
Chik9.maxent<-maxent(x=environmentlayersAf_chik, p=chik_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik9.maxent

#Map Chik on Africa with 2.25 reg parameter, first with CV then without.

#plotting Chik Africa, 2.25 reg parameter
Chik_Africa1.maps<-predict(
  
  object=Chik5.maxent,
  x=environmentlayersAf_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Africa1.maps)
plot(mean(Chik_Africa1.maps))
points(chik_Africa_subset, pch=19, cex=0.1)

#plotting Chik Africa, 2.25 reg parameter without CV
Chik_Africa2.maps<-predict(
  
  object=Chik5.1.maxent,
  x=environmentlayersAf_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Africa2.maps)
points(chik_Africa_subset, pch=19, cex=0.1)

writeRaster(Chik_Africa2.maps, filename="chikaf.tif", overwrite=TRUE)

#--------------------------------------------------------------------------
#Environment layers Eurasia
Eur_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio2.tif")
Eur_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio4.tif")
Eur_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio8.tif")
Eur_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio9.tif")
Eur_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio15.tif")
Eur_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio16.tif")
Eur_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio17.tif")
Eur_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio18.tif")
Eur_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio19.tif")
Eur_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/flood.tif")
Eur_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/farm.tif")
Eur_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/urban.tif")

environmentlayersEur_chik<-stack(Eur_chik_bio1, Eur_chik_bio2, Eur_chik_bio3, Eur_chik_bio4, Eur_chik_bio5, Eur_chik_bio6, Eur_chik_bio7, Eur_chik_bio8, Eur_chik_bio9, Eur_chik_lc3, Eur_chik_lc2, Eur_chik_lc1)

##occurrence data
chik_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Eurasia_THIN.csv", header = T)
chik_Eurasia_subset<-subset(chik_Eurasia, select = c(decimalLongitude, decimalLatitude))

#--------------------------------------------------------------------------

#chik model Eurasia
chik_Eurasia.maxent<-maxent(x=environmentlayersEur_chik, p=chik_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_Eurasia.maxent

chik_Eur.maxent<-maxent(x=environmentlayersEur_chik, p=chik_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_Eur.maxent

#plotting chik Eurasia
chik_Eurasia.maps<-predict(
  
  object=chik_Eurasia.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Eurasia.maps)
plot(mean(chik_Eurasia.maps))
points(chik_Eurasia_subset, pch=19, cex=0.1)

chik_Eur.maps<-predict(
  
  object=chik_Eur.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Eur.maps)
points(chik_Eurasia_subset, pch=19, cex=0.1)


#plotting chik predicted from Africa on Eurasia
chik_Eurasia_prediction.maps<-predict(
  
  object=chik_Africa.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Eurasia_prediction.maps)
plot(mean(chik_Eurasia_prediction.maps))
points(chik_Eurasia_subset, pch=19, cex=0.1)

chik_Eur_prediction.maps<-predict(
  
  object=chik_Af.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_Eur_prediction.maps)
points(chik_Eurasia_subset, pch=19, cex=0.1)

#Chik model Eurasia with 2.25 reg parameter
Chik_Eurasia1.maxent<-maxent(x=environmentlayersEur_chik, p=chik_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Eurasia1.maxent

#Chik model Eurasia with 2.25 reg parameter without CV
Chik_Eurasia2.maxent<-maxent(x=environmentlayersEur_chik, p=chik_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Eurasia2.maxent

#plotting Chik on Eurasia 2.25 no cv
Chik_Eurasia_prediction1.maps<-predict(
  
  object=Chik_Eurasia2.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Eurasia_prediction1.maps)
points(chik_Eurasia_subset, pch=19, cex=0.1)

writeRaster(Chik_Eurasia_prediction1.maps, filename="chikeur.tif", overwrite = TRUE)

#plotting Chik predicted from Africa on Eurasia 2.25 no cv
Chik_Eurasia_prediction2.maps<-predict(
  
  object=Chik5.1.maxent,
  x=environmentlayersEur_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Eurasia_prediction2.maps)
points(chik_Eurasia_subset, pch=19, cex=0.1)

writeRaster(Chik_Eurasia_prediction2.maps, filename="chikeur_pr.tif", overwrite = TRUE)

#extract AUC from projection
AUC_chik_eurasia<-projAUC(test.coords=chik_Eurasia_subset, proj.rast=Chik_Eurasia_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_chik_eurasia

#correlation test

#randomly select 10000 locatoins and pull out environment values for Eurasia and Eurasia predicted
#Using correlation function, compare values.
chikeur<-sampleRandom(Chik_Eurasia_prediction1.maps, 10000, xy=T)
chikeur_ss<-subset(chikeur, select=c(x,y))

chikeurpred<-sampleRandom(Chik_Eurasia_prediction2.maps, 10000, xy=T)
chikeurpred_ss<-subset(chikeurpred, select=c(x,y))

chikeurvalues<-extract(environmentlayersEur_chik, chikeur_ss)
chikeurpredvalues<-extract(environmentlayersEur_chik, chikeurpred_ss)

chik_eurasia_corvalues<-rbind(chikeurvalues, chikeurpredvalues)

chikeurasia_correlation<-cor.test(chikeurvalues, chikeurpredvalues)
chikeurasia_correlation


#--------------------------------------------------------------------------
#Environment layers americas

Am_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio2.tif")
Am_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio4.tif")
Am_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio8.tif")
Am_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio9.tif")
Am_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio15.tif")
Am_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio16.tif")
Am_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio17.tif")
Am_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio18.tif")
Am_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio19.tif")
Am_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/flood.tif")
Am_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/farm.tif")
Am_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/urban.tif")

environmentlayersAm_chik<-stack(Am_chik_bio1, Am_chik_bio2, Am_chik_bio3, Am_chik_bio4, Am_chik_bio5, Am_chik_bio6, Am_chik_bio7, Am_chik_bio8, Am_chik_bio9, Am_chik_lc3, Am_chik_lc2, Am_chik_lc1)


##occurrence data
chik_americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Americas_THIN.csv", header = T)
chik_americas_subset<-subset(chik_americas, select = c(decimalLongitude, decimalLatitude))


#chik model americas
chik_americas.maxent<-maxent(x=environmentlayersAm_chik, p=chik_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_americas.maxent

chik_am.maxent<-maxent(x=environmentlayersAm_chik, p=chik_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_am.maxent

#plotting chik americas
chik_americas.maps<-predict(
  
  object=chik_americas.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_americas.maps)
plot(mean(chik_americas.maps))
points(chik_americas_subset, pch=19, cex=0.1)

chik_am.maps<-predict(
  
  object=chik_am.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_am.maps)
points(chik_americas_subset, pch=19, cex=0.1)


#plotting chik predicted from Africa on americas
chik_americas_prediction.maps<-predict(
  
  object=chik_Africa.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_americas_prediction.maps)
plot(mean(chik_americas_prediction.maps))
points(chik_americas_subset, pch=19, cex=0.1)

chik_am_prediction.maps<-predict(
  
  object=chik_Af.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_am_prediction.maps)
points(chik_americas_subset, pch=19, cex=0.1)

#Chik model Eurasia with 2.25 reg parameter
Chik_Americas1.maxent<-maxent(x=environmentlayersAm_chik, p=chik_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Americas1.maxent

#Chik model Eurasia with 2.25 reg parameter without CV
Chik_Americas2.maxent<-maxent(x=environmentlayersAm_chik, p=chik_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Americas2.maxent

#plotting Chik on Americas 2.25 no cv
Chik_Americas_prediction1.maps<-predict(
  
  object=Chik_Americas2.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Americas_prediction1.maps)
points(chik_americas_subset, pch=19, cex=0.1)

writeRaster(Chik_Americas_prediction1.maps, filename="chikam.tif", overwrite = TRUE)

#plotting Chik predicted from Africa on Americas 2.25 no cv
Chik_Americas_prediction2.maps<-predict(
  
  object=Chik5.1.maxent,
  x=environmentlayersAm_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Americas_prediction2.maps)
points(chik_americas_subset, pch=19, cex=0.1)

writeRaster(Chik_Americas_prediction2.maps, filename="chikam_pr.tif", overwrite = TRUE)

#extract AUC from projection
AUC_chik_americas<-projAUC(test.coords=chik_americas_subset, proj.rast=Chik_Americas_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_chik_americas

#correlation test

#randomly select 10000 locatoins and pull out environment values for americas and americas predicted
#Using correlation function, compare values.
chikam<-sampleRandom(Chik_Americas_prediction1.maps, 10000, xy=T)
chikam_ss<-subset(chikam, select=c(x,y))

chikampred<-sampleRandom(Chik_Americas_prediction2.maps, 10000, xy=T)
chikampred_ss<-subset(chikampred, select=c(x,y))

chikamvalues<-extract(environmentlayersAm_chik, chikam_ss)
chikampredvalues<-extract(environmentlayersAm_chik, chikampred_ss)

chik_americas_corvalues<-rbind(chikamvalues, chikampredvalues)

chikamericas_correlation<-cor.test(chikamvalues, chikampredvalues)
chikamericas_correlation


#--------------------------------------------------------------------------
#Environment layers oceania

O_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio2.tif")
O_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio4.tif")
O_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio8.tif")
O_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio9.tif")
O_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio15.tif")
O_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio16.tif")
O_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio17.tif")
O_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio18.tif")
O_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio19.tif")
O_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/flood.tif")
O_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/farm.tif")
O_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/urban.tif")

environmentlayersO_chik<-stack(O_chik_bio1, O_chik_bio2, O_chik_bio3, O_chik_bio4, O_chik_bio5, O_chik_bio6, O_chik_bio7, O_chik_bio8, O_chik_bio9, O_chik_lc3, O_chik_lc2, O_chik_lc1)

##occurrence data
chik_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Oceania_THIN.csv", header = T)
chik_oceania_subset<-subset(chik_oceania, select = c(decimalLongitude, decimalLatitude))


#chik model oceania
chik_oceania.maxent<-maxent(x=environmentlayersO_chik, p=chik_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_oceania.maxent

chik_oce.maxent<-maxent(x=environmentlayersO_chik, p=chik_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
chik_oce.maxent


#plotting chik oceania
chik_oceania.maps<-predict(
  
  object=chik_oceania.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_oceania.maps)
plot(mean(chik_oceania.maps))
points(chik_oceania_subset, pch=19, cex=0.1)

chik_oce.maps<-predict(
  
  object=chik_oce.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_oce.maps)
points(chik_oceania_subset, pch=19, cex=0.1)


#plotting chik predicted from Africa on oceania
chik_oceania_prediction.maps<-predict(
  
  object=chik_Africa.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_oceania_prediction.maps)
plot(mean(chik_oceania_prediction.maps))
points(chik_oceania_subset, pch=19, cex=0.1)

chik_oce_prediction.maps<-predict(
  
  object=chik_Af.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(chik_oce_prediction.maps)
points(chik_oceania_subset, pch=19, cex=0.1)


#Chik model Oceania with 2.25 reg parameter
Chik_Oceania1.maxent<-maxent(x=environmentlayersO_chik, p=chik_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Oceania1.maxent

#Chik model Oceania with 2.25 reg parameter without CV
Chik_Oceania2.maxent<-maxent(x=environmentlayersO_chik, p=chik_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Chik_Oceania2.maxent

#plotting Chik on Americas 2.25 no cv
Chik_Oceania_prediction1.maps<-predict(
  
  object=Chik_Oceania2.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Oceania_prediction1.maps)
points(chik_oceania_subset, pch=19, cex=0.1)

writeRaster(Chik_Oceania_prediction1.maps, filename="chikoce.tif")

#plotting Chik predicted from Africa on Americas 2.25 no cv
Chik_Oceania_prediction2.maps<-predict(
  
  object=Chik5.1.maxent,
  x=environmentlayersO_chik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Chik_Oceania_prediction2.maps)
points(chik_oceania_subset, pch=19, cex=0.1)

writeRaster(Chik_Oceania_prediction2.maps, filename="chikoce_pr.tif", overwrite = TRUE)

#extract AUC from projection
AUC_chik_oceania<-projAUC(test.coords=chik_oceania_subset, proj.rast=Chik_Oceania_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_chik_oceania

#correlation test

#randomly select 10000 locatoins and pull out environment values for americas and americas predicted
#Using correlation function, compare values.
chikO<-sampleRandom(Chik_Oceania_prediction1.maps, 10000, xy=T)
chikO_ss<-subset(chikO, select=c(x,y))

chikOpred<-sampleRandom(Chik_Oceania_prediction2.maps, 10000, xy=T)
chikOpred_ss<-subset(chikOpred, select=c(x,y))

chikOvalues<-extract(environmentlayersO_chik, chikO_ss)
chikOpredvalues<-extract(environmentlayersO_chik, chikOpred_ss)

chik_oceania_corvalues<-rbind(chikOvalues, chikOpredvalues)

chikoceania_correlation<-cor.test(chikOvalues, chikOpredvalues)
chikoceania_correlation
