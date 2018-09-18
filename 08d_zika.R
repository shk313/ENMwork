#ZIKA
#Environment layers africa
Af_Zik_bio1<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio2.tif")
Af_Zik_bio2<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio4.tif")
Af_Zik_bio3<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio8.tif")
Af_Zik_bio4<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio9.tif")
Af_Zik_bio5<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio15.tif")
Af_Zik_bio6<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio16.tif")
Af_Zik_bio7<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio17.tif")
Af_Zik_bio8<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio18.tif")
Af_Zik_bio9<-raster("E:/ENMs/Climate Data/Zika/zika/africa/bio19.tif")
Af_Zik_lc3<-raster("E:/ENMs/Climate Data/Zika/zika/africa/flood.tif")
Af_Zik_lc2<-raster("E:/ENMs/Climate Data/Zika/zika/africa/farm.tif")
Af_Zik_lc1<-raster("E:/ENMs/Climate Data/Zika/zika/africa/urban.tif")

environmentlayersAf_Zik<-stack(Af_Zik_bio1, Af_Zik_bio2, Af_Zik_bio3, Af_Zik_bio4, Af_Zik_bio5, Af_Zik_bio6, Af_Zik_bio7, Af_Zik_bio8, Af_Zik_bio9, Af_Zik_lc3, Af_Zik_lc2, Af_Zik_lc1)


#occurence data
Zika_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Africa_THIN.csv", header = T)
Zika_Africa_subset<-subset(Zika_Africa, select = c(decimalLongitude, decimalLatitude))

#Zika model africa
Zika_Africa.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Africa.maxent

Z_Africa.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Z_Africa.maxent


#plotting Zika Africa
Zika_Africa.maps<-predict(
  
  object=Zika_Africa.maxent,
  x=environmentlayersAf_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Africa.maps)
plot(mean(Zika_Africa.maps))
points(Zika_Africa_subset, pch=19, cex=0.1)

Z_Africa.maps<-predict(
  
  object=Z_Africa.maxent,
  x=environmentlayersAf_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_Africa.maps)
points(Zika_Africa_subset, pch=19, cex=0.1)


#--------------------------------------------------------------------------
#--------------------------------------------------------------------------

#changing betamultiplier: 0.25
ZA1.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA1.maxent

#changing betamultiplier: 0.75
ZA2.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA2.maxent

#changing betamultiplier: 1.25
ZA3.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA3.maxent

#changing betamultiplier: 1.75
ZA4.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA4.maxent

#1.75 without CV
ZA4.1.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA4.1.maxent

#changing betamultiplier: 2.25
ZA5.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA5.maxent

#changing betamultiplier: 2.75
ZA6.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA6.maxent

#changing betamultiplier: 3.25
ZA7.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA7.maxent

#changing betamultiplier: 3.75
ZA8.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA8.maxent

#changing betamultiplier: 4.25
ZA9.maxent<-maxent(x=environmentlayersAf_Zik, p=Zika_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
ZA9.maxent

#--------------------------------------------------------------------------

#Map Zika on Africa with 1.75 reg parameter, first with CV then without.

#plotting Zika Africa, 1.75 reg parameter
Zika_Africa1.maps<-predict(
  
  object=ZA4.maxent,
  x=environmentlayersAf_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Africa1.maps)
plot(mean(Zika_Africa1.maps))
points(Zika_Africa_subset, pch=19, cex=0.1)

#plotting Zika Africa, 1.75 reg parameter without CV
Zika_Africa2.maps<-predict(
  
  object=ZA4.1.maxent,
  x=environmentlayersAf_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Africa2.maps)
points(Zika_Africa_subset, pch=19, cex=0.1)

writeRaster(Zika_Africa2.maps, filename="zikaf.tif")

#--------------------------------------------------------------------------
#Environment layers Eurasia
Eur_Zik_bio1<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio2.tif")
Eur_Zik_bio2<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio4.tif")
Eur_Zik_bio3<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio8.tif")
Eur_Zik_bio4<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio9.tif")
Eur_Zik_bio5<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio15.tif")
Eur_Zik_bio6<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio16.tif")
Eur_Zik_bio7<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio17.tif")
Eur_Zik_bio8<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio18.tif")
Eur_Zik_bio9<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/bio19.tif")
Eur_Zik_lc3<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/flood.tif")
Eur_Zik_lc2<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/farm.tif")
Eur_Zik_lc1<-raster("E:/ENMs/Climate Data/Zika/zika/eurasia/urban.tif")

environmentlayersEur_Zik<-stack(Eur_Zik_bio1, Eur_Zik_bio2, Eur_Zik_bio3, Eur_Zik_bio4, Eur_Zik_bio5, Eur_Zik_bio6, Eur_Zik_bio7, Eur_Zik_bio8, Eur_Zik_bio9, Eur_Zik_lc3, Eur_Zik_lc2, Eur_Zik_lc1)

##occurrence data
Zika_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Eurasia_THIN.csv", header = T)
Zika_Eurasia_subset<-subset(Zika_Eurasia, select = c(decimalLongitude, decimalLatitude))


#Zika model Eurasia
Zika_Eurasia.maxent<-maxent(x=environmentlayersEur_Zik, p=Zika_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Eurasia.maxent

Z_Eurasia.maxent<-maxent(x=environmentlayersEur_Zik, p=Zika_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Z_Eurasia.maxent

#plotting Zika Eurasia
Zika_Eurasia.maps<-predict(
  
  object=Zika_Eurasia.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Eurasia.maps)
plot(mean(Zika_Eurasia.maps))
points(Zika_Eurasia_subset, pch=19, cex=0.1)

Z_Eurasia.maps<-predict(
  
  object=Z_Eurasia.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_Eurasia.maps)
points(Zika_Eurasia_subset, pch=19, cex=0.1)


#plotting Zika predicted from Africa on Eurasia
Zika_Eurasia_prediction.maps<-predict(
  
  object=Zika_Africa.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Eurasia_prediction.maps)
plot(mean(Zika_Eurasia_prediction.maps))
points(Zika_Eurasia_subset, pch=19, cex=0.1)

Z_Eurasia_prediction.maps<-predict(
  
  object=Z_Africa.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_Eurasia_prediction.maps)
points(Zika_Eurasia_subset, pch=19, cex=0.1)


#Zika model Eurasia with 1.75 reg parameter
Zika_Eurasia1.maxent<-maxent(x=environmentlayersEur_Zik, p=Zika_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Eurasia1.maxent

#Zika model Eurasia with 1.75 reg parameter without CV
Zika_Eurasia2.maxent<-maxent(x=environmentlayersEur_Zik, p=Zika_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Eurasia2.maxent

#plotting Zika on Eurasia 1.75 no cv
Zika_Eurasia_prediction1.maps<-predict(
  
  object=Zika_Eurasia2.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Eurasia_prediction1.maps)
points(Zika_Eurasia_subset, pch=19, cex=0.1)

writeRaster(Zika_Eurasia_prediction1.maps, filename="zikaeur.tif")

#plotting Zika predicted from Africa on Eurasia 1.75 no cv
Zika_Eurasia_prediction2.maps<-predict(
  
  object=ZA4.1.maxent,
  x=environmentlayersEur_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Eurasia_prediction2.maps)
points(Zika_Eurasia_subset, pch=19, cex=0.1)

writeRaster(Zika_Eurasia_prediction2.maps, filename = "zikaeur_pr.tif")

#extract AUC from projection
AUC_zika_eurasia<-projAUC(test.coords=Zika_Eurasia_subset, proj.rast=Zika_Eurasia_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_zika_eurasia

#correlation test

#randomly select 10000 locatoins and pull out environment values for Eurasia and Eurasia predicted
#Using correlation function, compare values.
zikaeur<-sampleRandom(Zika_Eurasia_prediction1.maps, 10000, xy=T)
zikaeur_ss<-subset(zikaeur, select=c(x,y))

zikaeurpred<-sampleRandom(Zika_Eurasia_prediction2.maps, 10000, xy=T)
zikaeurpred_ss<-subset(zikaeurpred, select=c(x,y))

zikaeurvalues<-extract(environmentlayersEur_Zik, zikaeur_ss)
zikaeurpredvalues<-extract(environmentlayersEur_Zik, zikaeurpred_ss)

zika_eurasia_corvalues<-rbind(zikaeurvalues, zikaeurpredvalues)

zikaeurasia_correlation<-cor.test(zikaeurvalues, zikaeurpredvalues)
zikaeurasia_correlation

#--------------------------------------------------------------------------
#Environment layers americas
Am_Zik_bio1<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio2.tif")
Am_Zik_bio2<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio4.tif")
Am_Zik_bio3<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio8.tif")
Am_Zik_bio4<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio9.tif")
Am_Zik_bio5<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio15.tif")
Am_Zik_bio6<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio16.tif")
Am_Zik_bio7<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio17.tif")
Am_Zik_bio8<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio18.tif")
Am_Zik_bio9<-raster("E:/ENMs/Climate Data/Zika/zika/americas/bio19.tif")
Am_Zik_lc3<-raster("E:/ENMs/Climate Data/Zika/zika/americas/flood.tif")
Am_Zik_lc2<-raster("E:/ENMs/Climate Data/Zika/zika/americas/farm.tif")
Am_Zik_lc1<-raster("E:/ENMs/Climate Data/Zika/zika/americas/urban.tif")

environmentlayersAm_Zik<-stack(Am_Zik_bio1, Am_Zik_bio2, Am_Zik_bio3, Am_Zik_bio4, Am_Zik_bio5, Am_Zik_bio6, Am_Zik_bio7, Am_Zik_bio8, Am_Zik_bio9, Am_Zik_lc3, Am_Zik_lc2, Am_Zik_lc1)

##occurrence data
Zika_americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Americas_THIN.csv", header = T)
Zika_americas_subset<-subset(Zika_americas, select = c(decimalLongitude, decimalLatitude))


#Zika model americas
Zika_americas.maxent<-maxent(x=environmentlayersAm_Zik, p=Zika_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_americas.maxent

Z_americas.maxent<-maxent(x=environmentlayersAm_Zik, p=Zika_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Z_americas.maxent

#plotting Zika americas
Zika_americas.maps<-predict(
  
  object=Zika_americas.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_americas.maps)
plot(mean(Zika_americas.maps))
points(Zika_americas_subset, pch=19, cex=0.1)

Z_americas.maps<-predict(
  
  object=Z_americas.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_americas.maps)
points(Zika_americas_subset, pch=19, cex=0.1)


#plotting Zika predicted from Africa on americas
Zika_americas_prediction.maps<-predict(
  
  object=Zika_Africa.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_americas_prediction.maps)
plot(mean(Zika_americas_prediction.maps))
points(Zika_americas_subset, pch=19, cex=0.1)

Z_americas_prediction.maps<-predict(
  
  object=Z_Africa.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_americas_prediction.maps)
points(Zika_americas_subset, pch=19, cex=0.1)

#Zika model Americas with 1.75 reg parameter
Zika_Americas1.maxent<-maxent(x=environmentlayersAm_Zik, p=Zika_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Americas1.maxent

#Zika model Americas with 1.75 reg parameter without CV
Zika_Americas2.maxent<-maxent(x=environmentlayersAm_Zik, p=Zika_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Americas2.maxent

#plotting Zika on Americas 1.75 no cv
Zika_Americas_1.maps<-predict(
  
  object=Zika_Americas2.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Americas_1.maps)
points(Zika_americas_subset, pch=19, cex=0.1)

writeRaster(Zika_Americas_1.maps, filename = "zikaam.tif")

#plotting Zika predicted from Africa on Americas 1.75 no cv
Zika_Americas_prediction1.maps<-predict(
  
  object=ZA4.1.maxent,
  x=environmentlayersAm_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Americas_prediction1.maps)
points(Zika_americas_subset, pch=19, cex=0.1)

writeRaster(Zika_Americas_prediction1.maps, filename = "zikaam_pr.tif")

#extract AUC from projection
AUC_zika_americas<-projAUC(test.coords=Zika_americas_subset, proj.rast=Zika_Americas_prediction1.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_zika_americas

#correlation test

#randomly select 10000 locatoins and pull out environment values for Eurasia and Eurasia predicted
#Using correlation function, compare values.
zikaAm<-sampleRandom(Zika_Americas_1.maps, 10000, xy=T)
zikaAm_ss<-subset(zikaAm, select=c(x,y))

zikaAmpred<-sampleRandom(Zika_Americas_prediction1.maps, 10000, xy=T)
zikaAmpred_ss<-subset(zikaAmpred, select=c(x,y))

zikaAmvalues<-extract(environmentlayersAm_Zik, zikaAm_ss)
zikaAmpredvalues<-extract(environmentlayersAm_Zik, zikaAmpred_ss)

zika_americas_corvalues<-rbind(zikaAmvalues, zikaAmpredvalues)

zikaamericas_correlation<-cor.test(zikaAmvalues, zikaAmpredvalues)
zikaamericas_correlation

#--------------------------------------------------------------------------
#Environment layers oceania
O_Zik_bio1<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio2.tif")
O_Zik_bio2<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio4.tif")
O_Zik_bio3<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio8.tif")
O_Zik_bio4<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio9.tif")
O_Zik_bio5<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio15.tif")
O_Zik_bio6<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio16.tif")
O_Zik_bio7<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio17.tif")
O_Zik_bio8<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio18.tif")
O_Zik_bio9<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio19.tif")
O_Zik_lc3<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/flood.tif")
O_Zik_lc2<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/farm.tif")
O_Zik_lc1<-raster("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/urban.tif")

environmentlayersO_Zik<-stack(O_Zik_bio1, O_Zik_bio2, O_Zik_bio3, O_Zik_bio4, O_Zik_bio5, O_Zik_bio6, O_Zik_bio7, O_Zik_bio8, O_Zik_bio9, O_Zik_lc3, O_Zik_lc2, O_Zik_lc1)

##occurrence data
Zika_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Oceania_THIN.csv", header = T)
Zika_oceania_subset<-subset(Zika_oceania, select = c(decimalLongitude, decimalLatitude))


#Zika model oceania
Zika_oceania.maxent<-maxent(x=environmentlayersO_Zik, p=Zika_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_oceania.maxent

Z_oceania.maxent<-maxent(x=environmentlayersO_Zik, p=Zika_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Z_oceania.maxent

#plotting Zika oceania
Zika_oceania.maps<-predict(
  
  object=Zika_oceania.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_oceania.maps)
plot(mean(Zika_oceania.maps))
points(Zika_oceania_subset, pch=19, cex=0.1)

Z_oceania.maps<-predict(
  
  object=Z_oceania.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_oceania.maps)
points(Zika_oceania_subset, pch=19, cex=0.1)


#plotting Zika predicted from Africa on oceania
Zika_oceania_prediction.maps<-predict(
  
  object=Zika_Africa.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_oceania_prediction.maps)
plot(mean(Zika_oceania_prediction.maps))
points(Zika_oceania_subset, pch=19, cex=0.1)

Z_oceania_prediction.maps<-predict(
  
  object=Z_Africa.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Z_oceania_prediction.maps)
points(Zika_oceania_subset, pch=19, cex=0.1)

#Zika model Oceania with 1.75 reg parameter
Zika_Oceania1.maxent<-maxent(x=environmentlayersO_Zik, p=Zika_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Oceania1.maxent

#Zika model Eurasia with 1.75 reg parameter without CV
Zika_Oceania2.maxent<-maxent(x=environmentlayersO_Zik, p=Zika_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
Zika_Oceania2.maxent

#plotting Zika on Oceania 1.75 no cv
Zika_Oceania_1.maps<-predict(
  
  object=Zika_Oceania2.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Oceania_1.maps)
points(Zika_oceania_subset, pch=19, cex=0.1)

writeRaster(Zika_Oceania_1.maps, filename = "zikaoce.tif")

#plotting Zika predicted from Africa on Oceania 1.75 no cv
Zika_Oceania_prediction1.maps<-predict(
  
  object=ZA4.1.maxent,
  x=environmentlayersO_Zik,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(Zika_Oceania_prediction1.maps)
points(Zika_oceania_subset, pch=19, cex=0.1)

writeRaster(Zika_Oceania_prediction1.maps, filename = "zikaoce_pr.tif")

#extract AUC from projection
AUC_zika_oceania<-projAUC(test.coords=Zika_oceania_subset, proj.rast=Zika_Oceania_prediction1.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_zika_oceania

#correlation test

#randomly select 10000 locatoins and pull out environment values for Eurasia and Eurasia predicted
#Using correlation function, compare values.
zikaoc<-sampleRandom(Zika_Oceania_1.maps, 10000, xy=T)
zikaoc_ss<-subset(zikaoc, select=c(x,y))

zikaocpred<-sampleRandom(Zika_Oceania_prediction1.maps, 10000, xy=T)
zikaocpred_ss<-subset(zikaocpred, select=c(x,y))

zikaocvalues<-extract(environmentlayersO_Zik, zikaoc_ss)
zikaocpredvalues<-extract(environmentlayersO_Zik, zikaocpred_ss)

zika_oceania_corvalues<-rbind(zikaocvalues, zikaocpredvalues)

zikaoceania_correlation<-cor.test(zikaocvalues, zikaocpredvalues)
zikaoceania_correlation

