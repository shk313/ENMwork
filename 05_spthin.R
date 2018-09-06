#set working directiory
setwd()

#install packages
install.packages("spThin")
library(spThin)

##THINNNING
WNV
thin(WNV.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(WNV.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(WNV.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(WNV.S_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(WNV.N_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

WNV_Americas_D<-rbind(WNV.S_America, WNV.N_America)
WNV_Americas<-WNV_Americas_D[!duplicated(WNV_Americas_D[,c("decimalLongitude","decimalLatitude"),]),]

###Import thinned datsets
WNV_NAmerica<-read.csv("WNV_N_America_THIN_thin1.csv", header = T)


thin(WNV_Americas,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)


Malaria
thin(Malaria.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Malaria.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Malaria.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Malaria.S_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Malaria.N_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)


Zika
thin(Zika.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Zika.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Zika.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Zika.S_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Zika.N_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

YellowFever
thin(YellowFever.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(YellowFever.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(YellowFever.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(YellowFever.S_america,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(YellowFever.N_america,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

Dengue
thin(Dengue.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Dengue.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Dengue.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Dengue.s_america,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)
thin(Dengue.n_america,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

Chikungunya
thin(Chikungunya.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thin_africa", verbose=T,write.log.file=F)
thin(Chikungunya.Eurasia,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thin_eurasia", verbose=T,write.log.file=F)
thin(Chikungunya.Oceania.c,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thin_oceania", verbose=T,write.log.file=F)
thin(Chikungunya.S_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thin_samerica", verbose=T,write.log.file=F)
thin(Chikungunya.N_America,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thin_namerica_new", verbose=T,write.log.file=F)


#will show all in environment
ls()
df <- data.frame(matrix(unlist(Chikungunya.africa.list), nrow=132, byrow=T),stringsAsFactors=FALSE)
# summary of thinned dataset
summary(thin)