library(raster)

#load thinned files 
wnv.filenames<-paste("./Thinned_data/WNV_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
mal.filenames<-paste("./Thinned_data/Malaria_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
den.filenames<-paste("./Thinned_data/Dengue_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
yel.filenames<-paste("./Thinned_data/YellowF_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
chik.filenames<-paste("./Thinned_data/Chik_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")
zik.filenames<-paste("./Thinned_data/Zika_",c("Americas","Africa","Eurasia","Oceania"),"_THIN.csv",sep="")


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
zik.range<-range(zik.df$decimalLatitude) 
chik.range<-range(chik.df$decimalLatitude) 


##load env rasters already clipped and stack then resample??
afr.rast.files<-c(paste("E:/ENMS/Climate Data/continent_raster/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/continent_raster/africa/flood.tif")
eur.rast.files<-c(paste("E:/ENMS/Climate Data/continent_raster/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/continent_raster/eurasia/flood.tif")
amer.rast.files<-c(paste("E:/ENMS/Climate Data/continent_raster/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/continent_raster/americas/flood.tif")
oce.rast.files<-c(paste("E:/ENMS/Climate Data/continent_raster/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/continent_raster/oceania/flood.tif")

afr.rast.extra.files<-c("E:/ENMS/Climate Data/continent_raster/africa/farm.tif","E:/ENMS/Climate Data/continent_raster/africa/urban.tif")
eur.rast.extra.files<-c("E:/ENMS/Climate Data/continent_raster/eurasia/farm.tif","E:/ENMS/Climate Data/continent_raster/eurasia/urban.tif")
amer.rast.extra.files<-c("E:/ENMS/Climate Data/continent_raster/americas/farm.tif","E:/ENMS/Climate Data/continent_raster/americas/urban.tif")
oce.rast.extra.files<-c("E:/ENMS/Climate Data/continent_raster/oceania/farm.tif","E:/ENMS/Climate Data/continent_raster/oceania/urban.tif")

#load pre-cropped environment from each continent in a stack
afr.rast<-stack(afr.rast.files)
eur.rast<-stack(eur.rast.files)
amer.rast<-stack(amer.rast.files)
oce.rast<-stack(oce.rast.files)

#load un-cropped environment from each continent in a stack
afr.rast.extra <- stack(afr.rast.extra.files)
eur.rast.extra <- stack(eur.rast.extra.files)
amer.rast.extra <- stack(amer.rast.extra.files)
oce.rast.extra <- stack(oce.rast.extra.files)

##resamlpe rasters to the same extent, bilinear or ngb method?
afr.rast.new <- resample(afr.rast.extra, afr.rast, method = "bilinear")
eur.rast.new <- resample(eur.rast.extra, eur.rast, method = "bilinear")
amer.rast.new <- resample(amer.rast.extra, amer.rast, method = "bilinear")
oce.rast.new <- resample(oce.rast.extra, oce.rast, method = "bilinear")

#restack all cropped variables
afr.rast.done<-stack(afr.rast.new, afr.rast)
eur.rast.done <- stack(eur.rast.new, eur.rast)
amer.rast.done <- stack(amer.rast.new, amer.rast)
oce.rast.done <- stack(oce.rast.new, oce.rast)

#extract extent for each continent
afr.extent<-extent(afr.rast.done)
amer.extent<-extent(amer.rast.done)
eur.extent<-extent(eur.rast.done)
oce.extent<-extent(oce.rast.done)

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

wnv.afr.env<-crop(afr.rast.done,afr.asdf)
wnv.amer.env<-crop(amer.rast.done,amer.asdf)
wnv.eur.env<-crop(eur.rast.done,eur.asdf)
wnv.oce.env<-crop(eur.rast.done,eur.asdf)


#write new files
asdf.files<-c(paste("E:/ENMS/Climate Data/WNV/wnv/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/WNV/wnv/africa/flood.tif","E:/ENMS/Climate Data/WNV/wnv/africa/farm.tif","E:/ENMS/Climate Data/WNV/wnv/africa/urban.tif")
for (L in 1:12) writeRaster(wnv.afr.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/WNV/wnv/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/WNV/wnv/eurasia/flood.tif","E:/ENMS/Climate Data/WNV/wnv/eurasia/farm.tif","E:/ENMS/Climate Data/WNV/wnv/eurasia/urban.tif")
for (L in 1:12) writeRaster(wnv.eur.env[[L]],filename=asdf.files[L], overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/WNV/wnv/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/WNV/wnv/americas/flood.tif","E:/ENMS/Climate Data/WNV/wnv/americas/farm.tif","E:/ENMS/Climate Data/WNV/wnv/americas/urban.tif")
for (L in 1:12) writeRaster(wnv.amer.env[[L]],filename=asdf.files[L], overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/WNV/wnv/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/WNV/wnv/oceania/oceania/flood.tif","E:/ENMS/Climate Data/WNV/wnv/oceania/oceania/farm.tif","E:/ENMS/Climate Data/WNV/wnv/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(wnv.oce.env[[L]],filename=asdf.files[L], overwrite = TRUE)

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

mal.afr.env<-crop(afr.rast.done,afr.asdf)
mal.amer.env<-crop(amer.rast.done,amer.asdf)
mal.eur.env<-crop(eur.rast.done,eur.asdf)
mal.oce.env<-crop(eur.rast.done,eur.asdf)

#write new files
asdf.files<-c(paste("E:/ENMS/Climate Data/Malaria/malaria/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Malaria/malaria/africa/flood.tif","E:/ENMS/Climate Data/Malaria/malaria/africa/farm.tif","E:/ENMS/Climate Data/Malaria/malaria/africa/urban.tif")
for (L in 1:12) writeRaster(mal.afr.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Malaria/malaria/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Malaria/malaria/eurasia/flood.tif","E:/ENMS/Climate Data/Malaria/malaria/eurasia/farm.tif","E:/ENMS/Climate Data/Malaria/malaria/eurasia/urban.tif")
for (L in 1:12) writeRaster(mal.eur.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Malaria/malaria/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Malaria/malaria/americas/flood.tif","E:/ENMS/Climate Data/Malaria/malaria/americas/farm.tif","E:/ENMS/Climate Data/Malaria/malaria/americas/urban.tif")
for (L in 1:12) writeRaster(mal.amer.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Malaria/malaria/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Malaria/malaria/oceania/oceania/flood.tif","E:/ENMS/Climate Data/Malaria/malaria/oceania/oceania/farm.tif","E:/ENMS/Climate Data/Malaria/malaria/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(mal.oce.env[[L]],filename=asdf.files[L],overwrite = TRUE)


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

den.afr.env<-crop(afr.rast.done,afr.asdf)
den.amer.env<-crop(amer.rast.done,amer.asdf)
den.eur.env<-crop(eur.rast.done,eur.asdf)
den.oce.env<-crop(eur.rast.done,eur.asdf)

#write new files
asdf.files<-c(paste("E:/ENMS/Climate Data/Dengue/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Dengue/africa/flood.tif","E:/ENMS/Climate Data/Dengue/africa/farm.tif","E:/ENMS/Climate Data/Dengue/africa/urban.tif")
for (L in 1:12) writeRaster(den.afr.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Dengue/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Dengue/eurasia/flood.tif","E:/ENMS/Climate Data/Dengue/eurasia/farm.tif","E:/ENMS/Climate Data/Dengue/eurasia/urban.tif")
for (L in 1:12) writeRaster(den.eur.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Dengue/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Dengue/americas/flood.tif","E:/ENMS/Climate Data/Dengue/americas/farm.tif","E:/ENMS/Climate Data/Dengue/americas/urban.tif")
for (L in 1:12) writeRaster(den.amer.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/Dengue/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Dengue/oceania/oceania/flood.tif","E:/ENMS/Climate Data/Dengue/oceania/oceania/farm.tif","E:/ENMS/Climate Data/Dengue/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(den.oce.env[[L]],filename=asdf.files[L],overwrite = TRUE)

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

yel.afr.env<-crop(afr.rast.done,afr.asdf)
yel.amer.env<-crop(amer.rast.done,amer.asdf)
yel.eur.env<-crop(eur.rast.done,eur.asdf)
yel.oce.env<-crop(eur.rast.done,eur.asdf)

#write new files
asdf.files<-c(paste("E:/ENMS/Climate Data/YellowFever/yellowf/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/YellowFever/yellowf/africa/flood.tif","E:/ENMS/Climate Data/YellowFever/yellowf/africa/farm.tif","E:/ENMS/Climate Data/YellowFever/yellowf/africa/urban.tif")
for (L in 1:12) writeRaster(yel.afr.env[[L]],filename=asdf.files[L],overwrite = TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/YellowFever/yellowf/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/YellowFever/yellowf/eurasia/flood.tif","E:/ENMS/Climate Data/YellowFever/yellowf/eurasia/farm.tif","E:/ENMS/Climate Data/YellowFever/yellowf/eurasia/urban.tif")
for (L in 1:12) writeRaster(yel.eur.env[[L]],filename=asdf.files[L],overwrite= TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/YellowFever/yellowf/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/YellowFever/yellowf/americas/flood.tif","E:/ENMS/Climate Data/YellowFever/yellowf/americas/farm.tif","E:/ENMS/Climate Data/YellowFever/yellowf/americas/urban.tif")
for (L in 1:12) writeRaster(yel.amer.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMS/Climate Data/YellowFever/yellowf/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/YellowFever/yellowf/oceania/oceania/flood.tif","E:/ENMS/Climate Data/YellowFever/yellowf/oceania/oceania/farm.tif","E:/ENMS/Climate Data/YellowFever/yellowf/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(yel.oce.env[[L]],filename=asdf.files[L],overwrite=TRUE)

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

chik.afr.env<-crop(afr.rast.done,afr.asdf)
chik.amer.env<-crop(amer.rast.done,amer.asdf)
chik.eur.env<-crop(eur.rast.done,eur.asdf)
chik.oce.env<-crop(eur.rast.done,eur.asdf)

#write new files
asdf.files<-c(paste("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Chikungunya/chik/africa/flood.tif","E:/ENMS/Climate Data/Chikungunya/chik/africa/urban.tif","E:/ENMS/Climate Data/Chikungunya/chik/africa/farm.tif")
for (L in 1:12) writeRaster(chik.afr.env[[L]],filename=asdf.files[L], overwrite = TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Chikungunya/chik/eurasia/flood.tif","E:/ENMS/Climate Data/Chikungunya/chik/eurasia/farm.tif","E:/ENMS/Climate Data/Chikungunya/chik/eurasia/urban.tif")
for (L in 1:12) writeRaster(chik.eur.env[[L]],filename=asdf.files[L], overwrite = TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Chikungunya/chik/americas/flood.tif","E:/ENMS/Climate Data/Chikungunya/chik/americas/farm.tif","E:/ENMS/Climate Data/Chikungunya/chik/americas/urban.tif")
for (L in 1:12) writeRaster(chik.amer.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Chikungunya/chik/oceania/oceania/flood.tif","E:/ENMS/Climate Data/Chikungunya/chik/oceania/oceania/farm.tif","E:/ENMS/Climate Data/Chikungunya/chik/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(chik.oce.env[[L]],filename=asdf.files[L],overwrite=TRUE)

###
###Zika
#create modified extents for cropping continents by zika
afr.asdf<-afr.extent
afr.asdf[3]<-zik.range[1]-5
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

zik.afr.env<-crop(afr.rast.done,afr.asdf)
zik.amer.env<-crop(amer.rast.done,amer.asdf)
zik.eur.env<-crop(eur.rast.done,eur.asdf)
zik.oce.env<-crop(eur.rast.done,eur.asdf)

#write new files
asdf.files<-c(paste("E:/ENMs/Climate Data/Zika/zika/africa/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Zika/zika/africa/flood.tif","E:/ENMS/Climate Data/Zika/zika/africa/farm.tif","E:/ENMS/Climate Data/Zika/zika/africa/urban.tif")
for (L in 1:12) writeRaster(zik.afr.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Zika/zika/eurasia/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Zika/zika/eurasia/flood.tif","E:/ENMS/Climate Data/Zika/zika/eurasia/farm.tif","E:/ENMS/Climate Data/Zika/zika/eurasia/urban.tif")
for (L in 1:12) writeRaster(zik.eur.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Zika/zika/americas/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Zika/zika/americas/flood.tif","E:/ENMS/Climate Data/Zika/zika/americas/farm.tif","E:/ENMS/Climate Data/Zika/zika/americas/urban.tif")
for (L in 1:12) writeRaster(zik.amer.env[[L]],filename=asdf.files[L],overwrite=TRUE)
asdf.files<-c(paste("E:/ENMs/Climate Data/Zika/zika/oceania/oceania/bio",c(2,4,8,9,15,16,17,18,19),".tif",sep=""),"E:/ENMS/Climate Data/Zika/zika/oceania/oceania/flood.tif","E:/ENMS/Climate Data/Zika/zika/oceania/oceania/farm.tif","E:/ENMS/Climate Data/Zika/zika/oceania/oceania/urban.tif")
for (L in 1:12) writeRaster(zik.oce.env[[L]],filename=asdf.files[L],overwrite=TRUE)










