#malaria
#Environment layers africa
Af_malaria_bio1<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio2.tif")
Af_malaria_bio2<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio4.tif")
Af_malaria_bio3<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio8.tif")
Af_malaria_bio4<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio9.tif")
Af_malaria_bio5<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio15.tif")
Af_malaria_bio6<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio16.tif")
Af_malaria_bio7<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio17.tif")
Af_malaria_bio8<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio18.tif")
Af_malaria_bio9<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/bio19.tif")
Af_malaria_lc3<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/flood.tif")
Af_malaria_lc2<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/farm.tif")
Af_malaria_lc1<-raster("E:/ENMs/Climate Data/malaria/malaria/africa/urban.tif")

environmentlayersAf_malaria<-stack(Af_malaria_bio1, Af_malaria_bio2, Af_malaria_bio3, Af_malaria_bio4, Af_malaria_bio5, Af_malaria_bio6, Af_malaria_bio7, Af_malaria_bio8, Af_malaria_bio9, Af_malaria_lc3, Af_malaria_lc2, Af_malaria_lc1)


#occurence data
malaria_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Africa_THIN.csv", header = T)
malaria_Africa_subset<-subset(malaria_Africa, select = c(decimalLongitude, decimalLatitude))

save(malaria_Africa_subset, filename="points_malaria_africa.csv")

#malaria model africa
malaria_Africa.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  


mal_Africa.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
mal_Africa.maxent

#plotting malaria Africa
malaria_Africa.maps<-predict(
  
  object=malaria_Africa.maxent,
  x=environmentlayersAf_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_Africa.maps)
plot(mean(malaria_Africa.maps))
points(malaria_Africa_subset, pch=19, cex=0.1)

#plotting malaria Africa
mal_Africa.maps<-predict(
  
  object=mal_Africa.maxent,
  x=environmentlayersAf_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_Africa.maps)
points(malaria_Africa_subset, pch=19, cex=0.05)

#changing betamultiplier: 0.25
malaria1.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria1.maxent

#changing betamultiplier: 0.75
malaria2.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=0.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria2.maxent

#changing betamultiplier: 1.25
malaria3.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria3.maxent

#changing betamultiplier: 1.75
malaria4.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria4.maxent

#changing betamultiplier: 1.75 no cv
malaria4.1.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "DefaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria4.1.maxent

#plotting malaria Africa
malaria_Africa4.1.maps<-predict(
  
  object=malaria4.1.maxent,
  x=environmentlayersAf_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_Africa4.1.maps)
points(malaria_Africa_subset, pch=19, cex=0.05)

writeRaster(malaria_Africa4.1.maps, filename="malaf.tif")

#changing betamultiplier: 2.25
malaria5.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria5.maxent

#changing betamultiplier: 2.75
malaria6.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=2.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria6.maxent

#changing betamultiplier: 3.25
malaria7.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria7.maxent

#changing betamultiplier: 3.75
malaria8.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=3.75',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria8.maxent

#changing betamultiplier: 4.25
malaria9.maxent<-maxent(x=environmentlayersAf_malaria, p=malaria_Africa_subset, nbg = 10000, args=c(
  'betaMultiplier=4.25',
  "DefaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria9.maxent

#--------------------------------------------------------------------------
#Environment layers Eurasia
Eur_malaria_bio1<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio2.tif")
Eur_malaria_bio2<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio4.tif")
Eur_malaria_bio3<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio8.tif")
Eur_malaria_bio4<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio9.tif")
Eur_malaria_bio5<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio15.tif")
Eur_malaria_bio6<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio16.tif")
Eur_malaria_bio7<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio17.tif")
Eur_malaria_bio8<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio18.tif")
Eur_malaria_bio9<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/bio19.tif")
Eur_malaria_lc3<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/flood.tif")
Eur_malaria_lc2<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/farm.tif")
Eur_malaria_lc1<-raster("E:/ENMs/Climate Data/malaria/malaria/eurasia/urban.tif")

environmentlayersEur_malaria<-stack(Eur_malaria_bio1, Eur_malaria_bio2, Eur_malaria_bio3, Eur_malaria_bio4, Eur_malaria_bio5, Eur_malaria_bio6, Eur_malaria_bio7, Eur_malaria_bio8, Eur_malaria_bio9, Eur_malaria_lc3, Eur_malaria_lc2, Eur_malaria_lc1)

##occurrence data
malaria_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Eurasia_THIN.csv", header = T)
malaria_Eurasia_subset<-subset(malaria_Eurasia, select = c(decimalLongitude, decimalLatitude))


#malaria model Eurasia
malaria_Eurasia.maxent<-maxent(x=environmentlayersEur_malaria, p=malaria_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_Eurasia.maxent

#mapping purposes
mal_Eurasia.maxent<-maxent(x=environmentlayersEur_malaria, p=malaria_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
mal_Eurasia.maxent

#plotting malaria Eurasia
malaria_Eurasia.maps<-predict(
  
  object=malaria_Eurasia.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_Eurasia.maps)
plot(mean(malaria_Eurasia.maps))
points(malaria_Eurasia_subset, pch=19, cex=0.1)

#mapping purposes
mal_Eurasia.maps<-predict(
  
  object=mal_Eurasia.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_Eurasia.maps)
points(malaria_Eurasia_subset, pch=19, cex=0.1)

#plotting malaria predicted from Africa on Eurasia
malaria_Eurasia_prediction.maps<-predict(
  
  object=malaria_Africa.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_Eurasia_prediction.maps)
plot(mean(malaria_Eurasia_prediction.maps))
points(malaria_Eurasia_subset, pch=19, cex=0.1)

#plotting malaria predicted from Africa on Eurasia
mal_Eurasia_prediction.maps<-predict(
  
  object=mal_Africa.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_Eurasia_prediction.maps)
points(malaria_Eurasia_subset, pch=19, cex=0.1)

#malaria model eurasia with 1.75 reg parameter
malaria_eurasia1.maxent<-maxent(x=environmentlayersEur_malaria, p=malaria_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_eurasia1.maxent

#malaria model eurasia with 1.75 reg parameter without CV
malaria_eurasia2.maxent<-maxent(x=environmentlayersEur_malaria, p=malaria_Eurasia_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_eurasia2.maxent

#plotting malaria on eurasia 1.75 no cv
malaria_eurasia_prediction1.maps<-predict(
  
  object=malaria_eurasia2.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_eurasia_prediction1.maps)
points(malaria_Eurasia_subset, pch=19, cex=0.1)

writeRaster(malaria_eurasia_prediction1.maps, filename="maleur.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
malaria_eurasia_prediction2.maps<-predict(
  
  object=malaria4.1.maxent,
  x=environmentlayersEur_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_eurasia_prediction2.maps)
points(malaria_Eurasia_subset, pch=19, cex=0.1)

writeRaster(malaria_eurasia_prediction2.maps, filename="maleur_pr.tif")

#extract AUC from projection
AUC_malaria_eurasia<-projAUC(test.coords=malaria_Eurasia_subset, proj.rast=malaria_eurasia_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_malaria_eurasia

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
malariaeur<-sampleRandom(malaria_eurasia_prediction1.maps, 10000, xy=T)
malariaeur_ss<-subset(malariaeur, select=c(x,y))

malariaeurpred<-sampleRandom(malaria_eurasia_prediction2.maps, 10000, xy=T)
malariaeurpred_ss<-subset(malariaeurpred, select=c(x,y))

malariaeurvalues<-extract(environmentlayersEur_malaria, malariaeur_ss)
malariaeurpredvalues<-extract(environmentlayersEur_malaria, malariaeurpred_ss)

malaria_eurasia_corvalues<-rbind(malariaeurvalues, malariaeurpredvalues)

malariaeurasia_correlation<-cor.test(malariaeurvalues, malariaeurpredvalues)
malariaeurasia_correlation

#--------------------------------------------------------------------------
#Environment layers americas
Am_malaria_bio1<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio2.tif")
Am_malaria_bio2<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio4.tif")
Am_malaria_bio3<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio8.tif")
Am_malaria_bio4<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio9.tif")
Am_malaria_bio5<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio15.tif")
Am_malaria_bio6<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio16.tif")
Am_malaria_bio7<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio17.tif")
Am_malaria_bio8<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio18.tif")
Am_malaria_bio9<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/bio19.tif")
Am_malaria_lc3<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/flood.tif")
Am_malaria_lc2<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/farm.tif")
Am_malaria_lc1<-raster("E:/ENMs/Climate Data/malaria/malaria/americas/urban.tif")

environmentlayersAm_malaria<-stack(Am_malaria_bio1, Am_malaria_bio2, Am_malaria_bio3, Am_malaria_bio4, Am_malaria_bio5, Am_malaria_bio6, Am_malaria_bio7, Am_malaria_bio8, Am_malaria_bio9, Am_malaria_lc3, Am_malaria_lc2, Am_malaria_lc1)

##occurrence data
malaria_americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Americas_THIN.csv", header = T)
malaria_americas_subset<-subset(malaria_americas, select = c(decimalLongitude, decimalLatitude))


#malaria model americas
malaria_americas.maxent<-maxent(x=environmentlayersAm_malaria, p=malaria_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_americas.maxent

mal_americas.maxent<-maxent(x=environmentlayersAm_malaria, p=malaria_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
mal_americas.maxent

mal_americas.maps<-predict(
  
  object=mal_americas.maxent,
  x=environmentlayersAm_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)
plot(mal_americas.maps)
points(malaria_americas_subset, pch=19, cex=0.1)


#plotting malaria predicted from Africa on americas
malaria_americas_prediction.maps<-predict(
  
  object=malaria_Africa.maxent,
  x=environmentlayersAm_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_americas_prediction.maps)
plot(mean(malaria_americas_prediction.maps))
points(malaria_americas_subset, pch=19, cex=0.1)

#plotting malaria predicted from Africa on americas
mal_americas_prediction.maps<-predict(
  
  object=mal_Africa.maxent,
  x=environmentlayersAm_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_americas_prediction.maps)
points(malaria_americas_subset, pch=19, cex=0.1)

#malaria model americas with 1.75 reg parameter
malaria_americas1.maxent<-maxent(x=environmentlayersAm_malaria, p=malaria_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_americas1.maxent

#malaria model americas with 1.75 reg parameter without CV
malaria_americas2.maxent<-maxent(x=environmentlayersAm_malaria, p=malaria_americas_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_americas2.maxent

#plotting malaria on eurasia 1.75 no cv
malaria_americas_prediction1.maps<-predict(
  
  object=malaria_americas2.maxent,
  x=environmentlayersAm_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_americas_prediction1.maps)
points(malaria_americas_subset, pch=19, cex=0.1)

writeRaster(malaria_americas_prediction1.maps, filename="malam.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
malaria_americas_prediction2.maps<-predict(
  
  object=malaria4.1.maxent,
  x=environmentlayersAm_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
  
)

plot(malaria_americas_prediction2.maps)
points(malaria_americas_subset, pch=19, cex=0.1)

writeRaster(malaria_americas_prediction2.maps, filename="malam_pr.tif")

#extract AUC from projection
AUC_malaria_americas<-projAUC(test.coords=malaria_americas_subset, proj.rast=malaria_americas_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_malaria_americas

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
malariaAm<-sampleRandom(malaria_americas_prediction1.maps, 10000, xy=T)
malariaAm_ss<-subset(malariaAm, select=c(x,y))

malariaAmpred<-sampleRandom(malaria_americas_prediction2.maps, 10000, xy=T)
malariaAmpred_ss<-subset(malariaAmpred, select=c(x,y))

malariaAmvalues<-extract(environmentlayersAm_malaria, malariaAm_ss)
malariaAmpredvalues<-extract(environmentlayersAm_malaria, malariaAmpred_ss)

malaria_americas_corvalues<-rbind(malariaAmvalues, malariaAmpredvalues)

malariaamericas_correlation<-cor.test(malariaAmvalues, malariaAmpredvalues)
malariaamericas_correlation

#--------------------------------------------------------------------------
#Environment layers oceania
O_malaria_bio1<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio2.tif")
O_malaria_bio2<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio4.tif")
O_malaria_bio3<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio8.tif")
O_malaria_bio4<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio9.tif")
O_malaria_bio5<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio15.tif")
O_malaria_bio6<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio16.tif")
O_malaria_bio7<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio17.tif")
O_malaria_bio8<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio18.tif")
O_malaria_bio9<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/bio19.tif")
O_malaria_lc3<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/flood.tif")
O_malaria_lc2<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/farm.tif")
O_malaria_lc1<-raster("E:/ENMs/Climate Data/malaria/malaria/oceania/oceania/urban.tif")

environmentlayersO_malaria<-stack(O_malaria_bio1, O_malaria_bio2, O_malaria_bio3, O_malaria_bio4, O_malaria_bio5, O_malaria_bio6, O_malaria_bio7, O_malaria_bio8, O_malaria_bio9, O_malaria_lc3, O_malaria_lc2, O_malaria_lc1)

##occurrence data
malaria_oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Oceania_THIN.csv", header = T)
malaria_oceania_subset<-subset(malaria_oceania, select = c(decimalLongitude, decimalLatitude))


#malaria model oceania
malaria_oceania.maxent<-maxent(x=environmentlayersO_malaria, p=malaria_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_oceania.maxent

mal_oceania.maxent<-maxent(x=environmentlayersO_malaria, p=malaria_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.0',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
mal_oceania.maxent

#plotting malaria oceania
malaria_oceania.maps<-predict(
  
  object=malaria_oceania.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_oceania.maps)
plot(mean(malaria_oceania.maps))
points(malaria_oceania_subset, pch=19, cex=0.1)

mal_oceania.maps<-predict(
  
  object=mal_oceania.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_oceania.maps)
points(malaria_oceania_subset, pch=19, cex=0.1)

#plotting malaria predicted from Africa on oceania
malaria_oceania_prediction.maps<-predict(
  
  object=malaria_Africa.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_oceania_prediction.maps)
plot(mean(malaria_oceania_prediction.maps))
points(malaria_oceania_subset, pch=19, cex=0.1)

#mapping purposes
mal_oceania_prediction.maps<-predict(
  
  object=mal_Africa.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(mal_oceania_prediction.maps)
points(malaria_oceania_subset, pch=19, cex=0.1)


#malaria model oceania with 1.75 reg parameter
malaria_oceania1.maxent<-maxent(x=environmentlayersO_malaria, p=malaria_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'replicatetype=crossvalidate',
  'replicates=10',
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_oceania1.maxent

#malaria model eurasia with 1.75 reg parameter without CV
malaria_oceania2.maxent<-maxent(x=environmentlayersO_malaria, p=malaria_oceania_subset, nbg = 10000, args=c(
  'betaMultiplier=1.75',
  "defaultPrevalence=0.5",
  'autoFeature=TRUE',
  'maximumIterations=500',
  'addsamplestobackground=TRUE',
  'addallsamplestobackground=FALSE'
))  
malaria_oceania2.maxent

#plotting malaria on eurasia 1.75 no cv
malaria_oceania_prediction1.maps<-predict(
  
  object=malaria_oceania2.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_oceania_prediction1.maps)
points(malaria_oceania_subset, pch=19, cex=0.1)

writeRaster(malaria_oceania_prediction1.maps, filename="maloce.tif")

#plotting malaria predicted from Africa on eurasia 1.75 no cv
malaria_oceania_prediction2.maps<-predict(
  
  object=malaria4.1.maxent,
  x=environmentlayersO_malaria,
  format='ascii',
  progress='text',
  args=c(outputFormat='logistic'),
  prj=TRUE, 
  keepres=TRUE,
  na.rm=TRUE,
  overwrite=TRUE
)

plot(malaria_oceania_prediction2.maps)
points(malaria_oceania_subset, pch=19, cex=0.1)

writeRaster(malaria_oceania_prediction2.maps, filename ="maloce_pr.tif")

#extract AUC from projection
AUC_malaria_oceania<-projAUC(test.coords=malaria_oceania_subset, proj.rast=malaria_oceania_prediction2.maps, bg.n=10000, return.bg=F, return.curve=F)
AUC_malaria_oceania

#correlation test

#randomly select 10000 locatoins and pull out environment values for eurasia and eurasia predicted
#Using correlation function, compare values.
malariaO<-sampleRandom(malaria_oceania_prediction1.maps, 10000, xy=T)
malariaO_ss<-subset(malariaO, select=c(x,y))

malariaOpred<-sampleRandom(malaria_oceania_prediction2.maps, 10000, xy=T)
malariaOpred_ss<-subset(malariaOpred, select=c(x,y))

malariaOvalues<-extract(environmentlayersO_malaria, malariaO_ss)
malariaOpredvalues<-extract(environmentlayersO_malaria, malariaOpred_ss)

malaria_oceania_corvalues<-rbind(malariaOvalues, malariaOpredvalues)

malariaoceania_correlation<-cor.test(malariaOvalues, malariaOpredvalues)
malariaoceania_correlation
