setwd("~/Documents/OneDrive/Documents/YEAR 4/Disso/Thinned ")

install.packages("spThin")
library(spThin)

install.packages("gdata")
library(gdata)

#Import all thinned datasets.
#-------------------------------------------------------------------------------------------
#WNV.
WNV_Oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Oceania_THIN.csv")
WNV_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Africa_THIN.csv")
WNV_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Eurasia_THIN.csv")
WNV_Americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/WNV_Americas_THIN.csv")


#Thin Americas --- already done.
WNV_Americas<-rbind(WNV_S_America, WNV_N_America)
thin(WNV_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

#-------------------------------------------------------------------------------------------
#Zika.
Zika_Oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Oceania_THIN.csv")
Zika_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Africa_THIN.csv")
Zika_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Eurasia_THIN.csv")
Zika_Americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Zika_Americas_THIN.csv")


Zika_Americas<-rbind(Zika_N_America, Zika_S_America)
thin(Zika_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

#-------------------------------------------------------------------------------------------
#YellowFever
YellowF_Oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Oceania_THIN.csv")
YellowF_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Africa_THIN.csv")
YellowF_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Eurasia_THIN.csv")
YellowF_Americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/YellowF_Americas_THIN.csv")


YellowF_Americas<-rbind(YellowF_N_America, YellowF_S_America)
thin(YellowF_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

#-------------------------------------------------------------------------------------------
  
#Chikungunya
Chik_Oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Oceania_THIN.csv")
Chik_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Africa_THIN.csv")
Chik_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Eurasia_THIN.csv")
Chik_N_America<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Namerica_THIN.csv")
Chik_S_America<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Chik_Samerica_THIN.csv")

Chik_Americas<-rbind(Chik_N_America, Chik_S_America)
thin(Chik_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
#-------------------------------------------------------------------------------------------

#Dengue
Dengue_Oceania <-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Oceania_THIN.csv")
Dengue_Africa <-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Africa_THIN.csv")
Dengue_Eurasia <-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Eurasia_THIN.csv")
Dengue_Americas <-read.csv("J:/Gitlab/ENMwork/Thinned_data/Dengue_Americas_THIN.csv")


Dengue_Americas<-rbind(Dengue_N_America, Dengue_S_America)
thin(Dengue_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
#-------------------------------------------------------------------------------------------

#Malaria
Malaria_Oceania<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Oceania_THIN.csv")
Malaria_Africa<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Africa_THIN.csv")
Malaria_Eurasia<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Eurasia_THIN.csv")
Malaria_Americas<-read.csv("J:/Gitlab/ENMwork/Thinned_data/Malaria_Americas_THIN.csv")


Malaria_Americas<-rbind(Malaria_N_America1, Malaria_S_America1)
thin(Malaria_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
