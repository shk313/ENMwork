#WNV
#Environment layers africa
Af_WNV_bio1<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio2.tif")
Af_WNV_bio2<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio4.tif")
Af_WNV_bio3<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio8.tif")
Af_WNV_bio4<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio9.tif")
Af_WNV_bio5<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio15.tif")
Af_WNV_bio6<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio16.tif")
Af_WNV_bio7<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio17.tif")
Af_WNV_bio8<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio18.tif")
Af_WNV_bio9<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/bio19.tif")
Af_WNV_lc3<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/flood.tif")
Af_WNV_lc2<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/farm.tif")
Af_WNV_lc1<-raster("E:/ENMs/Climate Data/WNV/wnv/africa/urban.tif")

environmentlayersAf_WNV<-stack(Af_WNV_bio1, Af_WNV_bio2, Af_WNV_bio3, Af_WNV_bio4, Af_WNV_bio5, Af_WNV_bio6, Af_WNV_bio7, Af_WNV_bio8, Af_WNV_bio9, Af_WNV_lc3, Af_WNV_lc2, Af_WNV_lc1)


#occurence data
WNV_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Africa_THIN.csv", header = T)
WNV_Africa_subset<-subset(WNV_Africa, select = c(decimalLongitude, decimalLatitude))

#WNV model africa
WNV_Africa.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_Africa.maxent

WN_Africa.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WN_Africa.maxent


#plotting WNV Africa
WNV_Africa.maps<-predict(
  
  object=WNV_Africa.maxent,
  x=environmentlayersAf_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_Africa.maps)
plot(mean(WNV_Africa.maps))
points(WNV_Africa_subset, pch=19, cex=0.1)

WN_Africa.maps<-predict(
  
  object=WN_Africa.maxent,
  x=environmentlayersAf_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_Africa.maps)
points(WNV_Africa_subset, pch=19, cex=0.1)

#changing betamultiplier: 0.25
WNV1.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV1.maxent

#changing betamultiplier: 0.75
WNV2.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV2.maxent

#changing betamultiplier: 1.25
WNV3.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV3.maxent

#changing betamultiplier: 1.75
WNV4.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV4.maxent

#changing betamultiplier: 1.75 no cv
WNV4.1.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV4.1.maxent

#changing betamultiplier: 2.25
WNV5.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV5.maxent

#changing betamultiplier: 2.75
WNV6.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV6.maxent

#changing betamultiplier: 3.25
WNV7.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV7.maxent

#changing betamultiplier: 3.75
WNV8.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV8.maxent

#changing betamultiplier: 4.25
WNV9.maxent<-maxent(x=environmentlayersAf_WNV, p=WNV_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV9.maxent

#plotting WNV Africa, 1.75 reg parameter
WNV_Africa1.maps<-predict(
  
  object=WNV4.maxent,
  x=environmentlayersAf_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(CWNV_Africa1.maps)
plot(mean(WNV_Africa1.maps))
points(WNV_Africa_subset, pch=19, cex=0.1)

#plotting WNV Africa, 1.75 reg parameter without CV
WNV_Africa2.maps<-predict(
  
  object=WNV4.1.maxent,
  x=environmentlayersAf_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_Africa2.maps)
points(WNV_Africa_subset, pch=19, cex=0.1)

writeRaster(WNV_Africa2.maps,filename="wnvaf.tif")

#--------------------------------------------------------------------------
#Environment layers Eurasia
Eur_WNV_bio1<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio2.tif")
Eur_WNV_bio2<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio4.tif")
Eur_WNV_bio3<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio8.tif")
Eur_WNV_bio4<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio9.tif")
Eur_WNV_bio5<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio15.tif")
Eur_WNV_bio6<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio16.tif")
Eur_WNV_bio7<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio17.tif")
Eur_WNV_bio8<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio18.tif")
Eur_WNV_bio9<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/bio19.tif")
Eur_WNV_lc3<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/flood.tif")
Eur_WNV_lc2<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/farm.tif")
Eur_WNV_lc1<-raster("E:/ENMs/Climate Data/WNV/WNV/eurasia/urban.tif")

environmentlayersEur_WNV<-stack(Eur_WNV_bio1, Eur_WNV_bio2, Eur_WNV_bio3, Eur_WNV_bio4, Eur_WNV_bio5, Eur_WNV_bio6, Eur_WNV_bio7, Eur_WNV_bio8, Eur_WNV_bio9, Eur_WNV_lc3, Eur_WNV_lc2, Eur_WNV_lc1)

##occurrence data
WNV_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Eurasia_THIN.csv", header = T)
WNV_Eurasia_subset<-subset(WNV_Eurasia, select = c(decimalLongitude, decimalLatitude))


#WNV model Eurasia
WNV_Eurasia.maxent<-maxent(x=environmentlayersEur_WNV, p=WNV_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_Eurasia.maxent

WN_Eurasia.maxent<-maxent(x=environmentlayersEur_WNV, p=WNV_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WN_Eurasia.maxent


#plotting WNV Eurasia
WNV_Eurasia.maps<-predict(
  
  object=WNV_Eurasia.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_Eurasia.maps)
plot(mean(WNV_Eurasia.maps))
points(WNV_Eurasia_subset, pch=19, cex=0.1)

WN_Eurasia.maps<-predict(
  
  object=WN_Eurasia.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_Eurasia.maps)
points(WNV_Eurasia_subset, pch=19, cex=0.1)



#plotting WNV predicted from Africa on Eurasia
WNV_Eurasia_prediction.maps<-predict(
  
  object=WNV_Africa.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_Eurasia_prediction.maps)
plot(mean(WNV_Eurasia_prediction.maps))
points(WNV_Eurasia_subset, pch=19, cex=0.1)

WN_Eurasia_prediction.maps<-predict(
  
  object=WN_Africa.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_Eurasia_prediction.maps)
points(WNV_Eurasia_subset, pch=19, cex=0.1)

#WNV model eurasia with 1.75 reg parameter
WNV_eurasia1.maxent<-maxent(x=environmentlayersEur_WNV, p=WNV_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_eurasia1.maxent

#WNV model eurasia with 1.75 reg parameter without CV
WNV_eurasia2.maxent<-maxent(x=environmentlayersEur_WNV, p=WNV_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_eurasia2.maxent

#plotting WNV on eurasia 1.75 no cv
WNV_eurasia_prediction1.maps<-predict(
  
  object=WNV_eurasia2.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_eurasia_prediction1.maps)
points(WNV_Eurasia_subset, pch=19, cex=0.1)

writeRaster(WNV_eurasia_prediction1.maps,filename="wnveur1.tif")
writeRaster(WNV_eurasia_prediction2.maps,filename="wnveur_pr.tif")

#plotting WNV predicted from Africa on eurasia 1.75 no cv
WNV_eurasia_prediction2.maps<-predict(
  
  object=WNV4.1.maxent,
  x=environmentlayersEur_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_eurasia_prediction2.maps)
points(WNV_Eurasia_subset, pch=19, cex=0.1)

#extract AUC from projection
AUC_WNV_eurasia<-projAUC(test.coords=WNV_Eurasia_subset, proj.rast=WNV_eurasia_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_WNV_eurasia

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
WNVeur<-sampleRandom(WNV_eurasia_prediction1.maps, 10000, xy=T)
WNVeur_ss<-subset(WNVeur, select=c(x,y))

WNVeurpred<-sampleRandom(WNV_eurasia_prediction2.maps, 10000, xy=T)
WNVeurpred_ss<-subset(WNVeurpred, select=c(x,y))

WNVeurvalues<-extract(environmentlayersEur_WNV, WNVeur_ss)
WNVeurpredvalues<-extract(environmentlayersEur_WNV, WNVeurpred_ss)

WNV_eurasia_corvalues<-rbind(WNVeurvalues, WNVeurpredvalues)

WNVeurasia_correlation<-cor.test(WNVeurvalues, WNVeurpredvalues)
WNVeurasia_correlation


#--------------------------------------------------------------------------
#Environment layers americas
Am_WNV_bio1<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio2.tif")
Am_WNV_bio2<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio4.tif")
Am_WNV_bio3<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio8.tif")
Am_WNV_bio4<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio9.tif")
Am_WNV_bio5<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio15.tif")
Am_WNV_bio6<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio16.tif")
Am_WNV_bio7<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio17.tif")
Am_WNV_bio8<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio18.tif")
Am_WNV_bio9<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/bio19.tif")
Am_WNV_lc3<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/flood.tif")
Am_WNV_lc2<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/farm.tif")
Am_WNV_lc1<-raster("E:/ENMs/Climate Data/WNV/WNV/americas/urban.tif")

environmentlayersAm_WNV<-stack(Am_WNV_bio1, Am_WNV_bio2, Am_WNV_bio3, Am_WNV_bio4, Am_WNV_bio5, Am_WNV_bio6, Am_WNV_bio7, Am_WNV_bio8, Am_WNV_bio9, Am_WNV_lc3, Am_WNV_lc2, Am_WNV_lc1)

##occurrence data
WNV_americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Americas_THIN.csv", header = T)
WNV_americas_subset<-subset(WNV_americas, select = c(decimalLongitude, decimalLatitude))


#WNV model americas
WNV_americas.maxent<-maxent(x=environmentlayersAm_WNV, p=WNV_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_americas.maxent

WN_americas.maxent<-maxent(x=environmentlayersAm_WNV, p=WNV_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WN_americas.maxent

#plotting WNV americas
WNV_americas.maps<-predict(
  
  object=WNV_americas.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_americas.maps)
plot(mean(WNV_americas.maps))
points(WNV_americas_subset, pch=19, cex=0.1)

WN_americas.maps<-predict(
  
  object=WN_americas.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_americas.maps)
points(WNV_americas_subset, pch=19, cex=0.1)

#plotting WNV predicted from Africa on americas
WNV_americas_prediction.maps<-predict(
  
  object=WNV_Africa.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_americas_prediction.maps)
plot(mean(WNV_americas_prediction.maps))
points(WNV_americas_subset, pch=19, cex=0.1)

WN_americas_prediction.maps<-predict(
  
  object=WN_Africa.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_americas_prediction.maps)
points(WNV_americas_subset, pch=19, cex=0.1)

#WNV model eurasia with 1.75 reg parameter
WNV_americas1.maxent<-maxent(x=environmentlayersAm_WNV, p=WNV_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_americas1.maxent

#WNV model americas with 1.75 reg parameter without CV
WNV_americas2.maxent<-maxent(x=environmentlayersAm_WNV, p=WNV_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_americas2.maxent

#plotting WNV on americas 1.75 no cv
WNV_americas_prediction1.maps<-predict(
  
  object=WNV_americas2.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_americas_prediction1.maps)
points(WNV_americas_subset, pch=19, cex=0.1)

writeRaster(WNV_americas_prediction1.maps,filename="wnvam.tif")
writeRaster(WNV_americas_prediction2.maps,filename="wnvam_pr.tif")

#plotting WNV predicted from Africa on americas 1.75 no cv
WNV_americas_prediction2.maps<-predict(
  
  object=WNV4.1.maxent,
  x=environmentlayersAm_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_americas_prediction2.maps)
points(WNV_americas_subset, pch=19, cex=0.1)

#extract AUC from projection
AUC_WNV_americas<-projAUC(test.coords=WNV_americas_subset, proj.rast=WNV_americas_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_WNV_americas

#correlation test

#randomly select 10000 locatoins and pull out environment values for americas and americas predicted
#Using correlation function, compare values.
WNVam<-sampleRandom(WNV_americas_prediction1.maps, 10000, xy=T)
WNVam_ss<-subset(WNVam, select=c(x,y))

WNVampred<-sampleRandom(WNV_americas_prediction2.maps, 10000, xy=T)
WNVampred_ss<-subset(WNVampred, select=c(x,y))

WNVamvalues<-extract(environmentlayersAm_WNV, WNVam_ss)
WNVampredvalues<-extract(environmentlayersAm_WNV, WNVampred_ss)

WNV_americas_corvalues<-rbind(WNVamvalues, WNVampredvalues)

WNVamericas_correlation<-cor.test(WNVamvalues, WNVampredvalues)
WNVamericas_correlation

#--------------------------------------------------------------------------
#Environment layers oceania
O_WNV_bio1<-raster("E:/ENMs/Climate Data/WNV/wnv/oceania/oceania/bio2.tif")
O_WNV_bio2<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio4.tif")
O_WNV_bio3<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio8.tif")
O_WNV_bio4<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio9.tif")
O_WNV_bio5<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio15.tif")
O_WNV_bio6<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio16.tif")
O_WNV_bio7<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio17.tif")
O_WNV_bio8<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio18.tif")
O_WNV_bio9<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/bio19.tif")
O_WNV_lc3<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/flood.tif")
O_WNV_lc2<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/farm.tif")
O_WNV_lc1<-raster("E:/ENMs/Climate Data/WNV/WNV/oceania/oceania/urban.tif")

environmentlayersO_WNV<-stack(O_WNV_bio1, O_WNV_bio2, O_WNV_bio3, O_WNV_bio4, O_WNV_bio5, O_WNV_bio6, O_WNV_bio7, O_WNV_bio8, O_WNV_bio9, O_WNV_lc3, O_WNV_lc2, O_WNV_lc1)

##occurrence data
WNV_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV.oceania.THIN.csv", header = T)
WNV_oceania_subset<-subset(WNV_oceania, select = c(decimalLongitude, decimalLatitude))


#WNV model oceania
WNV_oceania.maxent<-maxent(x=environmentlayersO_WNV, p=WNV_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_oceania.maxent

WN_oceania.maxent<-maxent(x=environmentlayersO_WNV, p=WNV_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WN_oceania.maxent

#plotting WNV oceania
WNV_oceania.maps<-predict(
  
  object=WNV_oceania.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_oceania.maps)
plot(mean(WNV_oceania.maps))
points(WNV_oceania_subset, pch=19, cex=0.1)

WN_oceania.maps<-predict(
  
  object=WN_oceania.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_oceania.maps)
points(WNV_oceania_subset, pch=19, cex=0.1)


#plotting WNV predicted from Africa on oceania
WNV_oceania_prediction.maps<-predict(
  
  object=WNV_Africa.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_oceania_prediction.maps)
plot(mean(WNV_oceania_prediction.maps))
points(WNV_oceania_subset, pch=19, cex=0.1)

WN_oceania_prediction.maps<-predict(
  
  object=WN_Africa.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WN_oceania_prediction.maps)
points(WNV_oceania_subset, pch=19, cex=0.1)

#WNV model eurasia with 1.75 reg parameter
WNV_oceania1.maxent<-maxent(x=environmentlayersO_WNV, p=WNV_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_oceania1.maxent

#WNV model eurasia with 1.75 reg parameter without CV
WNV_oceania2.maxent<-maxent(x=environmentlayersO_WNV, p=WNV_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
WNV_oceania2.maxent

#plotting WNV on eurasia 1.75 no cv
WNV_oceania_prediction1.maps<-predict(
  
  object=WNV_oceania2.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_oceania_prediction1.maps)
points(WNV_oceania_subset, pch=19, cex=0.1)

writeRaster(WNV_oceania_prediction1.maps,filename="wnvoce.tif")
writeRaster(WNV_oceania_prediction2.maps,filename="wnvoce_pr.tif")

#plotting WNV predicted from Africa on eurasia 1.75 no cv
WNV_oceania_prediction2.maps<-predict(
  
  object=WNV4.1.maxent,
  x=environmentlayersO_WNV,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(WNV_oceania_prediction2.maps)
points(WNV_oceania_subset, pch=19, cex=0.1)

#extract AUC from projection
AUC_WNV_oceania<-projAUC(test.coords=WNV_oceania_subset, proj.rast=WNV_oceania_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_WNV_oceania

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
WNVoce<-sampleRandom(WNV_oceania_prediction1.maps, 10000, xy=T)
WNVoce_ss<-subset(WNVoce, select=c(x,y))

WNVocepred<-sampleRandom(WNV_oceania_prediction2.maps, 10000, xy=T)
WNVocepred_ss<-subset(WNVocepred, select=c(x,y))

WNVocevalues<-extract(environmentlayersO_WNV, WNVoce_ss)
WNVocepredvalues<-extract(environmentlayersO_WNV, WNVocepred_ss)

WNV_oceania_corvalues<-rbind(WNVocevalues, WNVocepredvalues)

WNVoceania_correlation<-cor.test(WNVocevalues, WNVocepredvalues)
WNVoceania_correlation
