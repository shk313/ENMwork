setwd("~/dropbox/suzanne/rwork")

#load thinned files 


wnv.filenames<-paste("./All_Thinned_Datasets/WNV_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
mal.filenames<-paste("./All_Thinned_Datasets/Malaria_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
den.filenames<-paste("./All_Thinned_Datasets/Dengue_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
yel.filenames<-paste("./All_Thinned_Datasets/YellowF_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
chik.filenames<-paste("./All_Thinned_Datasets/Chik_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
zik.filenames<-paste("./All_Thinned_Datasets/Zika_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")


#load continentdataframes into a list for each disease
wnv.list<-mal.list<-den.list<-yel.list<-chik.list<-zik.list<-list()
for (L in 1:length(wnv.filenames)) {
	wnv.list[[L]]<-read.csv(wnv.filenames[L])
	mal.list[[L]]<-read.csv(mal.filenames[L])
	den.list[[L]]<-read.csv(den.filenames[L])
	yel.list[[L]]<-read.csv(yel.filenames[L])
	chik.list[[L]]<-read.csv(chik.filenames[L])
	zik.list[[L]]<-read.csv(zik.filenames[L])
	
}

names(wnv.list)<-names(mal.list)<-names(den.list)<-names(yel.list)<-names(chik.list)<-names(zik.list)<-c("Americas","Africa","Eurasia","Oceania")


#make a dataframe out of the list for each disease by rbinding individual continent dataframes. do.call does this, but as far as I know, no one really understands how do.call works . . . 
wnv.df<-do.call(rbind, wnv.list)
mal.df<-do.call(rbind, mal.list)
den.df<-do.call(rbind, den.list)
yel.df<-do.call(rbind, yel.list)
chik.df<-do.call(rbind, chik.list)
zik.df<-do.call(rbind, zik.list)


#find min and max latitude of each continent
wnv.range<-range(wnv.df$decimalLatitude) 
mal.range<-range(mal.df$decimalLatitude) 
den.range<-range(den.df$decimalLatitude) 
yel.range<-range(yel.df$decimalLatitude) 
zik.range<-range(chik.df$decimalLatitude) 
chik.range<-range(zik.df$decimalLatitude) 

##load env rasters
afr.rast.files<-c(paste("./env_by_continent/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"./env_by_continent/africa/flood.tif")
eur.rast.files<-c(paste("./env_by_continent/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"./env_by_continent/eurasia/flood.tif")
amer.rast.files<-c(paste("./env_by_continent/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"./env_by_continent/americas/flood.tif")
oce.rast.files<-c(paste("./env_by_continent/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"./env_by_continent/oceania/flood.tif")

#load environment from each continent in a stack
afr.rast<-stack(afr.rast.files)
eur.rast<-stack(eur.rast.files)
amer.rast<-stack(amer.rast.files)
oce.rast<-stack(oce.rast.files)

#extract extent for each continent
afr.extent<-extent(afr.rast)
amer.extent<-extent(amer.rast)
eur.extent<-extent(eur.rast)
oce.extent<-extent(oce.rast)

#create modified extents for cropping continents by wnv
###
###WNV

afr.asdf<-afr.extent
afr.asdf[3]<-wnv.range[1]-5
afr.asdf[4]<-wnv.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-wnv.range[1]-5
amer.asdf[4]<-wnv.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-wnv.range[1]-5
eur.asdf[4]<-wnv.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-wnv.range[1]-5
oce.asdf[4]<-wnv.range[2]+5

wnv.afr.env<-crop(afr.rast,afr.asdf)
wnv.amer.env<-crop(amer.rast,amer.asdf)
wnv.eur.env<-crop(eur.rast,eur.asdf)
wnv.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/wnv/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/wnv/africa/flood.tif")
for (L in 1:10) writeRaster(wnv.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/wnv/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/wnv/eurasia/flood.tif")
for (L in 1:10) writeRaster(wnv.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/wnv/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/wnv/americas/flood.tif")
for (L in 1:10) writeRaster(wnv.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/wnv/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/wnv/oceania/flood.tif")
for (L in 1:10) writeRaster(wnv.oce.env[[L]],filename=asdf.files[L])

###
###malaria
#create modified extents for cropping continents by malaria
afr.asdf<-afr.extent
afr.asdf[3]<-mal.range[1]-5
afr.asdf[4]<-mal.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-mal.range[1]-5
amer.asdf[4]<-mal.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-mal.range[1]-5
eur.asdf[4]<-mal.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-mal.range[1]-5
oce.asdf[4]<-mal.range[2]+5

mal.afr.env<-crop(afr.rast,afr.asdf)
mal.amer.env<-crop(amer.rast,amer.asdf)
mal.eur.env<-crop(eur.rast,eur.asdf)
mal.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/malaria/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/malaria/africa/flood.tif")
for (L in 1:10) writeRaster(mal.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/malaria/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/malaria/eurasia/flood.tif")
for (L in 1:10) writeRaster(mal.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/malaria/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/malaria/americas/flood.tif")
for (L in 1:10) writeRaster(mal.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/malaria/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/malaria/oceania/flood.tif")
for (L in 1:10) writeRaster(mal.oce.env[[L]],filename=asdf.files[L])


###
###dengue
#create modified extents for cropping continents by dengue
afr.asdf<-afr.extent
afr.asdf[3]<-den.range[1]-5
afr.asdf[4]<-den.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-den.range[1]-5
amer.asdf[4]<-den.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-den.range[1]-5
eur.asdf[4]<-den.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-den.range[1]-5
oce.asdf[4]<-den.range[2]+5

den.afr.env<-crop(afr.rast,afr.asdf)
den.amer.env<-crop(amer.rast,amer.asdf)
den.eur.env<-crop(eur.rast,eur.asdf)
den.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/dengue/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/dengue/africa/flood.tif")
for (L in 1:10) writeRaster(den.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/dengue/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/dengue/eurasia/flood.tif")
for (L in 1:10) writeRaster(den.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/dengue/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/dengue/americas/flood.tif")
for (L in 1:10) writeRaster(den.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/dengue/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/dengue/oceania/flood.tif")
for (L in 1:10) writeRaster(den.oce.env[[L]],filename=asdf.files[L])

##

###
###Yellow Fever
#create modified extents for cropping continents by yellow fever
afr.asdf<-afr.extent
afr.asdf[3]<-yel.range[1]-5
afr.asdf[4]<-yel.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-yel.range[1]-5
amer.asdf[4]<-yel.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-yel.range[1]-5
eur.asdf[4]<-yel.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-yel.range[1]-5
oce.asdf[4]<-yel.range[2]+5

yel.afr.env<-crop(afr.rast,afr.asdf)
yel.amer.env<-crop(amer.rast,amer.asdf)
yel.eur.env<-crop(eur.rast,eur.asdf)
yel.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/yellowf/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/yellowf/africa/flood.tif")
for (L in 1:10) writeRaster(yel.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/yellowf/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/yellowf/eurasia/flood.tif")
for (L in 1:10) writeRaster(yel.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/yellowf/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/yellowf/americas/flood.tif")
for (L in 1:10) writeRaster(yel.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/yellowf/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/yellowf/oceania/flood.tif")
for (L in 1:10) writeRaster(yel.oce.env[[L]],filename=asdf.files[L])

#chikungunya
###
#create modified extents for cropping continents by chikungunya
afr.asdf<-afr.extent
afr.asdf[3]<-chik.range[1]-5
afr.asdf[4]<-chik.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-chik.range[1]-5
amer.asdf[4]<-chik.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-chik.range[1]-5
eur.asdf[4]<-chik.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-chik.range[1]-5
oce.asdf[4]<-chik.range[2]+5

chik.afr.env<-crop(afr.rast,afr.asdf)
chik.amer.env<-crop(amer.rast,amer.asdf)
chik.eur.env<-crop(eur.rast,eur.asdf)
chik.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/chik/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/chik/africa/flood.tif")
for (L in 1:10) writeRaster(chik.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/chik/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/chik/eurasia/flood.tif")
for (L in 1:10) writeRaster(chik.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/chik/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/chik/americas/flood.tif")
for (L in 1:10) writeRaster(chik.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/chik/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/chik/oceania/flood.tif")
for (L in 1:10) writeRaster(chik.oce.env[[L]],filename=asdf.files[L])

###
###Zika
#create modified extents for cropping continents by zika
afr.asdf<-afr.extent
afr.asdf[3]<-zik.range[1]-5
afr.asdf[4]<-zik.range[2]+5

amer.asdf<-amer.extent
amer.asdf[3]<-zik.range[1]-5
amer.asdf[4]<-zik.range[2]+5

eur.asdf<-eur.extent
eur.asdf[3]<-zik.range[1]-5
eur.asdf[4]<-zik.range[2]+5

oce.asdf<-oce.extent
oce.asdf[3]<-zik.range[1]-5
oce.asdf[4]<-zik.range[2]+5

zik.afr.env<-crop(afr.rast,afr.asdf)
zik.amer.env<-crop(amer.rast,amer.asdf)
zik.eur.env<-crop(eur.rast,eur.asdf)
zik.oce.env<-crop(eur.rast,eur.asdf)

#write new files
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/zika/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/zika/africa/flood.tif")
for (L in 1:10) writeRaster(zik.afr.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/zika/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/zika/eurasia/flood.tif")
for (L in 1:10) writeRaster(zik.eur.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/zika/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/zika/americas/flood.tif")
for (L in 1:10) writeRaster(zik.amer.env[[L]],filename=asdf.files[L])
asdf.files<-c(paste("~/dropbox/suzanne/rwork/env_by_disease/zika/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"~/dropbox/suzanne/rwork/env_by_disease/zika/oceania/flood.tif")
for (L in 1:10) writeRaster(zik.oce.env[[L]],filename=asdf.files[L])










