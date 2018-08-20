##create new dataframes with all localities, including duplicates, as I will reassign the old names to the new dataframes composed of only unique localities.
WNV.Eurasia.all<-WNV.Eurasia
WNV.S_America.all<-WNV.S_America
WNV.N_America.all<-WNV.N_America

Malaria.africa.all<-Malaria.africa
Malaria.N_America.all<-Malaria.N_America

Zika.Eurasia.all<-Zika.Eurasia
Zika.S_America.all<-Zika.S_America
Zika.N_America.all<-Zika.N_America

YellowFever.Eurasia.all<-YellowFever.Eurasia
YellowFever.N_america.all<-YellowFever.N_america

Dengue.Eurasia.all<-Dengue.Eurasia
Dengue.n_america.all<-Dengue.n_america

Chikungunya.Eurasia.all<-Chikungunya.Eurasia
Chikungunya.N_America.all<-Chikungunya.N_America


#remove duplicate. The duplicated function returns true for duplicates of rows and false for the first instance of each row value, putting the exclamation point in front swaps TRUE and FALSE, so that the first instance of each row value is kept and the duplicates deleted.
WNV.Eurasia<-WNV.Eurasia.all[!duplicated(WNV.Eurasia.all[,c("decimalLongitude","decimalLatitude"),]),]
WNV.S_America<-WNV.S_America.all[!duplicated(WNV.S_America.all[,c("decimalLongitude","decimalLatitude"),]),]
WNV.N_America<-WNV.N_America.all[!duplicated(WNV.N_America.all[,c("decimalLongitude","decimalLatitude"),]),]

Malaria.africa<-Malaria.africa.all[!duplicated(Malaria.africa.all[,c("decimalLongitude","decimalLatitude"),]),]
Malaria.N_America<-Malaria.N_America.all[!duplicated(Malaria.N_America.all[,c("decimalLongitude","decimalLatitude"),]),]

Zika.Eurasia<-Zika.Eurasia.all[!duplicated(Zika.Eurasia.all[,c("decimalLongitude","decimalLatitude"),]),]
Zika.N_America<-Zika.N_America.all[!duplicated(Zika.N_America.all[,c("decimalLongitude","decimalLatitude"),]),]
Zika.S_America<-Zika.S_America.all[!duplicated(Zika.S_America.all[,c("decimalLongitude","decimalLatitude"),]),]

YellowFever.Eurasia<-YellowFever.Eurasia.all[!duplicated(YellowFever.Eurasia.all[,c("decimalLongitude","decimalLatitude"),]),]
YellowFever.N_america<-YellowFever.N_america.all[!duplicated(YellowFever.N_america.all[,c("decimalLongitude","decimalLatitude"),]),]

Dengue.Eurasia<-Dengue.Eurasia.all[!duplicated(Dengue.Eurasia.all[,c("decimalLongitude","decimalLatitude"),]),]
Dengue.n_america<-Dengue.n_america.all[!duplicated(Dengue.n_america.all[,c("decimalLongitude","decimalLatitude"),]),]

Chikungunya.Eurasia<-Chikungunya.Eurasia.all[!duplicated(Chikungunya.Eurasia.all[,c("decimalLongitude","decimalLatitude"),]),]
Chikungunya.N_America<-Chikungunya.N_America.all[!duplicated(Chikungunya.N_America.all[,c("decimalLongitude","decimalLatitude"),]),]

