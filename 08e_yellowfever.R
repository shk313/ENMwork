#YellowFever
#Environment layers africa
Af_yellowf_bio1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio2.tif")
Af_yellowf_bio2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio4.tif")
Af_yellowf_bio3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio8.tif")
Af_yellowf_bio4<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio9.tif")
Af_yellowf_bio5<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio15.tif")
Af_yellowf_bio6<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio16.tif")
Af_yellowf_bio7<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio17.tif")
Af_yellowf_bio8<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio18.tif")
Af_yellowf_bio9<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/bio19.tif")
Af_yellowf_lc3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/flood.tif")
Af_yellowf_lc2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/farm.tif")
Af_yellowf_lc1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/africa/urban.tif")

environmentlayersAf_YF<-stack(Af_yellowf_bio1, Af_yellowf_bio2, Af_yellowf_bio3, Af_yellowf_bio4, Af_yellowf_bio5, Af_yellowf_bio6, Af_yellowf_bio7, Af_yellowf_bio8, Af_yellowf_bio9, Af_yellowf_lc3, Af_yellowf_lc2, Af_yellowf_lc1)


#occurence data
yellowf_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Africa_THIN.csv", header = T)
yellowf_Africa_subset<-subset(yellowf_Africa, select = c(decimalLongitude, decimalLatitude))

#yellowf model africa
yellowf_Africa.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_Africa.maxent

yf_Africa.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yf_Africa.maxent

#plotting yellowf Africa
yellowf_Africa.maps<-predict(
  
  object=yellowf_Africa.maxent,
  x=environmentlayersAf_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_Africa.maps)
plot(mean(yellowf_Africa.maps))
points(yellowf_Africa_subset, pch=19, cex=0.1)

yf_Africa1.maps<-predict(
  
  object=yf_Africa.maxent,
  x=environmentlayersAf_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_Africa1.maps)
points(yellowf_Africa_subset, pch=19, cex=0.1)

#changing betamultiplier: 0.25
YF1.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF1.maxent

#changing betamultiplier: 0.75
YF2.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF2.maxent

#changing betamultiplier: 1.25
YF3.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF3.maxent

#changing betamultiplier: 1.75
YF4.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF4.maxent

YF4.1.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF4.1.maxent

yf_Africa2.maps<-predict(
  
  object=YF4.1.maxent,
  x=environmentlayersAf_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_Africa2.maps)
points(yellowf_Africa_subset, pch=19, cex=0.1)

writeRaster(yf_Africa2.maps, filename="yfaf.tif")

#changing betamultiplier: 2.25
YF5.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF5.maxent

#changing betamultiplier: 2.75
YF6.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF6.maxent

#changing betamultiplier: 3.25
YF7.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF7.maxent

#changing betamultiplier: 3.75
YF8.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF8.maxent

#changing betamultiplier: 4.25
YF9.maxent<-maxent(x=environmentlayersAf_YF, p=yellowf_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
YF9.maxent

#--------------------------------------------------------------------------
#Environment layers Eurasia
Eur_yellowf_bio1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio2.tif")
Eur_yellowf_bio2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio4.tif")
Eur_yellowf_bio3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio8.tif")
Eur_yellowf_bio4<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio9.tif")
Eur_yellowf_bio5<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio15.tif")
Eur_yellowf_bio6<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio16.tif")
Eur_yellowf_bio7<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio17.tif")
Eur_yellowf_bio8<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio18.tif")
Eur_yellowf_bio9<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/bio19.tif")
Eur_yellowf_lc3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/flood.tif")
Eur_yellowf_lc2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/farm.tif")
Eur_yellowf_lc1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/eurasia/urban.tif")

environmentlayersEur_YF<-stack(Eur_yellowf_bio1, Eur_yellowf_bio2, Eur_yellowf_bio3, Eur_yellowf_bio4, Eur_yellowf_bio5, Eur_yellowf_bio6, Eur_yellowf_bio7, Eur_yellowf_bio8, Eur_yellowf_bio9, Eur_yellowf_lc3, Eur_yellowf_lc2, Eur_yellowf_lc1)

##occurrence data
yellowf_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/yellowf_Eurasia_THIN.csv", header = T)
yellowf_Eurasia_subset<-subset(yellowf_Eurasia, select = c(decimalLongitude, decimalLatitude))


#yellowf model Eurasia
yellowf_Eurasia.maxent<-maxent(x=environmentlayersEur_YF, p=yellowf_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_Eurasia.maxent

yf_Eurasia.maxent<-maxent(x=environmentlayersEur_YF, p=yellowf_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yf_Eurasia.maxent


#plotting yellowf Eurasia
yellowf_Eurasia.maps<-predict(
  
  object=yellowf_Eurasia.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_Eurasia.maps)
plot(mean(yellowf_Eurasia.maps))
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

yf_Eurasia.maps<-predict(
  
  object=yf_Eurasia.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_Eurasia.maps)
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

#plotting yellowf predicted from Africa on Eurasia
yellowf_Eurasia_prediction.maps<-predict(
  
  object=yellowf_Africa.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_Eurasia_prediction.maps)
plot(mean(yellowf_Eurasia_prediction.maps))
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

yf_Eurasia_prediction.maps<-predict(
  
  object=yf_Africa.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_Eurasia_prediction.maps)
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

#malaria model eurasia with 1.75 reg parameter
yellowf_eurasia1.maxent<-maxent(x=environmentlayersEur_YF, p=yellowf_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_eurasia1.maxent

#malaria model eurasia with 1.75 reg parameter without CV
yellowf_eurasia2.maxent<-maxent(x=environmentlayersEur_YF, p=yellowf_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_eurasia2.maxent

#plotting malaria on eurasia 1.75 no cv
yellowf_eurasia_prediction1.maps<-predict(
  
  object=yellowf_eurasia2.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_eurasia_prediction1.maps)
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

writeRaster(yellowf_eurasia_prediction1.maps,filename = "yfeur.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
yellowf_eurasia_prediction2.maps<-predict(
  
  object=YF4.1.maxent,
  x=environmentlayersEur_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_eurasia_prediction2.maps)
points(yellowf_Eurasia_subset, pch=19, cex=0.1)

writeRaster(yellowf_eurasia_prediction2.maps, filename = "yfeur_pr.tif")

#extract AUC from projection
AUC_yellowf_eurasia<-projAUC(test.coords=yellowf_Eurasia_subset, proj.rast=yellowf_eurasia_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_yellowf_eurasia

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
yellowfeur<-sampleRandom(yellowf_eurasia_prediction1.maps, 10000, xy=T)
yellowfeur_ss<-subset(yellowfeur, select=c(x,y))

yellowfeurpred<-sampleRandom(yellowf_eurasia_prediction2.maps, 10000, xy=T)
yellowfeurpred_ss<-subset(yellowfeurpred, select=c(x,y))

yellowfeurvalues<-extract(environmentlayersEur_YF, yellowfeur_ss)

yellowfeurpredvalues<-extract(environmentlayersEur_YF, yellowfeurpred_ss)

yellowf_eurasia_corvalues<-rbind(yellowfeurvalues, yellowfeurpredvalues)

yellowfeurasia_correlation<-cor.test(yellowfeurvalues, yellowfeurpredvalues)
yellowfeurasia_correlation

#--------------------------------------------------------------------------
#Environment layers americas
Am_yellowf_bio1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio2.tif")
Am_yellowf_bio2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio4.tif")
Am_yellowf_bio3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio8.tif")
Am_yellowf_bio4<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio9.tif")
Am_yellowf_bio5<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio15.tif")
Am_yellowf_bio6<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio16.tif")
Am_yellowf_bio7<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio17.tif")
Am_yellowf_bio8<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio18.tif")
Am_yellowf_bio9<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/bio19.tif")
Am_yellowf_lc3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/flood.tif")
Am_yellowf_lc2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/farm.tif")
Am_yellowf_lc1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/americas/urban.tif")

environmentlayersAm_YF<-stack(Am_yellowf_bio1, Am_yellowf_bio2, Am_yellowf_bio3, Am_yellowf_bio4, Am_yellowf_bio5, Am_yellowf_bio6, Am_yellowf_bio7, Am_yellowf_bio8, Am_yellowf_bio9, Am_yellowf_lc3, Am_yellowf_lc2, Am_yellowf_lc1)

##occurrence data
yellowf_americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/yellowf_Americas_THIN.csv", header = T)
yellowf_americas_subset<-subset(yellowf_americas, select = c(decimalLongitude, decimalLatitude))


#yellowf model americas
yellowf_americas.maxent<-maxent(x=environmentlayersAm_YF, p=yellowf_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_americas.maxent

yf_americas.maxent<-maxent(x=environmentlayersAm_YF, p=yellowf_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_americas.maxent


#plotting yellowf americas
yellowf_americas.maps<-predict(
  
  object=yellowf_americas.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_americas.maps)
plot(mean(yellowf_americas.maps))
points(yellowf_americas_subset, pch=19, cex=0.1)

yf_americas.maps<-predict(
  
  object=yf_americas.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_americas.maps)
points(yellowf_americas_subset, pch=19, cex=0.1)

#plotting yellowf predicted from Africa on americas
yellowf_americas_prediction.maps<-predict(
  
  object=yellowf_Africa.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_americas_prediction.maps)
plot(mean(yellowf_americas_prediction.maps))
points(yellowf_americas_subset, pch=19, cex=0.1)

yf_americas_prediction.maps<-predict(
  
  object=yf_Africa.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_americas_prediction.maps)
points(yellowf_americas_subset, pch=19, cex=0.1)

#malaria model eurasia with 1.75 reg parameter
yellowf_americas1.maxent<-maxent(x=environmentlayersAm_YF, p=yellowf_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_americas1.maxent

#malaria model eurasia with 1.75 reg parameter without CV
yellowf_americas2.maxent<-maxent(x=environmentlayersAm_YF, p=yellowf_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_americas2.maxent

#plotting malaria on eurasia 1.75 no cv
yellowf_americas_prediction1.maps<-predict(
  
  object=yellowf_americas2.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_americas_prediction1.maps)
points(yellowf_americas_subset, pch=19, cex=0.1)

writeRaster(yellowf_americas_prediction1.maps, filename="yfam.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
yellowf_americas_prediction2.maps<-predict(
  
  object=YF4.1.maxent,
  x=environmentlayersAm_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_americas_prediction2.maps)
points(yellowf_americas_subset, pch=19, cex=0.1)

writeRaster(yellowf_americas_prediction2.maps, filename="yfam_pr.tif")

#extract AUC from projection
AUC_yellowf_americas<-projAUC(test.coords=yellowf_americas_subset, proj.rast=yellowf_americas_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_yellowf_americas

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
yellowfAm<-sampleRandom(yellowf_americas_prediction1.maps, 10000, xy=T)
yellowfAm_ss<-subset(yellowfAm, select=c(x,y))

yellowfAmpred<-sampleRandom(yellowf_americas_prediction2.maps, 10000, xy=T)
yellowfAmpred_ss<-subset(yellowfAmpred, select=c(x,y))

yellowfAmvalues<-extract(environmentlayersAm_YF, yellowfAm_ss)
yellowfAmpredvalues<-extract(environmentlayersAm_YF, yellowfAmpred_ss)

yellowf_americas_corvalues<-rbind(yellowfAmvalues, yellowfAmpredvalues)

yellowfamericas_correlation<-cor.test(yellowfAmvalues, yellowfAmpredvalues)
yellowfamericas_correlation

#--------------------------------------------------------------------------
#Environment layers oceania
O_yellowf_bio1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio2.tif")
O_yellowf_bio2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio4.tif")
O_yellowf_bio3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio8.tif")
O_yellowf_bio4<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio9.tif")
O_yellowf_bio5<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio15.tif")
O_yellowf_bio6<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio16.tif")
O_yellowf_bio7<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio17.tif")
O_yellowf_bio8<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio18.tif")
O_yellowf_bio9<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/bio19.tif")
O_yellowf_lc3<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/flood.tif")
O_yellowf_lc2<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/oceania/farm.tif")
O_yellowf_lc1<-raster("E:/ENMs/Climate Data/YellowFever/yellowf/oceania/urban.tif")

environmentlayersO_YF<-stack(O_yellowf_bio1, O_yellowf_bio2, O_yellowf_bio3, O_yellowf_bio4, O_yellowf_bio5, O_yellowf_bio6, O_yellowf_bio7, O_yellowf_bio8, O_yellowf_bio9, O_yellowf_lc3, O_yellowf_lc2, O_yellowf_lc1)

##occurrence data
yellowf_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Oceania_THIN.csv", header = T)
yellowf_oceania_subset<-subset(yellowf_oceania, select = c(decimalLongitude, decimalLatitude))


#yellowf model oceania
yellowf_oceania.maxent<-maxent(x=environmentlayersO_YF, p=yellowf_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_oceania.maxent

yf_oceania.maxent<-maxent(x=environmentlayersO_YF, p=yellowf_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_oceania.maxent

#plotting yellowf oceania
yellowf_oceania.maps<-predict(
  
  object=yellowf_oceania.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_oceania.maps)
plot(mean(yellowf_oceania.maps))
points(yellowf_oceania_subset, pch=19, cex=0.1)

yf_oceania.maps<-predict(
  
  object=yf_oceania.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_oceania.maps)
points(yellowf_oceania_subset, pch=19, cex=0.1)


#plotting yellowf predicted from Africa on oceania
yellowf_oceania_prediction.maps<-predict(
  
  object=yellowf_Africa.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_oceania_prediction.maps)
plot(mean(yellowf_oceania_prediction.maps))
points(yellowf_oceania_subset, pch=19, cex=0.1)

yf_oceania_prediction.maps<-predict(
  
  object=yf_Africa.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yf_oceania_prediction.maps)
points(yellowf_oceania_subset, pch=19, cex=0.1)

#malaria model oceania with 1.75 reg parameter
yellowf_oceania1.maxent<-maxent(x=environmentlayersO_YF, p=yellowf_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_oceania1.maxent

#malaria model eurasia with 1.75 reg parameter without CV
yellowf_oceania2.maxent<-maxent(x=environmentlayersO_YF, p=yellowf_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
yellowf_oceania2.maxent

#plotting malaria on eurasia 1.75 no cv
yellowf_oceania_prediction1.maps<-predict(
  
  object=yellowf_oceania2.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_oceania_prediction1.maps)
points(yellowf_oceania_subset, pch=19, cex=0.1)

writeRaster(yellowf_oceania_prediction1.maps, filename="yfoce.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
yellowf_oceania_prediction2.maps<-predict(
  
  object=YF4.1.maxent,
  x=environmentlayersO_YF,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(yellowf_oceania_prediction2.maps)
points(yellowf_oceania_subset, pch=19, cex=0.1)

writeRaster(yellowf_oceania_prediction2.maps, filename="yfoce_pr.tif")

#extract AUC from projection
AUC_yellowf_oceania<-projAUC(test.coords=yellowf_oceania_subset, proj.rast=yellowf_oceania_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_yellowf_oceania

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
yellowfO<-sampleRandom(yellowf_oceania_prediction1.maps, 10000, xy=T)
yellowfO_ss<-subset(yellowfO, select=c(x,y))

yellowfOpred<-sampleRandom(yellowf_oceania_prediction2.maps, 10000, xy=T)
yellowfOpred_ss<-subset(yellowfOpred, select=c(x,y))

yellowfOvalues<-extract(environmentlayersO_YF, yellowfO_ss)
yellowfOpredvalues<-extract(environmentlayersO_YF, yellowfOpred_ss)

yellowf_oceania_corvalues<-rbind(yellowfOvalues, yellowfOpredvalues)

yellowfoceania_correlation<-cor.test(yellowfOvalues, yellowfOpredvalues)
yellowfoceania_correlation
