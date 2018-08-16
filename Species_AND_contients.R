install.packages("raster", dependencies = T)
library(raster)

#uploading continents
continent<-raster("E:/ENMs/Disso/continent_raster 2/cont_008.bil")
plot(continent)

#Aedes aegypti
#1. create a data frame
A.aegypti.df<-A.aegypti.data
#2.extract continent info
A.aegypti.cont<-extract(continent, A.aegypti.df)
#View
A.aegypti.cont
#dataframe
A.aegypti.df$cont<-A.aegypti.cont
#remove NAs
A.aegypti.df.noNA<-A.aegypti.df[!is.na(A.aegypti.df$cont),]
#View
A.aegypti.df.noNA
#Add species column and re-order.
A.aegypti.df.noNA$species<-"A_aegypti"
A.aegypti.df.noNA<-A.aegypti.df.noNA[,c(4,3,1,2)]
#View
A.aegypti.df.noNA
#Make name easier
A_aegypti<-A.aegypti.df.noNA

#continent divisions
A.aegypti_africa<-A_aegypti[A_aegypti$cont=="1",]
A.aegypti_africa
A.aegypti_asia<-A_aegypti[A_aegypti$cont=="2",]
A.aegypti_australia<-A_aegypti[A_aegypti$cont=="3",]
A.aegypti_n.america<-A_aegypti[A_aegypti$cont=="4",]
A.aegypti_oceania<-A_aegypti[A_aegypti$cont=="5",]
A.aegypti_s.america<-A_aegypti[A_aegypti$cont=="6",]
A.aegypti_europe<-A_aegypti[A_aegypti$cont=="8",]
A_aegypti_continents<-rbind(A.aegypti_africa, A.aegypti_africa, A.aegypti_australia, A.aegypti_n.america, A.aegypti_oceania, A.aegypti_s.america, A.aegypti_europe)
A_aegypti_continents
#in a list
A_aegypti_continents.list<-list(A.aegypti_africa, A.aegypti_africa, A.aegypti_australia, A.aegypti_n.america, A.aegypti_oceania, A.aegypti_s.america, A.aegypti_europe)
A_aegypti_continents.list

#Aedes africanus
A.africanus.df<-A.africanus.data
A.africanus.cont<-extract(continent, A.africanus.df)
A.africanus.cont
A.africanus.df$cont<-A.africanus.cont
A.africanus.df.noNA<-A.africanus.df[!is.na(A.africanus.df$cont),]
A.africanus.df.noNA
A.africanus.df.noNA$species<-"A_africanus"
A.africanus.df.noNA<-A.africanus.df.noNA[,c(4,3,1,2)]
A.africanus.df.noNA
A_africanus<-A.africanus.df.noNA

A.africanus_africa<-A_africanus[A_africanus$cont=="1",]
A.africanus_asia<-A_africanus[A_africanus$cont=="2",]
A.africanus_australia<-A_africanus[A_africanus$cont=="3",]
A.africanus_n.america<-A_africanus[A_africanus$cont=="4",]
A.africanus_oceania<-A_africanus[A_africanus$cont=="5",]
A.africanus_s.america<-A_africanus[A_africanus$cont=="6",]
A.africanus_europe<-A_africanus[A_africanus$cont=="8",]

A_africanus_continents<-rbind(A.africanus_africa, A.africanus_asia, A.africanus_australia, A.africanus_n.america, A.africanus_oceania, A.africanus_s.america, A.africanus_europe)
A_africanus_continents
#in a list
A_africanus_continents.list<-list(A.africanus_africa, A.africanus_asia, A.africanus_australia, A.africanus_n.america, A.africanus_oceania, A.africanus_s.america, A.africanus_europe)
A_africanus_continents.list

#Aedes albopictus
A.albopictus.df<-A.albopictus.data
A.albopictus.cont<-extract(continent, A.albopictus.df)
A.albopictus.cont
A.albopictus.df$cont<-A.albopictus.cont
A.albopictus.df.noNA<-A.albopictus.df[!is.na(A.albopictus.df$cont),]
A.albopictus.df.noNA
A.albopictus.df.noNA$species<-"A_albopictus"
A.albopictus.df.noNA<-A.albopictus.df.noNA[,c(4,3,1,2)]
A.albopictus.df.noNA
A_albopictus<-A.albopictus.df.noNA

A.albopictus_africa<-A_albopictus[A_albopictus$cont=="1",]
A.albopictus_asia<-A_albopictus[A_albopictus$cont=="2",]
A.albopictus_australia<-A_albopictus[A_albopictus$cont=="3",]
A.albopictus_n.america<-A_albopictus[A_albopictus$cont=="4",]
A.albopictus_oceania<-A_albopictus[A_albopictus$cont=="5",]
A.albopictus_s.america<-A_albopictus[A_albopictus$cont=="6",]
A.albopictus_europe<-A_albopictus[A_albopictus$cont=="8",]

A_albopictus_continents<-rbind(A.albopictus_africa, A.albopictus_asia, A.albopictus_australia, A.albopictus_n.america, A.albopictus_oceania, A.albopictus_s.america, A.albopictus_europe)
A_albopictus_continents
#in a list
A_albopictus_continents.list<-list(A.albopictus_africa, A.albopictus_africa, A.albopictus_australia, A.albopictus_n.america, A.albopictus_oceania, A.albopictus_s.america, A.albopictus_europe)
A_albopictus_continents.list

#Aedes albothorax
A.albothorax.df<-A.albothorax.data
A.albothorax.cont<-extract(continent, A.albothorax.df)
A.albothorax.cont
A.albothorax.df$cont<-A.albothorax.cont
A.albothorax.df.noNA<-A.albothorax.df[!is.na(A.albothorax.df$cont),]
A.albothorax.df.noNA
A.albothorax.df.noNA$species<-"A_albothorax"
A.albothorax.df.noNA<-A.albothorax.df.noNA[,c(4,3,1,2)]
A.albothorax.df.noNA
A_albothorax<-A.albothorax.df.noNA

A.albothorax_africa<-A_albothorax[A_albothorax$cont=="1",]
A.albothorax_asia<-A_albothorax[A_albothorax$cont=="2",]
A.albothorax_australia<-A_albothorax[A_albothorax$cont=="3",]
A.albothorax_n.america<-A_albothorax[A_albothorax$cont=="4",]
A.albothorax_oceania<-A_albothorax[A_albothorax$cont=="5",]
A.albothorax_s.america<-A_albothorax[A_albothorax$cont=="6",]
A.albothorax_europe<-A_albothorax[A_albothorax$cont=="8",]

A_albothorax_continents<-rbind(A.albothorax_africa, A.albothorax_asia, A.albothorax_australia, A.albothorax_n.america, A.albothorax_oceania, A.albothorax_s.america, A.albothorax_europe)
A_albothorax_continents
#in a list
A_albothorax_continents.list<-list(A.albothorax_africa, A.albothorax_asia, A.albothorax_australia, A.albothorax_n.america, A.albothorax_oceania, A.albothorax_s.america, A.albothorax_europe)
A_albothorax_continents.list

#Aedes atlanticus
A.atlanticus.df<-A.atlanticus.data
A.atlanticus.cont<-extract(continent, A.atlanticus.df)
A.atlanticus.cont
A.atlanticus.df$cont<-A.atlanticus.cont
A.atlanticus.df.noNA<-A.atlanticus.df[!is.na(A.atlanticus.df$cont),]
A.atlanticus.df.noNA
A.atlanticus.df.noNA$species<-"A_atlanticus"
A.atlanticus.df.noNA<-A.atlanticus.df.noNA[,c(4,3,1,2)]
A.atlanticus.df.noNA
A_atlanticus<-A.atlanticus.df.noNA

A.atlanticus_africa<-A_atlanticus[A_atlanticus$cont=="1",]
A.atlanticus_asia<-A_atlanticus[A_atlanticus$cont=="2",]
A.atlanticus_australia<-A_atlanticus[A_atlanticus$cont=="3",]
A.atlanticus_n.america<-A_atlanticus[A_atlanticus$cont=="4",]
A.atlanticus_oceania<-A_atlanticus[A_atlanticus$cont=="5",]
A.atlanticus_s.america<-A_atlanticus[A_atlanticus$cont=="6",]
A.atlanticus_europe<-A_atlanticus[A_atlanticus$cont=="8",]

A_atlanticus_continents<-rbind(A.atlanticus_africa, A.atlanticus_asia, A.atlanticus_australia, A.atlanticus_n.america, A.atlanticus_oceania, A.atlanticus_s.america, A.atlanticus_europe)
A_atlanticus_continents
#in a list
A_atlanticus_continents.list<-list(A.atlanticus_africa, A.atlanticus_asia, A.atlanticus_australia, A.atlanticus_n.america, A.atlanticus_oceania, A.atlanticus_s.america, A.atlanticus_europe)
A_atlanticus_continents.list


#Aedes atropalpus
A.atropalpus.df<-A.atropalpus.data
A.atropalpus.cont<-extract(continent, A.atropalpus.df)
A.atropalpus.cont
A.atropalpus.df$cont<-A.atropalpus.cont
A.atropalpus.df.noNA<-A.atropalpus.df[!is.na(A.atropalpus.df$cont),]
A.atropalpus.df.noNA
A.atropalpus.df.noNA$species<-"A_atropalpus"
A.atropalpus.df.noNA<-A.atropalpus.df.noNA[,c(4,3,1,2)]
A.atropalpus.df.noNA
A_atropalpus<-A.atropalpus.df.noNA

A.atropalpus_africa<-A_atropalpus[A_atropalpus$cont=="1",]
A.atropalpus_asia<-A_atropalpus[A_atropalpus$cont=="2",]
A.atropalpus_australia<-A_atropalpus[A_atropalpus$cont=="3",]
A.atropalpus_n.america<-A_atropalpus[A_atropalpus$cont=="4",]
A.atropalpus_oceania<-A_atropalpus[A_atropalpus$cont=="5",]
A.atropalpus_s.america<-A_atropalpus[A_atropalpus$cont=="6",]
A.atropalpus_europe<-A_atropalpus[A_atropalpus$cont=="8",]

A_atropalpus_continents<-rbind(A.atropalpus_africa, A.atropalpus_asia, A.atropalpus_australia, A.atropalpus_n.america, A.atropalpus_oceania, A.atropalpus_s.america, A.atropalpus_europe)
A_atropalpus_continents
#in a list
A_atropalpus_continents.list<-list(A.atropalpus_africa, A.atropalpus_asia, A.atropalpus_australia, A.atropalpus_n.america, A.atropalpus_oceania, A.atropalpus_s.america, A.atropalpus_europe)
A_atropalpus_continents.list

#Aedes canadensis
A.canadensis.df<-A.canadensis.data
A.canadensis.cont<-extract(continent, A.canadensis.df)
A.canadensis.cont
A.canadensis.df$cont<-A.canadensis.cont
A.canadensis.df.noNA<-A.canadensis.df[!is.na(A.canadensis.df$cont),]
A.canadensis.df.noNA
A.canadensis.df.noNA$species<-"A_canadensis"
A.canadensis.df.noNA<-A.canadensis.df.noNA[,c(4,3,1,2)]
A.canadensis.df.noNA
A_canadensis<-A.canadensis.df.noNA

A.canadensis_africa<-A_canadensis[A_canadensis$cont=="1",]
A.canadensis_asia<-A_canadensis[A_canadensis$cont=="2",]
A.canadensis_australia<-A_canadensis[A_canadensis$cont=="3",]
A.canadensis_n.america<-A_canadensis[A_canadensis$cont=="4",]
A.canadensis_oceania<-A_canadensis[A_canadensis$cont=="5",]
A.canadensis_s.america<-A_canadensis[A_canadensis$cont=="6",]
A.canadensis_europe<-A_canadensis[A_canadensis$cont=="8",]

A_canadensis_continents<-rbind(A.canadensis_africa, A.canadensis_asia, A.canadensis_australia, A.canadensis_n.america, A.canadensis_oceania, A.canadensis_s.america, A.canadensis_europe)
A_canadensis_continents
#in a list
A_canadensis_continents.list<-list(A.canadensis_africa, A.canadensis_asia, A.canadensis_australia, A.canadensis_n.america, A.canadensis_oceania, A.canadensis_s.america, A.canadensis_europe)
A_canadensis_continents.list

#Aedes cantans
A.cantans.df<-A.cantans.data
A.cantans.cont<-extract(continent, A.cantans.df)
A.cantans.cont
A.cantans.df$cont<-A.cantans.cont
A.cantans.df.noNA<-A.cantans.df[!is.na(A.cantans.df$cont),]
A.cantans.df.noNA
A.cantans.df.noNA$species<-"A_cantans"
A.cantans.df.noNA<-A.cantans.df.noNA[,c(4,3,1,2)]
A.cantans.df.noNA
A_cantans<-A.cantans.df.noNA

A.cantans_africa<-A_cantans[A_cantans$cont=="1",]
A.cantans_asia<-A_cantans[A_cantans$cont=="2",]
A.cantans_australia<-A_cantans[A_cantans$cont=="3",]
A.cantans_n.america<-A_cantans[A_cantans$cont=="4",]
A.cantans_oceania<-A_cantans[A_cantans$cont=="5",]
A.cantans_s.america<-A_cantans[A_cantans$cont=="6",]
A.cantans_europe<-A_cantans[A_cantans$cont=="8",]

A_cantans_continents<-rbind(A.cantans_africa, A.cantans_asia, A.cantans_australia, A.cantans_n.america, A.cantans_oceania, A.cantans_s.america, A.cantans_europe)
A_cantans_continents
#in a list
A_cantans_continents.list<-list(A.cantans_africa, A.cantans_asia, A.cantans_australia, A.cantans_n.america, A.cantans_oceania, A.cantans_s.america, A.cantans_europe)
A_cantans_continents.list

#Aedes cantator
A.cantator.df<-A.cantator.data
A.cantator.cont<-extract(continent, A.cantator.df)
A.cantator.cont
A.cantator.df$cont<-A.cantator.cont
A.cantator.df.noNA<-A.cantator.df[!is.na(A.cantator.df$cont),]
A.cantator.df.noNA
A.cantator.df.noNA$species<-"A_cantator"
A.cantator.df.noNA<-A.cantator.df.noNA[,c(4,3,1,2)]
A.cantator.df.noNA
A_cantator<-A.cantator.df.noNA

A.cantator_africa<-A_cantator[A_cantator$cont=="1",]
A.cantator_asia<-A_cantator[A_cantator$cont=="2",]
A.cantator_australia<-A_cantator[A_cantator$cont=="3",]
A.cantator_n.america<-A_cantator[A_cantator$cont=="4",]
A.cantator_oceania<-A_cantator[A_cantator$cont=="5",]
A.cantator_s.america<-A_cantator[A_cantator$cont=="6",]
A.cantator_europe<-A_cantator[A_cantator$cont=="8",]

A_cantator_continents<-rbind(A.cantator_africa, A.cantator_asia, A.cantator_australia, A.cantator_n.america, A.cantator_oceania, A.cantator_s.america, A.cantator_europe)
A_cantator_continents
#in a list
A_cantator_continents.list<-list(A.cantator_africa, A.cantator_asia, A.cantator_australia, A.cantator_n.america, A.cantator_oceania, A.cantator_s.america, A.cantator_europe)
A_cantator_continents.list

#Aedes cinereus
A.cinereus.df<-A.cinereus.data
A.cinereus.cont<-extract(continent, A.cinereus.df)
A.cinereus.cont
A.cinereus.df$cont<-A.cinereus.cont
A.cinereus.df.noNA<-A.cinereus.df[!is.na(A.cinereus.df$cont),]
A.cinereus.df.noNA
A.cinereus.df.noNA$species<-"A_cinereus"
A.cinereus.df.noNA<-A.cinereus.df.noNA[,c(4,3,1,2)]
A.cinereus.df.noNA
A_cinereus<-A.cinereus.df.noNA

A.cinereus_africa<-A_cinereus[A_cinereus$cont=="1",]
A.cinereus_asia<-A_cinereus[A_cinereus$cont=="2",]
A.cinereus_australia<-A_cinereus[A_cinereus$cont=="3",]
A.cinereus_n.america<-A_cinereus[A_cinereus$cont=="4",]
A.cinereus_oceania<-A_cinereus[A_cinereus$cont=="5",]
A.cinereus_s.america<-A_cinereus[A_cinereus$cont=="6",]
A.cinereus_europe<-A_cinereus[A_cinereus$cont=="8",]

A_cinereus_continents<-rbind(A.cinereus_africa, A.cinereus_asia, A.cinereus_australia, A.cinereus_n.america, A.cinereus_oceania, A.cinereus_s.america, A.cinereus_europe)
A_cinereus_continents
#in a list
A_cinereus_continents.list<-list(A.cinereus_africa, A.cinereus_asia, A.cinereus_australia, A.cinereus_n.america, A.cinereus_oceania, A.cinereus_s.america, A.cinereus_europe)
A_cinereus_continents.list

#Aedes condolescens
A.condolescens.df<-A.condolescens.data
A.condolescens.cont<-extract(continent, A.condolescens.df)
A.condolescens.cont
A.condolescens.df$cont<-A.condolescens.cont
A.condolescens.df.noNA<-A.condolescens.df[!is.na(A.condolescens.df$cont),]
A.condolescens.df.noNA
A.condolescens.df.noNA$species<-"A_condolescens"
A.condolescens.df.noNA<-A.condolescens.df.noNA[,c(4,3,1,2)]
A.condolescens.df.noNA
A_condolescens<-A.condolescens.df.noNA

A.condolescens_africa<-A_condolescens[A_condolescens$cont=="1",]
A.condolescens_asia<-A_condolescens[A_condolescens$cont=="2",]
A.condolescens_australia<-A_condolescens[A_condolescens$cont=="3",]
A.condolescens_n.america<-A_condolescens[A_condolescens$cont=="4",]
A.condolescens_oceania<-A_condolescens[A_condolescens$cont=="5",]
A.condolescens_s.america<-A_condolescens[A_condolescens$cont=="6",]
A.condolescens_europe<-A_condolescens[A_condolescens$cont=="8",]

A_condolescens_continents<-rbind(A.condolescens_africa, A.condolescens_asia, A.condolescens_australia, A.condolescens_n.america, A.condolescens_oceania, A.condolescens_s.america, A.condolescens_europe)
A_condolescens_continents
#in a list
A_condolescens_continents.list<-list(A.condolescens_africa, A.condolescens_asia, A.condolescens_australia, A.condolescens_n.america, A.condolescens_oceania, A.condolescens_s.america, A.condolescens_europe)
A_condolescens_continents.list

#Aedes dalzieli
A.dalzieli.df<-A.dalzieli.data
A.dalzieli.cont<-extract(continent, A.dalzieli.df)
A.dalzieli.cont
A.dalzieli.df$cont<-A.dalzieli.cont
A.dalzieli.df.noNA<-A.dalzieli.df[!is.na(A.dalzieli.df$cont),]
A.dalzieli.df.noNA
A.dalzieli.df.noNA$species<-"A_dalzieli"
A.dalzieli.df.noNA<-A.dalzieli.df.noNA[,c(4,3,1,2)]
A.dalzieli.df.noNA
A_dalzieli<-A.dalzieli.df.noNA

A.dalzieli_africa<-A_dalzieli[A_dalzieli$cont=="1",]
A.dalzieli_asia<-A_dalzieli[A_dalzieli$cont=="2",]
A.dalzieli_australia<-A_dalzieli[A_dalzieli$cont=="3",]
A.dalzieli_n.america<-A_dalzieli[A_dalzieli$cont=="4",]
A.dalzieli_oceania<-A_dalzieli[A_dalzieli$cont=="5",]
A.dalzieli_s.america<-A_dalzieli[A_dalzieli$cont=="6",]
A.dalzieli_europe<-A_dalzieli[A_dalzieli$cont=="8",]

A_dalzieli_continents<-rbind(A.dalzieli_africa, A.dalzieli_asia, A.dalzieli_australia, A.dalzieli_n.america, A.dalzieli_oceania, A.dalzieli_s.america, A.dalzieli_europe)
A_dalzieli_continents
#in a list
A_dalzieli_continents.list<-list(A.dalzieli_africa, A.dalzieli_asia, A.dalzieli_australia, A.dalzieli_n.america, A.dalzieli_oceania, A.dalzieli_s.america, A.dalzieli_europe)
A_dalzieli_continents.list

#Aedes dorsalis
A.dorsalis.df<-A.dorsalis.data
A.dorsalis.cont<-extract(continent, A.dorsalis.df)
A.dorsalis.cont
A.dorsalis.df$cont<-A.dorsalis.cont
A.dorsalis.df.noNA<-A.dorsalis.df[!is.na(A.dorsalis.df$cont),]
A.dorsalis.df.noNA
A.dorsalis.df.noNA$species<-"A_dorsalis"
A.dorsalis.df.noNA<-A.dorsalis.df.noNA[,c(4,3,1,2)]
A.dorsalis.df.noNA
A_dorsalis<-A.dorsalis.df.noNA

A.dorsalis_africa<-A_dorsalis[A_dorsalis$cont=="1",]
A.dorsalis_asia<-A_dorsalis[A_dorsalis$cont=="2",]
A.dorsalis_australia<-A_dorsalis[A_dorsalis$cont=="3",]
A.dorsalis_n.america<-A_dorsalis[A_dorsalis$cont=="4",]
A.dorsalis_oceania<-A_dorsalis[A_dorsalis$cont=="5",]
A.dorsalis_s.america<-A_dorsalis[A_dorsalis$cont=="6",]
A.dorsalis_europe<-A_dorsalis[A_dorsalis$cont=="8",]

A_dorsalis_continents<-rbind(A.dorsalis_africa, A.dorsalis_asia, A.dorsalis_australia, A.dorsalis_n.america, A.dorsalis_oceania, A.dorsalis_s.america, A.dorsalis_europe)
A_dorsalis_continents
#in a list
A_dorsalis_continents.list<-list(A.dorsalis_africa, A.dorsalis_asia, A.dorsalis_australia, A.dorsalis_n.america, A.dorsalis_oceania, A.dorsalis_s.america, A.dorsalis_europe)
A_dorsalis_continents.list

#Aedes dupreei
A.dupreei.df<-A.dupreei.data
A.dupreei.cont<-extract(continent, A.dupreei.df)
A.dupreei.cont
A.dupreei.df$cont<-A.dupreei.cont
A.dupreei.df.noNA<-A.dupreei.df[!is.na(A.dupreei.df$cont),]
A.dupreei.df.noNA
A.dupreei.df.noNA$species<-"A_dupreei"
A.dupreei.df.noNA<-A.dupreei.df.noNA[,c(4,3,1,2)]
A.dupreei.df.noNA
A_dupreei<-A.dupreei.df.noNA

A.dupreei_africa<-A_dupreei[A_dupreei$cont=="1",]
A.dupreei_asia<-A_dupreei[A_dupreei$cont=="2",]
A.dupreei_australia<-A_dupreei[A_dupreei$cont=="3",]
A.dupreei_n.america<-A_dupreei[A_dupreei$cont=="4",]
A.dupreei_oceania<-A_dupreei[A_dupreei$cont=="5",]
A.dupreei_s.america<-A_dupreei[A_dupreei$cont=="6",]
A.dupreei_europe<-A_dupreei[A_dupreei$cont=="8",]

A_dupreei_continents<-rbind(A.dupreei_africa, A.dupreei_asia, A.dupreei_australia, A.dupreei_n.america, A.dupreei_oceania, A.dupreei_s.america, A.dupreei_europe)
A_dupreei_continents
#in a list
A_dupreei_continents.list<-list(A.dupreei_africa, A.dupreei_asia, A.dupreei_australia, A.dupreei_n.america, A.dupreei_oceania, A.dupreei_s.america, A.dupreei_europe)
A_dupreei_continents.list

#Aedes excrucians
A.excrucians.df<-A.excrucians.data
A.excrucians.cont<-extract(continent, A.excrucians.df)
A.excrucians.cont
A.excrucians.df$cont<-A.excrucians.cont
A.excrucians.df.noNA<-A.excrucians.df[!is.na(A.excrucians.df$cont),]
A.excrucians.df.noNA
A.excrucians.df.noNA$species<-"A_excrucians"
A.excrucians.df.noNA<-A.excrucians.df.noNA[,c(4,3,1,2)]
A.excrucians.df.noNA
A_excrucians<-A.excrucians.df.noNA

A.excrucians_africa<-A_excrucians[A_excrucians$cont=="1",]
A.excrucians_asia<-A_excrucians[A_excrucians$cont=="2",]
A.excrucians_australia<-A_excrucians[A_excrucians$cont=="3",]
A.excrucians_n.america<-A_excrucians[A_excrucians$cont=="4",]
A.excrucians_oceania<-A_excrucians[A_excrucians$cont=="5",]
A.excrucians_s.america<-A_excrucians[A_excrucians$cont=="6",]
A.excrucians_europe<-A_excrucians[A_excrucians$cont=="8",]

A_excrucians_continents<-rbind(A.excrucians_africa, A.excrucians_asia, A.excrucians_australia, A.excrucians_n.america, A.excrucians_oceania, A.excrucians_s.america, A.excrucians_europe)
A_excrucians_continents
#in a list
A_excrucians_continents.list<-list(A.excrucians_africa, A.excrucians_asia, A.excrucians_australia, A.excrucians_n.america, A.excrucians_oceania, A.excrucians_s.america, A.excrucians_europe)
A_excrucians_continents.list

#Aedes fitchii
A.fitchii.df<-A.fitchii.data
A.fitchii.cont<-extract(continent, A.fitchii.df)
A.fitchii.cont
A.fitchii.df$cont<-A.fitchii.cont
A.fitchii.df.noNA<-A.fitchii.df[!is.na(A.fitchii.df$cont),]
A.fitchii.df.noNA
A.fitchii.df.noNA$species<-"A_fitchii"
A.fitchii.df.noNA<-A.fitchii.df.noNA[,c(4,3,1,2)]
A.fitchii.df.noNA
A_fitchii<-A.fitchii.df.noNA

A.fitchii_africa<-A_fitchii[A_fitchii$cont=="1",]
A.fitchii_asia<-A_fitchii[A_fitchii$cont=="2",]
A.fitchii_australia<-A_fitchii[A_fitchii$cont=="3",]
A.fitchii_n.america<-A_fitchii[A_fitchii$cont=="4",]
A.fitchii_oceania<-A_fitchii[A_fitchii$cont=="5",]
A.fitchii_s.america<-A_fitchii[A_fitchii$cont=="6",]
A.fitchii_europe<-A_fitchii[A_fitchii$cont=="8",]

A_fitchii_continents<-rbind(A.fitchii_africa, A.fitchii_asia, A.fitchii_australia, A.fitchii_n.america, A.fitchii_oceania, A.fitchii_s.america, A.fitchii_europe)
A_fitchii_continents
#in a list
A_fitchii_continents.list<-list(A.fitchii_africa, A.fitchii_asia, A.fitchii_australia, A.fitchii_n.america, A.fitchii_oceania, A.fitchii_s.america, A.fitchii_europe)
A_fitchii_continents.list


#Aedes fowleri
A.fowleri.df<-A.fowleri.data
A.fowleri.cont<-extract(continent, A.fowleri.df)
A.fowleri.cont
A.fowleri.df$cont<-A.fowleri.cont
A.fowleri.df.noNA<-A.fowleri.df[!is.na(A.fowleri.df$cont),]
A.fowleri.df.noNA
A.fowleri.df.noNA$species<-"A_fowleri"
A.fowleri.df.noNA<-A.fowleri.df.noNA[,c(4,3,1,2)]
A.fowleri.df.noNA
A_fowleri<-A.fowleri.df.noNA

A.fowleri_africa<-A_fowleri[A_fowleri$cont=="1",]
A.fowleri_asia<-A_fowleri[A_fowleri$cont=="2",]
A.fowleri_australia<-A_fowleri[A_fowleri$cont=="3",]
A.fowleri_n.america<-A_fowleri[A_fowleri$cont=="4",]
A.fowleri_oceania<-A_fowleri[A_fowleri$cont=="5",]
A.fowleri_s.america<-A_fowleri[A_fowleri$cont=="6",]
A.fowleri_europe<-A_fowleri[A_fowleri$cont=="8",]

A_fowleri_continents<-rbind(A.fowleri_africa, A.fowleri_asia, A.fowleri_australia, A.fowleri_n.america, A.fowleri_oceania, A.fowleri_s.america, A.fowleri_europe)
A_fowleri_continents
#in a list
A_fowleri_continents.list<-list(A.fowleri_africa, A.fowleri_asia, A.fowleri_australia, A.fowleri_n.america, A.fowleri_oceania, A.fowleri_s.america, A.fowleri_europe)
A_fowleri_continents.list

#Aedes fulvus
A.fulvus.df<-A.fulvus.data
A.fulvus.cont<-extract(continent, A.fulvus.df)
A.fulvus.cont
A.fulvus.df$cont<-A.fulvus.cont
A.fulvus.df.noNA<-A.fulvus.df[!is.na(A.fulvus.df$cont),]
A.fulvus.df.noNA
A.fulvus.df.noNA$species<-"A_fulvus"
A.fulvus.df.noNA<-A.fulvus.df.noNA[,c(4,3,1,2)]
A.fulvus.df.noNA
A_fulvus<-A.fulvus.df.noNA

A.fulvus_africa<-A_fulvus[A_fulvus$cont=="1",]
A.fulvus_asia<-A_fulvus[A_fulvus$cont=="2",]
A.fulvus_australia<-A_fulvus[A_fulvus$cont=="3",]
A.fulvus_n.america<-A_fulvus[A_fulvus$cont=="4",]
A.fulvus_oceania<-A_fulvus[A_fulvus$cont=="5",]
A.fulvus_s.america<-A_fulvus[A_fulvus$cont=="6",]
A.fulvus_europe<-A_fulvus[A_fulvus$cont=="8",]

A_fulvus_continents<-rbind(A.fulvus_africa, A.fulvus_asia, A.fulvus_australia, A.fulvus_n.america, A.fulvus_oceania, A.fulvus_s.america, A.fulvus_europe)
A_fulvus_continents
#in a list
A_fulvus_continents.list<-list(A.fulvus_africa, A.fulvus_asia, A.fulvus_australia, A.fulvus_n.america, A.fulvus_oceania, A.fulvus_s.america, A.fulvus_europe)
A_fulvus_continents.list

#Aedes furcifer
A.furcifer.df<-A.furcifer.data
A.furcifer.cont<-extract(continent, A.furcifer.df)
A.furcifer.cont
A.furcifer.df$cont<-A.furcifer.cont
A.furcifer.df.noNA<-A.furcifer.df[!is.na(A.furcifer.df$cont),]
A.furcifer.df.noNA
A.furcifer.df.noNA$species<-"A_furcifer"
A.furcifer.df.noNA<-A.furcifer.df.noNA[,c(4,3,1,2)]
A.furcifer.df.noNA
A_furcifer<-A.furcifer.df.noNA

A.furcifer_africa<-A_furcifer[A_furcifer$cont=="1",]
A.furcifer_asia<-A_furcifer[A_furcifer$cont=="2",]
A.furcifer_australia<-A_furcifer[A_furcifer$cont=="3",]
A.furcifer_n.america<-A_furcifer[A_furcifer$cont=="4",]
A.furcifer_oceania<-A_furcifer[A_furcifer$cont=="5",]
A.furcifer_s.america<-A_furcifer[A_furcifer$cont=="6",]
A.furcifer_europe<-A_furcifer[A_furcifer$cont=="8",]

A_furcifer_continents<-rbind(A.furcifer_africa, A.furcifer_asia, A.furcifer_australia, A.furcifer_n.america, A.furcifer_oceania, A.furcifer_s.america, A.furcifer_europe)
A_furcifer_continents
#in a list
A_furcifer_continents.list<-list(A.furcifer_africa, A.furcifer_asia, A.furcifer_australia, A.furcifer_n.america, A.furcifer_oceania, A.furcifer_s.america, A.furcifer_europe)
A_furcifer_continents.list

#Aedes grossbecki
A.grossbecki.df<-A.grossbecki.data
A.grossbecki.cont<-extract(continent, A.grossbecki.df)
A.grossbecki.cont
A.grossbecki.df$cont<-A.grossbecki.cont
A.grossbecki.df.noNA<-A.grossbecki.df[!is.na(A.grossbecki.df$cont),]
A.grossbecki.df.noNA
A.grossbecki.df.noNA$species<-"A_grossbecki"
A.grossbecki.df.noNA<-A.grossbecki.df.noNA[,c(4,3,1,2)]
A.grossbecki.df.noNA
A_grossbecki<-A.grossbecki.df.noNA

A.grossbecki_africa<-A_grossbecki[A_grossbecki$cont=="1",]
A.grossbecki_asia<-A_grossbecki[A_grossbecki$cont=="2",]
A.grossbecki_australia<-A_grossbecki[A_grossbecki$cont=="3",]
A.grossbecki_n.america<-A_grossbecki[A_grossbecki$cont=="4",]
A.grossbecki_oceania<-A_grossbecki[A_grossbecki$cont=="5",]
A.grossbecki_s.america<-A_grossbecki[A_grossbecki$cont=="6",]
A.grossbecki_europe<-A_grossbecki[A_grossbecki$cont=="8",]

A_grossbecki_continents<-rbind(A.grossbecki_africa, A.grossbecki_asia, A.grossbecki_australia, A.grossbecki_n.america, A.grossbecki_oceania, A.grossbecki_s.america, A.grossbecki_europe)
A_grossbecki_continents
#in a list
A_grossbecki_continents.list<-list(A.grossbecki_africa, A.grossbecki_asia, A.grossbecki_australia, A.grossbecki_n.america, A.grossbecki_oceania, A.grossbecki_s.america, A.grossbecki_europe)
A_grossbecki_continents.list

#Aedes hensilli
A.hensilli.df<-A.hensilli.data
A.hensilli.cont<-extract(continent, A.hensilli.df)
A.hensilli.cont
A.hensilli.df$cont<-A.hensilli.cont
A.hensilli.df.noNA<-A.hensilli.df[!is.na(A.hensilli.df$cont),]
A.hensilli.df.noNA
A.hensilli.df.noNA$species<-"A_hensilli"
A.hensilli.df.noNA<-A.hensilli.df.noNA[,c(4,3,1,2)]
A.hensilli.df.noNA
A_hensilli<-A.hensilli.df.noNA

A.hensilli_africa<-A_hensilli[A_hensilli$cont=="1",]
A.hensilli_asia<-A_hensilli[A_hensilli$cont=="2",]
A.hensilli_australia<-A_hensilli[A_hensilli$cont=="3",]
A.hensilli_n.america<-A_hensilli[A_hensilli$cont=="4",]
A.hensilli_oceania<-A_hensilli[A_hensilli$cont=="5",]
A.hensilli_s.america<-A_hensilli[A_hensilli$cont=="6",]
A.hensilli_europe<-A_hensilli[A_hensilli$cont=="8",]

A_hensilli_continents<-rbind(A.hensilli_africa, A.hensilli_asia, A.hensilli_australia, A.hensilli_n.america, A.hensilli_oceania, A.hensilli_s.america, A.hensilli_europe)
A_hensilli_continents
#in a list
A_hensilli_continents.list<-list(A.hensilli_africa, A.hensilli_asia, A.hensilli_australia, A.hensilli_n.america, A.hensilli_oceania, A.hensilli_s.america, A.hensilli_europe)
A_hensilli_continents.list

#Aedes hirustus
A.hirustus.df<-A.hirustus.data
A.hirustus.cont<-extract(continent, A.hirustus.df)
A.hirustus.cont
A.hirustus.df$cont<-A.hirustus.cont
A.hirustus.df.noNA<-A.hirustus.df[!is.na(A.hirustus.df$cont),]
A.hirustus.df.noNA
A.hirustus.df.noNA$species<-"A_hirustus"
A.hirustus.df.noNA<-A.hirustus.df.noNA[,c(4,3,1,2)]
A.hirustus.df.noNA
A_hirustus<-A.hirustus.df.noNA

A.hirustus_africa<-A_hirustus[A_hirustus$cont=="1",]
A.hirustus_asia<-A_hirustus[A_hirustus$cont=="2",]
A.hirustus_australia<-A_hirustus[A_hirustus$cont=="3",]
A.hirustus_n.america<-A_hirustus[A_hirustus$cont=="4",]
A.hirustus_oceania<-A_hirustus[A_hirustus$cont=="5",]
A.hirustus_s.america<-A_hirustus[A_hirustus$cont=="6",]
A.hirustus_europe<-A_hirustus[A_hirustus$cont=="8",]

A_hirustus_continents<-rbind(A.hirustus_africa, A.hirustus_asia, A.hirustus_australia, A.hirustus_n.america, A.hirustus_oceania, A.hirustus_s.america, A.hirustus_europe)
A_hirustus_continents
#in a list
A_hirustus_continents.list<-list(A.hirustus_africa, A.hirustus_asia, A.hirustus_australia, A.hirustus_n.america, A.hirustus_oceania, A.hirustus_s.america, A.hirustus_europe)
A_hirustus_continents.list

#Aedes infirmatus
A.infirmatus.df<-A.infirmatus.data
A.infirmatus.cont<-extract(continent, A.infirmatus.df)
A.infirmatus.cont
A.infirmatus.df$cont<-A.infirmatus.cont
A.infirmatus.df.noNA<-A.infirmatus.df[!is.na(A.infirmatus.df$cont),]
A.infirmatus.df.noNA
A.infirmatus.df.noNA$species<-"A_infirmatus"
A.infirmatus.df.noNA<-A.infirmatus.df.noNA[,c(4,3,1,2)]
A.infirmatus.df.noNA
A_infirmatus<-A.infirmatus.df.noNA

A.infirmatus_africa<-A_infirmatus[A_infirmatus$cont=="1",]
A.infirmatus_asia<-A_infirmatus[A_infirmatus$cont=="2",]
A.infirmatus_australia<-A_infirmatus[A_infirmatus$cont=="3",]
A.infirmatus_n.america<-A_infirmatus[A_infirmatus$cont=="4",]
A.infirmatus_oceania<-A_infirmatus[A_infirmatus$cont=="5",]
A.infirmatus_s.america<-A_infirmatus[A_infirmatus$cont=="6",]
A.infirmatus_europe<-A_infirmatus[A_infirmatus$cont=="8",]

A_infirmatus_continents<-rbind(A.infirmatus_africa, A.infirmatus_asia, A.infirmatus_australia, A.infirmatus_n.america, A.infirmatus_oceania, A.infirmatus_s.america, A.infirmatus_europe)
A_infirmatus_continents
#in a list
A_infirmatus_continents.list<-list(A.infirmatus_africa, A.infirmatus_asia, A.infirmatus_australia, A.infirmatus_n.america, A.infirmatus_oceania, A.infirmatus_s.america, A.infirmatus_europe)
A_infirmatus_continents.list

#Aedes japonicus
A.japonicus.df<-A.japonicus.data
A.japonicus.cont<-extract(continent, A.japonicus.df)
A.japonicus.cont
A.japonicus.df$cont<-A.japonicus.cont
A.japonicus.df.noNA<-A.japonicus.df[!is.na(A.japonicus.df$cont),]
A.japonicus.df.noNA
A.japonicus.df.noNA$species<-"A_japonicus"
A.japonicus.df.noNA<-A.japonicus.df.noNA[,c(4,3,1,2)]
A.japonicus.df.noNA
A_japonicus<-A.japonicus.df.noNA

A.japonicus_africa<-A_japonicus[A_japonicus$cont=="1",]
A.japonicus_asia<-A_japonicus[A_japonicus$cont=="2",]
A.japonicus_australia<-A_japonicus[A_japonicus$cont=="3",]
A.japonicus_n.america<-A_japonicus[A_japonicus$cont=="4",]
A.japonicus_oceania<-A_japonicus[A_japonicus$cont=="5",]
A.japonicus_s.america<-A_japonicus[A_japonicus$cont=="6",]
A.japonicus_europe<-A_japonicus[A_japonicus$cont=="8",]

A_japonicus_continents<-rbind(A.japonicus_africa, A.japonicus_asia, A.japonicus_australia, A.japonicus_n.america, A.japonicus_oceania, A.japonicus_s.america, A.japonicus_europe)
A_japonicus_continents
#in a list
A_japonicus_continents.list<-list(A.japonicus_africa, A.japonicus_asia, A.japonicus_australia, A.japonicus_n.america, A.japonicus_oceania, A.japonicus_s.america, A.japonicus_europe)
A_japonicus_continents.list

#Aedes luteocephalus
A.luteocephalus.df<-A.luteocephalus.data
A.luteocephalus.cont<-extract(continent, A.luteocephalus.df)
A.luteocephalus.cont
A.luteocephalus.df$cont<-A.luteocephalus.cont
A.luteocephalus.df.noNA<-A.luteocephalus.df[!is.na(A.luteocephalus.df$cont),]
A.luteocephalus.df.noNA
A.luteocephalus.df.noNA$species<-"A_luteocephalus"
A.luteocephalus.df.noNA<-A.luteocephalus.df.noNA[,c(4,3,1,2)]
A.luteocephalus.df.noNA
A_luteocephalus<-A.luteocephalus.df.noNA

A.luteocephalus_africa<-A_luteocephalus[A_luteocephalus$cont=="1",]
A.luteocephalus_asia<-A_luteocephalus[A_luteocephalus$cont=="2",]
A.luteocephalus_australia<-A_luteocephalus[A_luteocephalus$cont=="3",]
A.luteocephalus_n.america<-A_luteocephalus[A_luteocephalus$cont=="4",]
A.luteocephalus_oceania<-A_luteocephalus[A_luteocephalus$cont=="5",]
A.luteocephalus_s.america<-A_luteocephalus[A_luteocephalus$cont=="6",]
A.luteocephalus_europe<-A_luteocephalus[A_luteocephalus$cont=="8",]

A_luteocephalus_continents<-rbind(A.luteocephalus_africa, A.luteocephalus_asia, A.luteocephalus_australia, A.luteocephalus_n.america, A.luteocephalus_oceania, A.luteocephalus_s.america, A.luteocephalus_europe)
A_luteocephalus_continents
#in a list
A_luteocephalus_continents.list<-list(A.luteocephalus_africa, A.luteocephalus_asia, A.luteocephalus_australia, A.luteocephalus_n.america, A.luteocephalus_oceania, A.luteocephalus_s.america, A.luteocephalus_europe)
A_luteocephalus_continents.list

#Aedes melanimon
A.melanimon.df<-A.melanimon.data
A.melanimon.cont<-extract(continent, A.melanimon.df)
A.melanimon.cont
A.melanimon.df$cont<-A.melanimon.cont
A.melanimon.df.noNA<-A.melanimon.df[!is.na(A.melanimon.df$cont),]
A.melanimon.df.noNA
A.melanimon.df.noNA$species<-"A_melanimon"
A.melanimon.df.noNA<-A.melanimon.df.noNA[,c(4,3,1,2)]
A.melanimon.df.noNA
A_melanimon<-A.melanimon.df.noNA

A.melanimon_africa<-A_melanimon[A_melanimon$cont=="1",]
A.melanimon_asia<-A_melanimon[A_melanimon$cont=="2",]
A.melanimon_australia<-A_melanimon[A_melanimon$cont=="3",]
A.melanimon_n.america<-A_melanimon[A_melanimon$cont=="4",]
A.melanimon_oceania<-A_melanimon[A_melanimon$cont=="5",]
A.melanimon_s.america<-A_melanimon[A_melanimon$cont=="6",]
A.melanimon_europe<-A_melanimon[A_melanimon$cont=="8",]

A_melanimon_continents<-rbind(A.melanimon_africa, A.melanimon_asia, A.melanimon_australia, A.melanimon_n.america, A.melanimon_oceania, A.melanimon_s.america, A.melanimon_europe)
A_melanimon_continents
#in a list
A_melanimon_continents.list<-list(A.melanimon_africa, A.melanimon_asia, A.melanimon_australia, A.melanimon_n.america, A.melanimon_oceania, A.melanimon_s.america, A.melanimon_europe)
A_melanimon_continents.list

#Aedes metallicus
A.metallicus.df<-A.metallicus.data
A.metallicus.cont<-extract(continent, A.metallicus.df)
A.metallicus.cont
A.metallicus.df$cont<-A.metallicus.cont
A.metallicus.df.noNA<-A.metallicus.df[!is.na(A.metallicus.df$cont),]
A.metallicus.df.noNA
A.metallicus.df.noNA$species<-"A_metallicus"
A.metallicus.df.noNA<-A.metallicus.df.noNA[,c(4,3,1,2)]
A.metallicus.df.noNA
A_metallicus<-A.metallicus.df.noNA

A.metallicus_africa<-A_metallicus[A_metallicus$cont=="1",]
A.metallicus_asia<-A_metallicus[A_metallicus$cont=="2",]
A.metallicus_australia<-A_metallicus[A_metallicus$cont=="3",]
A.metallicus_n.america<-A_metallicus[A_metallicus$cont=="4",]
A.metallicus_oceania<-A_metallicus[A_metallicus$cont=="5",]
A.metallicus_s.america<-A_metallicus[A_metallicus$cont=="6",]
A.metallicus_europe<-A_metallicus[A_metallicus$cont=="8",]

A_metallicus_continents<-rbind(A.metallicus_africa, A.metallicus_asia, A.metallicus_australia, A.metallicus_n.america, A.metallicus_oceania, A.metallicus_s.america, A.metallicus_europe)
A_metallicus_continents
#in a list
A_metallicus_continents.list<-list(A.metallicus_africa, A.metallicus_asia, A.metallicus_australia, A.metallicus_n.america, A.metallicus_oceania, A.metallicus_s.america, A.metallicus_europe)
A_metallicus_continents.list

#Aedes minutus
A.minutus.df<-A.minutus.data
A.minutus.cont<-extract(continent, A.minutus.df)
A.minutus.cont
A.minutus.df$cont<-A.minutus.cont
A.minutus.df.noNA<-A.minutus.df[!is.na(A.minutus.df$cont),]
A.minutus.df.noNA
A.minutus.df.noNA$species<-"A_minutus"
A.minutus.df.noNA<-A.minutus.df.noNA[,c(4,3,1,2)]
A.minutus.df.noNA
A_minutus<-A.minutus.df.noNA

A.minutus_africa<-A_minutus[A_minutus$cont=="1",]
A.minutus_asia<-A_minutus[A_minutus$cont=="2",]
A.minutus_australia<-A_minutus[A_minutus$cont=="3",]
A.minutus_n.america<-A_minutus[A_minutus$cont=="4",]
A.minutus_oceania<-A_minutus[A_minutus$cont=="5",]
A.minutus_s.america<-A_minutus[A_minutus$cont=="6",]
A.minutus_europe<-A_minutus[A_minutus$cont=="8",]

A_minutus_continents<-rbind(A.minutus_africa, A.minutus_asia, A.minutus_australia, A.minutus_n.america, A.minutus_oceania, A.minutus_s.america, A.minutus_europe)
A_minutus_continents
#in a list
A_minutus_continents.list<-list(A.minutus_africa, A.minutus_asia, A.minutus_australia, A.minutus_n.america, A.minutus_oceania, A.minutus_s.america, A.minutus_europe)
A_minutus_continents.list

#Aedes neoafricanus
A.neoafricanus.df<-A.neoafricanus.data
A.neoafricanus.cont<-extract(continent, A.neoafricanus.df)
A.neoafricanus.cont
A.neoafricanus.df$cont<-A.neoafricanus.cont
A.neoafricanus.df.noNA<-A.neoafricanus.df[!is.na(A.neoafricanus.df$cont),]
A.neoafricanus.df.noNA
A.neoafricanus.df.noNA$species<-"A_neoafricanus"
A.neoafricanus.df.noNA<-A.neoafricanus.df.noNA[,c(4,3,1,2)]
A.neoafricanus.df.noNA
A_neoafricanus<-A.neoafricanus.df.noNA

A.neoafricanus_africa<-A_neoafricanus[A_neoafricanus$cont=="1",]
A.neoafricanus_asia<-A_neoafricanus[A_neoafricanus$cont=="2",]
A.neoafricanus_australia<-A_neoafricanus[A_neoafricanus$cont=="3",]
A.neoafricanus_n.america<-A_neoafricanus[A_neoafricanus$cont=="4",]
A.neoafricanus_oceania<-A_neoafricanus[A_neoafricanus$cont=="5",]
A.neoafricanus_s.america<-A_neoafricanus[A_neoafricanus$cont=="6",]
A.neoafricanus_europe<-A_neoafricanus[A_neoafricanus$cont=="8",]

A_neoafricanus_continents<-rbind(A.neoafricanus_africa, A.neoafricanus_asia, A.neoafricanus_australia, A.neoafricanus_n.america, A.neoafricanus_oceania, A.neoafricanus_s.america, A.neoafricanus_europe)
A_neoafricanus_continents
#in a list
A_neoafricanus_continents.list<-list(A.neoafricanus_africa, A.neoafricanus_asia, A.neoafricanus_australia, A.neoafricanus_n.america, A.neoafricanus_oceania, A.neoafricanus_s.america, A.neoafricanus_europe)
A_neoafricanus_continents.list

#Aedes nigromaculis
A.nigromaculis.df<-A.nigromaculis.data
A.nigromaculis.cont<-extract(continent, A.nigromaculis.df)
A.nigromaculis.cont
A.nigromaculis.df$cont<-A.nigromaculis.cont
A.nigromaculis.df.noNA<-A.nigromaculis.df[!is.na(A.nigromaculis.df$cont),]
A.nigromaculis.df.noNA
A.nigromaculis.df.noNA$species<-"A_nigromaculis"
A.nigromaculis.df.noNA<-A.nigromaculis.df.noNA[,c(4,3,1,2)]
A.nigromaculis.df.noNA
A_nigromaculis<-A.nigromaculis.df.noNA

A.nigromaculis_africa<-A_nigromaculis[A_nigromaculis$cont=="1",]
A.nigromaculis_asia<-A_nigromaculis[A_nigromaculis$cont=="2",]
A.nigromaculis_australia<-A_nigromaculis[A_nigromaculis$cont=="3",]
A.nigromaculis_n.america<-A_nigromaculis[A_nigromaculis$cont=="4",]
A.nigromaculis_oceania<-A_nigromaculis[A_nigromaculis$cont=="5",]
A.nigromaculis_s.america<-A_nigromaculis[A_nigromaculis$cont=="6",]
A.nigromaculis_europe<-A_nigromaculis[A_nigromaculis$cont=="8",]

A_nigromaculis_continents<-rbind(A.nigromaculis_africa, A.nigromaculis_asia, A.nigromaculis_australia, A.nigromaculis_n.america, A.nigromaculis_oceania, A.nigromaculis_s.america, A.nigromaculis_europe)
A_nigromaculis_continents
#in a list
A_nigromaculis_continents.list<-list(A.nigromaculis_africa, A.nigromaculis_asia, A.nigromaculis_australia, A.nigromaculis_n.america, A.nigromaculis_oceania, A.nigromaculis_s.america, A.nigromaculis_europe)
A_nigromaculis_continents.list

#Aedes opok
A.opok.df<-A.opok.data
A.opok.cont<-extract(continent, A.opok.df)
A.opok.cont
A.opok.df$cont<-A.opok.cont
A.opok.df.noNA<-A.opok.df[!is.na(A.opok.df$cont),]
A.opok.df.noNA
A.opok.df.noNA$species<-"A_opok"
A.opok.df.noNA<-A.opok.df.noNA[,c(4,3,1,2)]
A.opok.df.noNA
A_opok<-A.opok.df.noNA

A.opok_africa<-A_opok[A_opok$cont=="1",]
A.opok_asia<-A_opok[A_opok$cont=="2",]
A.opok_australia<-A_opok[A_opok$cont=="3",]
A.opok_n.america<-A_opok[A_opok$cont=="4",]
A.opok_oceania<-A_opok[A_opok$cont=="5",]
A.opok_s.america<-A_opok[A_opok$cont=="6",]
A.opok_europe<-A_opok[A_opok$cont=="8",]

A_opok_continents<-rbind(A.opok_africa, A.opok_asia, A.opok_australia, A.opok_n.america, A.opok_oceania, A.opok_s.america, A.opok_europe)
A_opok_continents
#in a list
A_opok_continents.list<-list(A.opok_africa, A.opok_asia, A.opok_australia, A.opok_n.america, A.opok_oceania, A.opok_s.america, A.opok_europe)
A_opok_continents.list

#Aedes polynesiensis
A.polynesiensis.df<-A.polynesiensis.data
A.polynesiensis.cont<-extract(continent, A.polynesiensis.df)
A.polynesiensis.cont
A.polynesiensis.df$cont<-A.polynesiensis.cont
A.polynesiensis.df.noNA<-A.polynesiensis.df[!is.na(A.polynesiensis.df$cont),]
A.polynesiensis.df.noNA
A.polynesiensis.df.noNA$species<-"A_polynesiensis"
A.polynesiensis.df.noNA<-A.polynesiensis.df.noNA[,c(4,3,1,2)]
A.polynesiensis.df.noNA
A_polynesiensis<-A.polynesiensis.df.noNA

A.polynesiensis_africa<-A_polynesiensis[A_polynesiensis$cont=="1",]
A.polynesiensis_asia<-A_polynesiensis[A_polynesiensis$cont=="2",]
A.polynesiensis_australia<-A_polynesiensis[A_polynesiensis$cont=="3",]
A.polynesiensis_n.america<-A_polynesiensis[A_polynesiensis$cont=="4",]
A.polynesiensis_oceania<-A_polynesiensis[A_polynesiensis$cont=="5",]
A.polynesiensis_s.america<-A_polynesiensis[A_polynesiensis$cont=="6",]
A.polynesiensis_europe<-A_polynesiensis[A_polynesiensis$cont=="8",]

A_polynesiensis_continents<-rbind(A.polynesiensis_africa, A.polynesiensis_asia, A.polynesiensis_australia, A.polynesiensis_n.america, A.polynesiensis_oceania, A.polynesiensis_s.america, A.polynesiensis_europe)
A_polynesiensis_continents
#in a list
A_polynesiensis_continents.list<-list(A.polynesiensis_africa, A.polynesiensis_asia, A.polynesiensis_australia, A.polynesiensis_n.america, A.polynesiensis_oceania, A.polynesiensis_s.america, A.polynesiensis_europe)
A_polynesiensis_continents.list

#Aedes provocans
A.provocans.df<-A.provocans.data
A.provocans.cont<-extract(continent, A.provocans.df)
A.provocans.cont
A.provocans.df$cont<-A.provocans.cont
A.provocans.df.noNA<-A.provocans.df[!is.na(A.provocans.df$cont),]
A.provocans.df.noNA
A.provocans.df.noNA$species<-"A_provocans"
A.provocans.df.noNA<-A.provocans.df.noNA[,c(4,3,1,2)]
A.provocans.df.noNA
A_provocans<-A.provocans.df.noNA

A.provocans_africa<-A_provocans[A_provocans$cont=="1",]
A.provocans_asia<-A_provocans[A_provocans$cont=="2",]
A.provocans_australia<-A_provocans[A_provocans$cont=="3",]
A.provocans_n.america<-A_provocans[A_provocans$cont=="4",]
A.provocans_oceania<-A_provocans[A_provocans$cont=="5",]
A.provocans_s.america<-A_provocans[A_provocans$cont=="6",]
A.provocans_europe<-A_provocans[A_provocans$cont=="8",]

A_provocans_continents<-rbind(A.provocans_africa, A.provocans_asia, A.provocans_australia, A.provocans_n.america, A.provocans_oceania, A.provocans_s.america, A.provocans_europe)
A_provocans_continents
#in a list
A_provocans_continents.list<-list(A.provocans_africa, A.provocans_asia, A.provocans_australia, A.provocans_n.america, A.provocans_oceania, A.provocans_s.america, A.provocans_europe)
A_provocans_continents.list

#Aedes scutellaris
A.scutellaris.df<-A.scutellaris.data
A.scutellaris.cont<-extract(continent, A.scutellaris.df)
A.scutellaris.cont
A.scutellaris.df$cont<-A.scutellaris.cont
A.scutellaris.df.noNA<-A.scutellaris.df[!is.na(A.scutellaris.df$cont),]
A.scutellaris.df.noNA
A.scutellaris.df.noNA$species<-"A_scutellaris"
A.scutellaris.df.noNA<-A.scutellaris.df.noNA[,c(4,3,1,2)]
A.scutellaris.df.noNA
A_scutellaris<-A.scutellaris.df.noNA

A.scutellaris_africa<-A_scutellaris[A_scutellaris$cont=="1",]
A.scutellaris_asia<-A_scutellaris[A_scutellaris$cont=="2",]
A.scutellaris_australia<-A_scutellaris[A_scutellaris$cont=="3",]
A.scutellaris_n.america<-A_scutellaris[A_scutellaris$cont=="4",]
A.scutellaris_oceania<-A_scutellaris[A_scutellaris$cont=="5",]
A.scutellaris_s.america<-A_scutellaris[A_scutellaris$cont=="6",]
A.scutellaris_europe<-A_scutellaris[A_scutellaris$cont=="8",]

A_scutellaris_continents<-rbind(A.scutellaris_africa, A.scutellaris_asia, A.scutellaris_australia, A.scutellaris_n.america, A.scutellaris_oceania, A.scutellaris_s.america, A.scutellaris_europe)
A_scutellaris_continents
#in a list
A_scutellaris_continents.list<-list(A.scutellaris_africa, A.scutellaris_asia, A.scutellaris_australia, A.scutellaris_n.america, A.scutellaris_oceania, A.scutellaris_s.america, A.scutellaris_europe)
A_scutellaris_continents.list

#Aedes sollicitans
A.sollicitans.df<-A.sollicitans.data
A.sollicitans.cont<-extract(continent, A.sollicitans.df)
A.sollicitans.cont
A.sollicitans.df$cont<-A.sollicitans.cont
A.sollicitans.df.noNA<-A.sollicitans.df[!is.na(A.sollicitans.df$cont),]
A.sollicitans.df.noNA
A.sollicitans.df.noNA$species<-"A_sollicitans"
A.sollicitans.df.noNA<-A.sollicitans.df.noNA[,c(4,3,1,2)]
A.sollicitans.df.noNA
A_sollicitans<-A.sollicitans.df.noNA

A.sollicitans_africa<-A_sollicitans[A_sollicitans$cont=="1",]
A.sollicitans_asia<-A_sollicitans[A_sollicitans$cont=="2",]
A.sollicitans_australia<-A_sollicitans[A_sollicitans$cont=="3",]
A.sollicitans_n.america<-A_sollicitans[A_sollicitans$cont=="4",]
A.sollicitans_oceania<-A_sollicitans[A_sollicitans$cont=="5",]
A.sollicitans_s.america<-A_sollicitans[A_sollicitans$cont=="6",]
A.sollicitans_europe<-A_sollicitans[A_sollicitans$cont=="8",]

A_sollicitans_continents<-rbind(A.sollicitans_africa, A.sollicitans_asia, A.sollicitans_australia, A.sollicitans_n.america, A.sollicitans_oceania, A.sollicitans_s.america, A.sollicitans_europe)
A_sollicitans_continents
#in a list
A_sollicitans_continents.list<-list(A.sollicitans_africa, A.sollicitans_asia, A.sollicitans_australia, A.sollicitans_n.america, A.sollicitans_oceania, A.sollicitans_s.america, A.sollicitans_europe)
A_sollicitans_continents.list

#Aedes sticticus
A.sticticus.df<-A.sticticus.data
A.sticticus.cont<-extract(continent, A.sticticus.df)
A.sticticus.cont
A.sticticus.df$cont<-A.sticticus.cont
A.sticticus.df.noNA<-A.sticticus.df[!is.na(A.sticticus.df$cont),]
A.sticticus.df.noNA
A.sticticus.df.noNA$species<-"A_sticticus"
A.sticticus.df.noNA<-A.sticticus.df.noNA[,c(4,3,1,2)]
A.sticticus.df.noNA
A_sticticus<-A.sticticus.df.noNA

A.sticticus_africa<-A_sticticus[A_sticticus$cont=="1",]
A.sticticus_asia<-A_sticticus[A_sticticus$cont=="2",]
A.sticticus_australia<-A_sticticus[A_sticticus$cont=="3",]
A.sticticus_n.america<-A_sticticus[A_sticticus$cont=="4",]
A.sticticus_oceania<-A_sticticus[A_sticticus$cont=="5",]
A.sticticus_s.america<-A_sticticus[A_sticticus$cont=="6",]
A.sticticus_europe<-A_sticticus[A_sticticus$cont=="8",]

A_sticticus_continents<-rbind(A.sticticus_africa, A.sticticus_asia, A.sticticus_australia, A.sticticus_n.america, A.sticticus_oceania, A.sticticus_s.america, A.sticticus_europe)
A_sticticus_continents
#in a list
A_sticticus_continents.list<-list(A.sticticus_africa, A.sticticus_asia, A.sticticus_australia, A.sticticus_n.america, A.sticticus_oceania, A.sticticus_s.america, A.sticticus_europe)
A_sticticus_continents.list

#Aedes stimulans
A.stimulans.df<-A.stimulans.data
A.stimulans.cont<-extract(continent, A.stimulans.df)
A.stimulans.cont
A.stimulans.df$cont<-A.stimulans.cont
A.stimulans.df.noNA<-A.stimulans.df[!is.na(A.stimulans.df$cont),]
A.stimulans.df.noNA
A.stimulans.df.noNA$species<-"A_stimulans"
A.stimulans.df.noNA<-A.stimulans.df.noNA[,c(4,3,1,2)]
A.stimulans.df.noNA
A_stimulans<-A.stimulans.df.noNA

A.stimulans_africa<-A_stimulans[A_stimulans$cont=="1",]
A.stimulans_asia<-A_stimulans[A_stimulans$cont=="2",]
A.stimulans_australia<-A_stimulans[A_stimulans$cont=="3",]
A.stimulans_n.america<-A_stimulans[A_stimulans$cont=="4",]
A.stimulans_oceania<-A_stimulans[A_stimulans$cont=="5",]
A.stimulans_s.america<-A_stimulans[A_stimulans$cont=="6",]
A.stimulans_europe<-A_stimulans[A_stimulans$cont=="8",]

A_stimulans_continents<-rbind(A.stimulans_africa, A.stimulans_asia, A.stimulans_australia, A.stimulans_n.america, A.stimulans_oceania, A.stimulans_s.america, A.stimulans_europe)
A_stimulans_continents
#in a list
A_stimulans_continents.list<-list(A.stimulans_africa, A.stimulans_asia, A.stimulans_australia, A.stimulans_n.america, A.stimulans_oceania, A.stimulans_s.america, A.stimulans_europe)
A_stimulans_continents.list

#Aedes taylori
A.taylori.df<-A.taylori.data
A.taylori.cont<-extract(continent, A.taylori.df)
A.taylori.cont
A.taylori.df$cont<-A.taylori.cont
A.taylori.df.noNA<-A.taylori.df[!is.na(A.taylori.df$cont),]
A.taylori.df.noNA
A.taylori.df.noNA$species<-"A_taylori"
A.taylori.df.noNA<-A.taylori.df.noNA[,c(4,3,1,2)]
A.taylori.df.noNA
A_taylori<-A.taylori.df.noNA

A.taylori_africa<-A_taylori[A_taylori$cont=="1",]
A.taylori_asia<-A_taylori[A_taylori$cont=="2",]
A.taylori_australia<-A_taylori[A_taylori$cont=="3",]
A.taylori_n.america<-A_taylori[A_taylori$cont=="4",]
A.taylori_oceania<-A_taylori[A_taylori$cont=="5",]
A.taylori_s.america<-A_taylori[A_taylori$cont=="6",]
A.taylori_europe<-A_taylori[A_taylori$cont=="8",]

A_taylori_continents<-rbind(A.taylori_africa, A.taylori_asia, A.taylori_australia, A.taylori_n.america, A.taylori_oceania, A.taylori_s.america, A.taylori_europe)
A_taylori_continents
#in a list
A_taylori_continents.list<-list(A.taylori_africa, A.taylori_asia, A.taylori_australia, A.taylori_n.america, A.taylori_oceania, A.taylori_s.america, A.taylori_europe)
A_taylori_continents.list

#Aedes triseriatus
A.triseriatus.df<-A.triseriatus.data
A.triseriatus.cont<-extract(continent, A.triseriatus.df)
A.triseriatus.cont
A.triseriatus.df$cont<-A.triseriatus.cont
A.triseriatus.df.noNA<-A.triseriatus.df[!is.na(A.triseriatus.df$cont),]
A.triseriatus.df.noNA
A.triseriatus.df.noNA$species<-"A_triseriatus"
A.triseriatus.df.noNA<-A.triseriatus.df.noNA[,c(4,3,1,2)]
A.triseriatus.df.noNA
A_triseriatus<-A.triseriatus.df.noNA

A.triseriatus_africa<-A_triseriatus[A_triseriatus$cont=="1",]
A.triseriatus_asia<-A_triseriatus[A_triseriatus$cont=="2",]
A.triseriatus_australia<-A_triseriatus[A_triseriatus$cont=="3",]
A.triseriatus_n.america<-A_triseriatus[A_triseriatus$cont=="4",]
A.triseriatus_oceania<-A_triseriatus[A_triseriatus$cont=="5",]
A.triseriatus_s.america<-A_triseriatus[A_triseriatus$cont=="6",]
A.triseriatus_europe<-A_triseriatus[A_triseriatus$cont=="8",]

A_triseriatus_continents<-rbind(A.triseriatus_africa, A.triseriatus_asia, A.triseriatus_australia, A.triseriatus_n.america, A.triseriatus_oceania, A.triseriatus_s.america, A.triseriatus_europe)
A_triseriatus_continents
#in a list
A_triseriatus_continents.list<-list(A.triseriatus_africa, A.triseriatus_asia, A.triseriatus_australia, A.triseriatus_n.america, A.triseriatus_oceania, A.triseriatus_s.america, A.triseriatus_europe)
A_triseriatus_continents.list

#Aedes trivittatus
A.trivittatus.df<-A.trivittatus.data
A.trivittatus.cont<-extract(continent, A.trivittatus.df)
A.trivittatus.cont
A.trivittatus.df$cont<-A.trivittatus.cont
A.trivittatus.df.noNA<-A.trivittatus.df[!is.na(A.trivittatus.df$cont),]
A.trivittatus.df.noNA
A.trivittatus.df.noNA$species<-"A_trivittatus"
A.trivittatus.df.noNA<-A.trivittatus.df.noNA[,c(4,3,1,2)]
A.trivittatus.df.noNA
A_trivittatus<-A.trivittatus.df.noNA

A.trivittatus_africa<-A_trivittatus[A_trivittatus$cont=="1",]
A.trivittatus_asia<-A_trivittatus[A_trivittatus$cont=="2",]
A.trivittatus_australia<-A_trivittatus[A_trivittatus$cont=="3",]
A.trivittatus_n.america<-A_trivittatus[A_trivittatus$cont=="4",]
A.trivittatus_oceania<-A_trivittatus[A_trivittatus$cont=="5",]
A.trivittatus_s.america<-A_trivittatus[A_trivittatus$cont=="6",]
A.trivittatus_europe<-A_trivittatus[A_trivittatus$cont=="8",]

A_trivittatus_continents<-rbind(A.trivittatus_africa, A.trivittatus_asia, A.trivittatus_australia, A.trivittatus_n.america, A.trivittatus_oceania, A.trivittatus_s.america, A.trivittatus_europe)
A_trivittatus_continents
#in a list
A_trivittatus_continents.list<-list(A.trivittatus_africa, A.trivittatus_asia, A.trivittatus_australia, A.trivittatus_n.america, A.trivittatus_oceania, A.trivittatus_s.america, A.trivittatus_europe)
A_trivittatus_continents.list

#Aedes unilineatus
A.unilineatus.df<-A.unilineatus.data
A.unilineatus.cont<-extract(continent, A.unilineatus.df)
A.unilineatus.cont
A.unilineatus.df$cont<-A.unilineatus.cont
A.unilineatus.df.noNA<-A.unilineatus.df[!is.na(A.unilineatus.df$cont),]
A.unilineatus.df.noNA
A.unilineatus.df.noNA$species<-"A_unilineatus"
A.unilineatus.df.noNA<-A.unilineatus.df.noNA[,c(4,3,1,2)]
A.unilineatus.df.noNA
A_unilineatus<-A.unilineatus.df.noNA

A.unilineatus_africa<-A_unilineatus[A_unilineatus$cont=="1",]
A.unilineatus_asia<-A_unilineatus[A_unilineatus$cont=="2",]
A.unilineatus_australia<-A_unilineatus[A_unilineatus$cont=="3",]
A.unilineatus_n.america<-A_unilineatus[A_unilineatus$cont=="4",]
A.unilineatus_oceania<-A_unilineatus[A_unilineatus$cont=="5",]
A.unilineatus_s.america<-A_unilineatus[A_unilineatus$cont=="6",]
A.unilineatus_europe<-A_unilineatus[A_unilineatus$cont=="8",]

A_unilineatus_continents<-rbind(A.unilineatus_africa, A.unilineatus_asia, A.unilineatus_australia, A.unilineatus_n.america, A.unilineatus_oceania, A.unilineatus_s.america, A.unilineatus_europe)
A_unilineatus_continents
#in a list
A_unilineatus_continents.list<-list(A.unilineatus_africa, A.unilineatus_asia, A.unilineatus_australia, A.unilineatus_n.america, A.unilineatus_oceania, A.unilineatus_s.america, A.unilineatus_europe)
A_unilineatus_continents.list

#Aedes vexans
A.vexans.df<-A.vexans.data
A.vexans.cont<-extract(continent, A.vexans.df)
A.vexans.cont
A.vexans.df$cont<-A.vexans.cont
A.vexans.df.noNA<-A.vexans.df[!is.na(A.vexans.df$cont),]
A.vexans.df.noNA
A.vexans.df.noNA$species<-"A_vexans"
A.vexans.df.noNA<-A.vexans.df.noNA[,c(4,3,1,2)]
A.vexans.df.noNA
A_vexans<-A.vexans.df.noNA

A.vexans_africa<-A_vexans[A_vexans$cont=="1",]
A.vexans_asia<-A_vexans[A_vexans$cont=="2",]
A.vexans_australia<-A_vexans[A_vexans$cont=="3",]
A.vexans_n.america<-A_vexans[A_vexans$cont=="4",]
A.vexans_oceania<-A_vexans[A_vexans$cont=="5",]
A.vexans_s.america<-A_vexans[A_vexans$cont=="6",]
A.vexans_europe<-A_vexans[A_vexans$cont=="8",]

A_vexans_continents<-rbind(A.vexans_africa, A.vexans_asia, A.vexans_australia, A.vexans_n.america, A.vexans_oceania, A.vexans_s.america, A.vexans_europe)
A_vexans_continents
#in a list
A_vexans_continents.list<-list(A.vexans_africa, A.vexans_asia, A.vexans_australia, A.vexans_n.america, A.vexans_oceania, A.vexans_s.america, A.vexans_europe)
A_vexans_continents.list

#Aedes vittatus
A.vittatus.df<-A.vittatus.data
A.vittatus.cont<-extract(continent, A.vittatus.df)
A.vittatus.cont
A.vittatus.df$cont<-A.vittatus.cont
A.vittatus.df.noNA<-A.vittatus.df[!is.na(A.vittatus.df$cont),]
A.vittatus.df.noNA
A.vittatus.df.noNA$species<-"A_vittatus"
A.vittatus.df.noNA<-A.vittatus.df.noNA[,c(4,3,1,2)]
A.vittatus.df.noNA
A_vittatus<-A.vittatus.df.noNA

A.vittatus_africa<-A_vittatus[A_vittatus$cont=="1",]
A.vittatus_asia<-A_vittatus[A_vittatus$cont=="2",]
A.vittatus_australia<-A_vittatus[A_vittatus$cont=="3",]
A.vittatus_n.america<-A_vittatus[A_vittatus$cont=="4",]
A.vittatus_oceania<-A_vittatus[A_vittatus$cont=="5",]
A.vittatus_s.america<-A_vittatus[A_vittatus$cont=="6",]
A.vittatus_europe<-A_vittatus[A_vittatus$cont=="8",]

A_vittatus_continents<-rbind(A.vittatus_africa, A.vittatus_asia, A.vittatus_australia, A.vittatus_n.america, A.vittatus_oceania, A.vittatus_s.america, A.vittatus_europe)
A_vittatus_continents
#in a list
A_vittatus_continents.list<-list(A.vittatus_africa, A.vittatus_asia, A.vittatus_australia, A.vittatus_n.america, A.vittatus_oceania, A.vittatus_s.america, A.vittatus_europe)
A_vittatus_continents.list

#Anopheles aconitus
An.aconitus.df<-An.aconitus.data
An.aconitus.cont<-extract(continent, An.aconitus.df)
An.aconitus.cont
An.aconitus.df$cont<-An.aconitus.cont
An.aconitus.df.noNA<-An.aconitus.df[!is.na(An.aconitus.df$cont),]
An.aconitus.df.noNA
An.aconitus.df.noNA$species<-"An_aconitus"
An.aconitus.df.noNA<-An.aconitus.df.noNA[,c(4,3,1,2)]
An.aconitus.df.noNA
An_aconitus<-An.aconitus.df.noNA

An.aconitus_africa<-An_aconitus[An_aconitus$cont=="1",]
An.aconitus_asia<-An_aconitus[An_aconitus$cont=="2",]
An.aconitus_australia<-An_aconitus[An_aconitus$cont=="3",]
An.aconitus_n.america<-An_aconitus[An_aconitus$cont=="4",]
An.aconitus_oceania<-An_aconitus[An_aconitus$cont=="5",]
An.aconitus_s.america<-An_aconitus[An_aconitus$cont=="6",]
An.aconitus_europe<-An_aconitus[An_aconitus$cont=="8",]

An_aconitus_continents<-rbind(An.aconitus_africa, An.aconitus_asia, An.aconitus_australia, An.aconitus_n.america, An.aconitus_oceania, An.aconitus_s.america, An.aconitus_europe)
An_aconitus_continents
#in a list
An_aconitus_continents.list<-list(An.aconitus_africa, An.aconitus_asia, An.aconitus_australia, An.aconitus_n.america, An.aconitus_oceania, An.aconitus_s.america, An.aconitus_europe)
An_aconitus_continents.list

#Anopheles albimanus
An.albimanus.df<-An.albimanus.data
An.albimanus.cont<-extract(continent, An.albimanus.df)
An.albimanus.cont
An.albimanus.df$cont<-An.albimanus.cont
An.albimanus.df.noNA<-An.albimanus.df[!is.na(An.albimanus.df$cont),]
An.albimanus.df.noNA
An.albimanus.df.noNA$species<-"An_albimanus"
An.albimanus.df.noNA<-An.albimanus.df.noNA[,c(4,3,1,2)]
An.albimanus.df.noNA
An_albimanus<-An.albimanus.df.noNA

An.albimanus_africa<-An_albimanus[An_albimanus$cont=="1",]
An.albimanus_asia<-An_albimanus[An_albimanus$cont=="2",]
An.albimanus_australia<-An_albimanus[An_albimanus$cont=="3",]
An.albimanus_n.america<-An_albimanus[An_albimanus$cont=="4",]
An.albimanus_oceania<-An_albimanus[An_albimanus$cont=="5",]
An.albimanus_s.america<-An_albimanus[An_albimanus$cont=="6",]
An.albimanus_europe<-An_albimanus[An_albimanus$cont=="8",]

An_albimanus_continents<-rbind(An.albimanus_africa, An.albimanus_asia, An.albimanus_australia, An.albimanus_n.america, An.albimanus_oceania, An.albimanus_s.america, An.albimanus_europe)
An_albimanus_continents
#in a list
An_albimanus_continents.list<-list(An.albimanus_africa, An.albimanus_asia, An.albimanus_australia, An.albimanus_n.america, An.albimanus_oceania, An.albimanus_s.america, An.albimanus_europe)
An_albimanus_continents.list

#Anopheles albitarsis
An.albitarsis.df<-An.albitarsis.data
An.albitarsis.cont<-extract(continent, An.albitarsis.df)
An.albitarsis.cont
An.albitarsis.df$cont<-An.albitarsis.cont
An.albitarsis.df.noNA<-An.albitarsis.df[!is.na(An.albitarsis.df$cont),]
An.albitarsis.df.noNA
An.albitarsis.df.noNA$species<-"An_albitarsis"
An.albitarsis.df.noNA<-An.albitarsis.df.noNA[,c(4,3,1,2)]
An.albitarsis.df.noNA
An_albitarsis<-An.albitarsis.df.noNA

An.albitarsis_africa<-An_albitarsis[An_albitarsis$cont=="1",]
An.albitarsis_asia<-An_albitarsis[An_albitarsis$cont=="2",]
An.albitarsis_australia<-An_albitarsis[An_albitarsis$cont=="3",]
An.albitarsis_n.america<-An_albitarsis[An_albitarsis$cont=="4",]
An.albitarsis_oceania<-An_albitarsis[An_albitarsis$cont=="5",]
An.albitarsis_s.america<-An_albitarsis[An_albitarsis$cont=="6",]
An.albitarsis_europe<-An_albitarsis[An_albitarsis$cont=="8",]

An_albitarsis_continents<-rbind(An.albitarsis_africa, An.albitarsis_asia, An.albitarsis_australia, An.albitarsis_n.america, An.albitarsis_oceania, An.albitarsis_s.america, An.albitarsis_europe)
An_albitarsis_continents
#in a list
An_albitarsis_continents.list<-list(An.albitarsis_africa, An.albitarsis_asia, An.albitarsis_australia, An.albitarsis_n.america, An.albitarsis_oceania, An.albitarsis_s.america, An.albitarsis_europe)
An_albitarsis_continents.list


#Anopheles annularis
An.annularis.df<-An.annularis.data
An.annularis.cont<-extract(continent, An.annularis.df)
An.annularis.cont
An.annularis.df$cont<-An.annularis.cont
An.annularis.df.noNA<-An.annularis.df[!is.na(An.annularis.df$cont),]
An.annularis.df.noNA
An.annularis.df.noNA$species<-"An_annularis"
An.annularis.df.noNA<-An.annularis.df.noNA[,c(4,3,1,2)]
An.annularis.df.noNA
An_annularis<-An.annularis.df.noNA

An.annularis_africa<-An_annularis[An_annularis$cont=="1",]
An.annularis_asia<-An_annularis[An_annularis$cont=="2",]
An.annularis_australia<-An_annularis[An_annularis$cont=="3",]
An.annularis_n.america<-An_annularis[An_annularis$cont=="4",]
An.annularis_oceania<-An_annularis[An_annularis$cont=="5",]
An.annularis_s.america<-An_annularis[An_annularis$cont=="6",]
An.annularis_europe<-An_annularis[An_annularis$cont=="8",]

An_annularis_continents<-rbind(An.annularis_africa, An.annularis_asia, An.annularis_australia, An.annularis_n.america, An.annularis_oceania, An.annularis_s.america, An.annularis_europe)
An_annularis_continents
#in a list
An_annularis_continents.list<-list(An.annularis_africa, An.annularis_asia, An.annularis_australia, An.annularis_n.america, An.annularis_oceania, An.annularis_s.america, An.annularis_europe)
An_annularis_continents.list

#Anopheles aquasalis
An.aquasalis.df<-An.aquasalis.data
An.aquasalis.cont<-extract(continent, An.aquasalis.df)
An.aquasalis.cont
An.aquasalis.df$cont<-An.aquasalis.cont
An.aquasalis.df.noNA<-An.aquasalis.df[!is.na(An.aquasalis.df$cont),]
An.aquasalis.df.noNA
An.aquasalis.df.noNA$species<-"An_aquasalis"
An.aquasalis.df.noNA<-An.aquasalis.df.noNA[,c(4,3,1,2)]
An.aquasalis.df.noNA
An_aquasalis<-An.aquasalis.df.noNA

An.aquasalis_africa<-An_aquasalis[An_aquasalis$cont=="1",]
An.aquasalis_asia<-An_aquasalis[An_aquasalis$cont=="2",]
An.aquasalis_australia<-An_aquasalis[An_aquasalis$cont=="3",]
An.aquasalis_n.america<-An_aquasalis[An_aquasalis$cont=="4",]
An.aquasalis_oceania<-An_aquasalis[An_aquasalis$cont=="5",]
An.aquasalis_s.america<-An_aquasalis[An_aquasalis$cont=="6",]
An.aquasalis_europe<-An_aquasalis[An_aquasalis$cont=="8",]

An_aquasalis_continents<-rbind(An.aquasalis_africa, An.aquasalis_asia, An.aquasalis_australia, An.aquasalis_n.america, An.aquasalis_oceania, An.aquasalis_s.america, An.aquasalis_europe)
An_aquasalis_continents
#in a list
An_aquasalis_continents.list<-list(An.aquasalis_africa, An.aquasalis_asia, An.aquasalis_australia, An.aquasalis_n.america, An.aquasalis_oceania, An.aquasalis_s.america, An.aquasalis_europe)
An_aquasalis_continents.list

#Anopheles arabiensis
An.arabiensis.df<-An.arabiensis.data
An.arabiensis.cont<-extract(continent, An.arabiensis.df)
An.arabiensis.cont
An.arabiensis.df$cont<-An.arabiensis.cont
An.arabiensis.df.noNA<-An.arabiensis.df[!is.na(An.arabiensis.df$cont),]
An.arabiensis.df.noNA
An.arabiensis.df.noNA$species<-"An_arabiensis"
An.arabiensis.df.noNA<-An.arabiensis.df.noNA[,c(4,3,1,2)]
An.arabiensis.df.noNA
An_arabiensis<-An.arabiensis.df.noNA

An.arabiensis_africa<-An_arabiensis[An_arabiensis$cont=="1",]
An.arabiensis_asia<-An_arabiensis[An_arabiensis$cont=="2",]
An.arabiensis_australia<-An_arabiensis[An_arabiensis$cont=="3",]
An.arabiensis_n.america<-An_arabiensis[An_arabiensis$cont=="4",]
An.arabiensis_oceania<-An_arabiensis[An_arabiensis$cont=="5",]
An.arabiensis_s.america<-An_arabiensis[An_arabiensis$cont=="6",]
An.arabiensis_europe<-An_arabiensis[An_arabiensis$cont=="8",]

An_arabiensis_continents<-rbind(An.arabiensis_africa, An.arabiensis_asia, An.arabiensis_australia, An.arabiensis_n.america, An.arabiensis_oceania, An.arabiensis_s.america, An.arabiensis_europe)
An_arabiensis_continents
#in a list
An_arabiensis_continents.list<-list(An.arabiensis_africa, An.arabiensis_asia, An.arabiensis_australia, An.arabiensis_n.america, An.arabiensis_oceania, An.arabiensis_s.america, An.arabiensis_europe)
An_arabiensis_continents.list


#Anopheles atroparvus
An.atroparvus.df<-An.atroparvus.data
An.atroparvus.cont<-extract(continent, An.atroparvus.df)
An.atroparvus.cont
An.atroparvus.df$cont<-An.atroparvus.cont
An.atroparvus.df.noNA<-An.atroparvus.df[!is.na(An.atroparvus.df$cont),]
An.atroparvus.df.noNA
An.atroparvus.df.noNA$species<-"An_atroparvus"
An.atroparvus.df.noNA<-An.atroparvus.df.noNA[,c(4,3,1,2)]
An.atroparvus.df.noNA
An_atroparvus<-An.atroparvus.df.noNA

An.atroparvus_africa<-An_atroparvus[An_atroparvus$cont=="1",]
An.atroparvus_asia<-An_atroparvus[An_atroparvus$cont=="2",]
An.atroparvus_australia<-An_atroparvus[An_atroparvus$cont=="3",]
An.atroparvus_n.america<-An_atroparvus[An_atroparvus$cont=="4",]
An.atroparvus_oceania<-An_atroparvus[An_atroparvus$cont=="5",]
An.atroparvus_s.america<-An_atroparvus[An_atroparvus$cont=="6",]
An.atroparvus_europe<-An_atroparvus[An_atroparvus$cont=="8",]

An_atroparvus_continents<-rbind(An.atroparvus_africa, An.atroparvus_asia, An.atroparvus_australia, An.atroparvus_n.america, An.atroparvus_oceania, An.atroparvus_s.america, An.atroparvus_europe)
An_atroparvus_continents
#in a list
An_atroparvus_continents.list<-list(An.atroparvus_africa, An.atroparvus_asia, An.atroparvus_australia, An.atroparvus_n.america, An.atroparvus_oceania, An.atroparvus_s.america, An.atroparvus_europe)
An_atroparvus_continents.list

#Anopheles atropos
An.atropos.df<-An.atropos.data
An.atropos.cont<-extract(continent, An.atropos.df)
An.atropos.cont
An.atropos.df$cont<-An.atropos.cont
An.atropos.df.noNA<-An.atropos.df[!is.na(An.atropos.df$cont),]
An.atropos.df.noNA
An.atropos.df.noNA$species<-"An_atropos"
An.atropos.df.noNA<-An.atropos.df.noNA[,c(4,3,1,2)]
An.atropos.df.noNA
An_atropos<-An.atropos.df.noNA

An.atropos_africa<-An_atropos[An_atropos$cont=="1",]
An.atropos_asia<-An_atropos[An_atropos$cont=="2",]
An.atropos_australia<-An_atropos[An_atropos$cont=="3",]
An.atropos_n.america<-An_atropos[An_atropos$cont=="4",]
An.atropos_oceania<-An_atropos[An_atropos$cont=="5",]
An.atropos_s.america<-An_atropos[An_atropos$cont=="6",]
An.atropos_europe<-An_atropos[An_atropos$cont=="8",]

An_atropos_continents<-rbind(An.atropos_africa, An.atropos_asia, An.atropos_australia, An.atropos_n.america, An.atropos_oceania, An.atropos_s.america, An.atropos_europe)
An_atropos_continents
#in a list
An_atropos_continents.list<-list(An.atropos_africa, An.atropos_asia, An.atropos_australia, An.atropos_n.america, An.atropos_oceania, An.atropos_s.america, An.atropos_europe)
An_atropos_continents.list

#Anopheles barberi
An.barberi.df<-An.barberi.data
An.barberi.cont<-extract(continent, An.barberi.df)
An.barberi.cont
An.barberi.df$cont<-An.barberi.cont
An.barberi.df.noNA<-An.barberi.df[!is.na(An.barberi.df$cont),]
An.barberi.df.noNA
An.barberi.df.noNA$species<-"An_barberi"
An.barberi.df.noNA<-An.barberi.df.noNA[,c(4,3,1,2)]
An.barberi.df.noNA
An_barberi<-An.barberi.df.noNA

An.barberi_africa<-An_barberi[An_barberi$cont=="1",]
An.barberi_asia<-An_barberi[An_barberi$cont=="2",]
An.barberi_australia<-An_barberi[An_barberi$cont=="3",]
An.barberi_n.america<-An_barberi[An_barberi$cont=="4",]
An.barberi_oceania<-An_barberi[An_barberi$cont=="5",]
An.barberi_s.america<-An_barberi[An_barberi$cont=="6",]
An.barberi_europe<-An_barberi[An_barberi$cont=="8",]

An_barberi_continents<-rbind(An.barberi_africa, An.barberi_asia, An.barberi_australia, An.barberi_n.america, An.barberi_oceania, An.barberi_s.america, An.barberi_europe)
An_barberi_continents
#in a list
An_barberi_continents.list<-list(An.barberi_africa, An.barberi_asia, An.barberi_australia, An.barberi_n.america, An.barberi_oceania, An.barberi_s.america, An.barberi_europe)
An_barberi_continents.list

#Anopheles barbirostris
An.barbirostris.df<-An.barbirostris.data
An.barbirostris.cont<-extract(continent, An.barbirostris.df)
An.barbirostris.cont
An.barbirostris.df$cont<-An.barbirostris.cont
An.barbirostris.df.noNA<-An.barbirostris.df[!is.na(An.barbirostris.df$cont),]
An.barbirostris.df.noNA
An.barbirostris.df.noNA$species<-"An_barbirostris"
An.barbirostris.df.noNA<-An.barbirostris.df.noNA[,c(4,3,1,2)]
An.barbirostris.df.noNA
An_barbirostris<-An.barbirostris.df.noNA

An.barbirostris_africa<-An_barbirostris[An_barbirostris$cont=="1",]
An.barbirostris_asia<-An_barbirostris[An_barbirostris$cont=="2",]
An.barbirostris_australia<-An_barbirostris[An_barbirostris$cont=="3",]
An.barbirostris_n.america<-An_barbirostris[An_barbirostris$cont=="4",]
An.barbirostris_oceania<-An_barbirostris[An_barbirostris$cont=="5",]
An.barbirostris_s.america<-An_barbirostris[An_barbirostris$cont=="6",]
An.barbirostris_europe<-An_barbirostris[An_barbirostris$cont=="8",]

An_barbirostris_continents<-rbind(An.barbirostris_africa, An.barbirostris_asia, An.barbirostris_australia, An.barbirostris_n.america, An.barbirostris_oceania, An.barbirostris_s.america, An.barbirostris_europe)
An_barbirostris_continents
#in a list
An_barbirostris_continents.list<-list(An.barbirostris_africa, An.barbirostris_asia, An.barbirostris_australia, An.barbirostris_n.america, An.barbirostris_oceania, An.barbirostris_s.america, An.barbirostris_europe)
An_barbirostris_continents.list

#Anopheles bradleyi
An.bradleyi.df<-An.bradleyi.data
An.bradleyi.cont<-extract(continent, An.bradleyi.df)
An.bradleyi.cont
An.bradleyi.df$cont<-An.bradleyi.cont
An.bradleyi.df.noNA<-An.bradleyi.df[!is.na(An.bradleyi.df$cont),]
An.bradleyi.df.noNA
An.bradleyi.df.noNA$species<-"An_bradleyi"
An.bradleyi.df.noNA<-An.bradleyi.df.noNA[,c(4,3,1,2)]
An.bradleyi.df.noNA
An_bradleyi<-An.bradleyi.df.noNA

An.bradleyi_africa<-An_bradleyi[An_bradleyi$cont=="1",]
An.bradleyi_asia<-An_bradleyi[An_bradleyi$cont=="2",]
An.bradleyi_australia<-An_bradleyi[An_bradleyi$cont=="3",]
An.bradleyi_n.america<-An_bradleyi[An_bradleyi$cont=="4",]
An.bradleyi_oceania<-An_bradleyi[An_bradleyi$cont=="5",]
An.bradleyi_s.america<-An_bradleyi[An_bradleyi$cont=="6",]
An.bradleyi_europe<-An_bradleyi[An_bradleyi$cont=="8",]

An_bradleyi_continents<-rbind(An.bradleyi_aafrica, An.bradleyi_asia, An.bradleyi_australia, An.bradleyi_n.america, An.bradleyi_oceania, An.bradleyi_s.america, An.bradleyi_europe)
An_bradleyi_continents
#in a list
An_bradleyi_continents.list<-list(An.bradleyi_africa, An.bradleyi_asia, An.bradleyi_australia, An.bradleyi_n.america, An.bradleyi_oceania, An.bradleyi_s.america, An.bradleyi_europe)
An_bradleyi_continents.list

#Anopheles braziliensis
An.braziliensis.df<-An.braziliensis.data
An.braziliensis.cont<-extract(continent, An.braziliensis.df)
An.braziliensis.cont
An.braziliensis.df$cont<-An.braziliensis.cont
An.braziliensis.df.noNA<-An.braziliensis.df[!is.na(An.braziliensis.df$cont),]
An.braziliensis.df.noNA
An.braziliensis.df.noNA$species<-"An_braziliensis"
An.braziliensis.df.noNA<-An.braziliensis.df.noNA[,c(4,3,1,2)]
An.braziliensis.df.noNA
An_braziliensis<-An.braziliensis.df.noNA

An.braziliensis_africa<-An_braziliensis[An_braziliensis$cont=="1",]
An.braziliensis_asia<-An_braziliensis[An_braziliensis$cont=="2",]
An.braziliensis_australia<-An_braziliensis[An_braziliensis$cont=="3",]
An.braziliensis_n.america<-An_braziliensis[An_braziliensis$cont=="4",]
An.braziliensis_oceania<-An_braziliensis[An_braziliensis$cont=="5",]
An.braziliensis_s.america<-An_braziliensis[An_braziliensis$cont=="6",]
An.braziliensis_europe<-An_braziliensis[An_braziliensis$cont=="8",]

An_braziliensis_continents<-rbind(An.braziliensis_africa, An.braziliensis_asia, An.braziliensis_australia, An.braziliensis_n.america, An.braziliensis_oceania, An.braziliensis_s.america, An.braziliensis_europe)
An_braziliensis_continents
#in a list
An_braziliensis_continents.list<-list(An.braziliensis_africa, An.braziliensis_asia, An.braziliensis_australia, An.braziliensis_n.america, An.braziliensis_oceania, An.braziliensis_s.america, An.braziliensis_europe)
An_braziliensis_continents.list

#Anopheles brunnipes
An.brunnipes.df<-An.brunnipes.data
An.brunnipes.cont<-extract(continent, An.brunnipes.df)
An.brunnipes.cont
An.brunnipes.df$cont<-An.brunnipes.cont
An.brunnipes.df.noNA<-An.brunnipes.df[!is.na(An.brunnipes.df$cont),]
An.brunnipes.df.noNA
An.brunnipes.df.noNA$species<-"An_brunnipes"
An.brunnipes.df.noNA<-An.brunnipes.df.noNA[,c(4,3,1,2)]
An.brunnipes.df.noNA
An_brunnipes<-An.brunnipes.df.noNA

An.brunnipes_africa<-An_brunnipes[An_brunnipes$cont=="1",]
An.brunnipes_asia<-An_brunnipes[An_brunnipes$cont=="2",]
An.brunnipes_australia<-An_brunnipes[An_brunnipes$cont=="3",]
An.brunnipes_n.america<-An_brunnipes[An_brunnipes$cont=="4",]
An.brunnipes_oceania<-An_brunnipes[An_brunnipes$cont=="5",]
An.brunnipes_s.america<-An_brunnipes[An_brunnipes$cont=="6",]
An.brunnipes_europe<-An_brunnipes[An_brunnipes$cont=="8",]

An_brunnipes_continents<-rbind(An.brunnipes_africa, An.brunnipes_asia, An.brunnipes_australia, An.brunnipes_n.america, An.brunnipes_oceania, An.brunnipes_s.america, An.brunnipes_europe)
An_brunnipes_continents
#in a list
An_brunnipes_continents.list<-list(An.brunnipes_africa, An.brunnipes_asia, An.brunnipes_australia, An.brunnipes_n.america, An.brunnipes_oceania, An.brunnipes_s.america, An.brunnipes_europe)
An_brunnipes_continents.list

#Anopheles coustani
An.coustani.df<-An.coustani.data
An.coustani.cont<-extract(continent, An.coustani.df)
An.coustani.cont
An.coustani.df$cont<-An.coustani.cont
An.coustani.df.noNA<-An.coustani.df[!is.na(An.coustani.df$cont),]
An.coustani.df.noNA
An.coustani.df.noNA$species<-"An_coustani"
An.coustani.df.noNA<-An.coustani.df.noNA[,c(4,3,1,2)]
An.coustani.df.noNA
An_coustani<-An.coustani.df.noNA

An.coustani_africa<-An_coustani[An_coustani$cont=="1",]
An.coustani_asia<-An_coustani[An_coustani$cont=="2",]
An.coustani_australia<-An_coustani[An_coustani$cont=="3",]
An.coustani_n.america<-An_coustani[An_coustani$cont=="4",]
An.coustani_oceania<-An_coustani[An_coustani$cont=="5",]
An.coustani_s.america<-An_coustani[An_coustani$cont=="6",]
An.coustani_europe<-An_coustani[An_coustani$cont=="8",]

An_coustani_continents<-rbind(An.coustani_africa, An.coustani_asia, An.coustani_australia, An.coustani_n.america, An.coustani_oceania, An.coustani_s.america, An.coustani_europe)
An_coustani_continents
#in a list
An_coustani_continents.list<-list(An.coustani_africa, An.coustani_asia, An.coustani_australia, An.coustani_n.america, An.coustani_oceania, An.coustani_s.america, An.coustani_europe)
An_coustani_continents.list

#Anopheles crucians
An.crucians.df<-An.crucians.data
An.crucians.cont<-extract(continent, An.crucians.df)
An.crucians.cont
An.crucians.df$cont<-An.crucians.cont
An.crucians.df.noNA<-An.crucians.df[!is.na(An.crucians.df$cont),]
An.crucians.df.noNA
An.crucians.df.noNA$species<-"An_crucians"
An.crucians.df.noNA<-An.crucians.df.noNA[,c(4,3,1,2)]
An.crucians.df.noNA
An_crucians<-An.crucians.df.noNA

An.crucians_africa<-An_crucians[An_crucians$cont=="1",]
An.crucians_asia<-An_crucians[An_crucians$cont=="2",]
An.crucians_australia<-An_crucians[An_crucians$cont=="3",]
An.crucians_n.america<-An_crucians[An_crucians$cont=="4",]
An.crucians_oceania<-An_crucians[An_crucians$cont=="5",]
An.crucians_s.america<-An_crucians[An_crucians$cont=="6",]
An.crucians_europe<-An_crucians[An_crucians$cont=="8",]

An_crucians_continents<-rbind(An.crucians_africa, An.crucians_asia, An.crucians_australia, An.crucians_n.america, An.crucians_oceania, An.crucians_s.america, An.crucians_europe)
An_crucians_continents
#in a list
An_crucians_continents.list<-list(An.crucians_africa, An.crucians_asia, An.crucians_australia, An.crucians_n.america, An.crucians_oceania, An.crucians_s.america, An.crucians_europe)
An_crucians_continents.list

#Anopheles culicifacies
An.culicifacies.df<-An.culicifacies.data
An.culicifacies.cont<-extract(continent, An.culicifacies.df)
An.culicifacies.cont
An.culicifacies.df$cont<-An.culicifacies.cont
An.culicifacies.df.noNA<-An.culicifacies.df[!is.na(An.culicifacies.df$cont),]
An.culicifacies.df.noNA
An.culicifacies.df.noNA$species<-"An_culicifacies"
An.culicifacies.df.noNA<-An.culicifacies.df.noNA[,c(4,3,1,2)]
An.culicifacies.df.noNA
An_culicifacies<-An.culicifacies.df.noNA

An.culicifacies_africa<-An_culicifacies[An_culicifacies$cont=="1",]
An.culicifacies_asia<-An_culicifacies[An_culicifacies$cont=="2",]
An.culicifacies_australia<-An_culicifacies[An_culicifacies$cont=="3",]
An.culicifacies_n.america<-An_culicifacies[An_culicifacies$cont=="4",]
An.culicifacies_oceania<-An_culicifacies[An_culicifacies$cont=="5",]
An.culicifacies_s.america<-An_culicifacies[An_culicifacies$cont=="6",]
An.culicifacies_europe<-An_culicifacies[An_culicifacies$cont=="8",]

An_culicifacies_continents<-rbind(An.culicifacies_africa, An.culicifacies_asia, An.culicifacies_australia, An.culicifacies_n.america, An.culicifacies_oceania, An.culicifacies_s.america, An.culicifacies_europe)
An_culicifacies_continents
#in a list
An_culicifacies_continents.list<-list(An.culicifacies_africa, An.culicifacies_asia, An.culicifacies_australia, An.culicifacies_n.america, An.culicifacies_oceania, An.culicifacies_s.america, An.culicifacies_europe)
An_culicifacies_continents.list

#Anopheles darlingi
An.darlingi.df<-An.darlingi.data
An.darlingi.cont<-extract(continent, An.darlingi.df)
An.darlingi.cont
An.darlingi.df$cont<-An.darlingi.cont
An.darlingi.df.noNA<-An.darlingi.df[!is.na(An.darlingi.df$cont),]
An.darlingi.df.noNA
An.darlingi.df.noNA$species<-"An_darlingi"
An.darlingi.df.noNA<-An.darlingi.df.noNA[,c(4,3,1,2)]
An.darlingi.df.noNA
An_darlingi<-An.darlingi.df.noNA

An.darlingi_africa<-An_darlingi[An_darlingi$cont=="1",]
An.darlingi_asia<-An_darlingi[An_darlingi$cont=="2",]
An.darlingi_australia<-An_darlingi[An_darlingi$cont=="3",]
An.darlingi_n.america<-An_darlingi[An_darlingi$cont=="4",]
An.darlingi_oceania<-An_darlingi[An_darlingi$cont=="5",]
An.darlingi_s.america<-An_darlingi[An_darlingi$cont=="6",]
An.darlingi_europe<-An_darlingi[An_darlingi$cont=="8",]

An_darlingi_continents<-rbind(An.darlingi_africa, An.darlingi_asia, An.darlingi_australia, An.darlingi_n.america, An.darlingi_oceania, An.darlingi_s.america, An.darlingi_europe)
An_darlingi_continents
#in a list
An_darlingi_continents.list<-list(An.darlingi_africa, An.darlingi_asia, An.darlingi_australia, An.darlingi_n.america, An.darlingi_oceania, An.darlingi_s.america, An.darlingi_europe)
An_darlingi_continents.list

#Anopheles dirus
An.dirus.df<-An.dirus.data
An.dirus.cont<-extract(continent, An.dirus.df)
An.dirus.cont
An.dirus.df$cont<-An.dirus.cont
An.dirus.df.noNA<-An.dirus.df[!is.na(An.dirus.df$cont),]
An.dirus.df.noNA
An.dirus.df.noNA$species<-"An_dirus"
An.dirus.df.noNA<-An.dirus.df.noNA[,c(4,3,1,2)]
An.dirus.df.noNA
An_dirus<-An.dirus.df.noNA

An.dirus_africa<-An_dirus[An_dirus$cont=="1",]
An.dirus_asia<-An_dirus[An_dirus$cont=="2",]
An.dirus_australia<-An_dirus[An_dirus$cont=="3",]
An.dirus_n.america<-An_dirus[An_dirus$cont=="4",]
An.dirus_oceania<-An_dirus[An_dirus$cont=="5",]
An.dirus_s.america<-An_dirus[An_dirus$cont=="6",]
An.dirus_europe<-An_dirus[An_dirus$cont=="8",]

An_dirus_continents<-rbind(An.dirus_africa, An.dirus_asia, An.dirus_australia, An.dirus_n.america, An.dirus_oceania, An.dirus_s.america, An.dirus_europe)
An_dirus_continents
#in a list
An_dirus_continents.list<-list(An.dirus_africa, An.dirus_asia, An.dirus_australia, An.dirus_n.america, An.dirus_oceania, An.dirus_s.america, An.dirus_europe)
An_dirus_continents.list

#Anopheles farauti
An.farauti.df<-An.farauti.data
An.farauti.cont<-extract(continent, An.farauti.df)
An.farauti.cont
An.farauti.df$cont<-An.farauti.cont
An.farauti.df.noNA<-An.farauti.df[!is.na(An.farauti.df$cont),]
An.farauti.df.noNA
An.farauti.df.noNA$species<-"An_farauti"
An.farauti.df.noNA<-An.farauti.df.noNA[,c(4,3,1,2)]
An.farauti.df.noNA
An_farauti<-An.farauti.df.noNA

An.farauti_africa<-An_farauti[An_farauti$cont=="1",]
An.farauti_asia<-An_farauti[An_farauti$cont=="2",]
An.farauti_australia<-An_farauti[An_farauti$cont=="3",]
An.farauti_n.america<-An_farauti[An_farauti$cont=="4",]
An.farauti_oceania<-An_farauti[An_farauti$cont=="5",]
An.farauti_s.america<-An_farauti[An_farauti$cont=="6",]
An.farauti_europe<-An_farauti[An_farauti$cont=="8",]

An_farauti_continents<-rbind(An.farauti_africa, An.farauti_asia, An.farauti_australia, An.farauti_n.america, An.farauti_oceania, An.farauti_s.america, An.farauti_europe)
An_farauti_continents
#in a list
An_farauti_continents.list<-list(An.farauti_africa, An.farauti_asia, An.farauti_australia, An.farauti_n.america, An.farauti_oceania, An.farauti_s.america, An.farauti_europe)
An_farauti_continents.list

#Anopheles fluviatilis
An.fluviatilis.df<-An.fluviatilis.data
An.fluviatilis.cont<-extract(continent, An.fluviatilis.df)
An.fluviatilis.cont
An.fluviatilis.df$cont<-An.fluviatilis.cont
An.fluviatilis.df.noNA<-An.fluviatilis.df[!is.na(An.fluviatilis.df$cont),]
An.fluviatilis.df.noNA
An.fluviatilis.df.noNA$species<-"An_fluviatilis"
An.fluviatilis.df.noNA<-An.fluviatilis.df.noNA[,c(4,3,1,2)]
An.fluviatilis.df.noNA
An_fluviatilis<-An.fluviatilis.df.noNA

An.fluviatilis_africa<-An_fluviatilis[An_fluviatilis$cont=="1",]
An.fluviatilis_asia<-An_fluviatilis[An_fluviatilis$cont=="2",]
An.fluviatilis_australia<-An_fluviatilis[An_fluviatilis$cont=="3",]
An.fluviatilis_n.america<-An_fluviatilis[An_fluviatilis$cont=="4",]
An.fluviatilis_oceania<-An_fluviatilis[An_fluviatilis$cont=="5",]
An.fluviatilis_s.america<-An_fluviatilis[An_fluviatilis$cont=="6",]
An.fluviatilis_europe<-An_fluviatilis[An_fluviatilis$cont=="8",]

An_fluviatilis_continents<-rbind(An.fluviatilis_africa, An.fluviatilis_asia, An.fluviatilis_australia, An.fluviatilis_n.america, An.fluviatilis_oceania, An.fluviatilis_s.america, An.fluviatilis_europe)
An_fluviatilis_continents
#in a list
An_fluviatilis_continents.list<-list(An.fluviatilis_africa, An.fluviatilis_asia, An.fluviatilis_australia, An.fluviatilis_n.america, An.fluviatilis_oceania, An.fluviatilis_s.america, An.fluviatilis_europe)
An_fluviatilis_continents.list

#Anopheles franciscanus
An.franciscanus.df<-An.franciscanus.data
An.franciscanus.cont<-extract(continent, An.franciscanus.df)
An.franciscanus.cont
An.franciscanus.df$cont<-An.franciscanus.cont
An.franciscanus.df.noNA<-An.franciscanus.df[!is.na(An.franciscanus.df$cont),]
An.franciscanus.df.noNA
An.franciscanus.df.noNA$species<-"An_franciscanus"
An.franciscanus.df.noNA<-An.franciscanus.df.noNA[,c(4,3,1,2)]
An.franciscanus.df.noNA
An_franciscanus<-An.franciscanus.df.noNA

An.franciscanus_africa<-An_franciscanus[An_franciscanus$cont=="1",]
An.franciscanus_asia<-An_franciscanus[An_franciscanus$cont=="2",]
An.franciscanus_australia<-An_franciscanus[An_franciscanus$cont=="3",]
An.franciscanus_n.america<-An_franciscanus[An_franciscanus$cont=="4",]
An.franciscanus_oceania<-An_franciscanus[An_franciscanus$cont=="5",]
An.franciscanus_s.america<-An_franciscanus[An_franciscanus$cont=="6",]
An.franciscanus_europe<-An_franciscanus[An_franciscanus$cont=="8",]

An_franciscanus_continents<-rbind(An.franciscanus_africa, An.franciscanus_asia, An.franciscanus_australia, An.franciscanus_n.america, An.franciscanus_oceania, An.franciscanus_s.america, An.franciscanus_europe)
An_franciscanus_continents
#in a list
An_franciscanus_continents.list<-list(An.franciscanus_africa, An.franciscanus_asia, An.franciscanus_australia, An.franciscanus_n.america, An.franciscanus_oceania, An.franciscanus_s.america, An.franciscanus_europe)
An_franciscanus_continents.list

#Anopheles freeborni
An.freeborni.df<-An.freeborni.data
An.freeborni.cont<-extract(continent, An.freeborni.df)
An.freeborni.cont
An.freeborni.df$cont<-An.freeborni.cont
An.freeborni.df.noNA<-An.freeborni.df[!is.na(An.freeborni.df$cont),]
An.freeborni.df.noNA
An.freeborni.df.noNA$species<-"An_freeborni"
An.freeborni.df.noNA<-An.freeborni.df.noNA[,c(4,3,1,2)]
An.freeborni.df.noNA
An_freeborni<-An.freeborni.df.noNA

An.freeborni_africa<-An_freeborni[An_freeborni$cont=="1",]
An.freeborni_asia<-An_freeborni[An_freeborni$cont=="2",]
An.freeborni_australia<-An_freeborni[An_freeborni$cont=="3",]
An.freeborni_n.america<-An_freeborni[An_freeborni$cont=="4",]
An.freeborni_oceania<-An_freeborni[An_freeborni$cont=="5",]
An.freeborni_s.america<-An_freeborni[An_freeborni$cont=="6",]
An.freeborni_europe<-An_freeborni[An_freeborni$cont=="8",]

An_freeborni_continents<-rbind(An.freeborni_africa, An.freeborni_asia, An.freeborni_australia, An.freeborni_n.america, An.freeborni_oceania, An.freeborni_s.america, An.freeborni_europe)
An_freeborni_continents
#in a list
An_freeborni_continents.list<-list(An.freeborni_africa, An.freeborni_asia, An.freeborni_australia, An.freeborni_n.america, An.freeborni_oceania, An.freeborni_s.america, An.freeborni_europe)
An_freeborni_continents.list

#Anopheles funestus
An.funestus.df<-An.funestus.data
An.funestus.cont<-extract(continent, An.funestus.df)
An.funestus.cont
An.funestus.df$cont<-An.funestus.cont
An.funestus.df.noNA<-An.funestus.df[!is.na(An.funestus.df$cont),]
An.funestus.df.noNA
An.funestus.df.noNA$species<-"An_funestus"
An.funestus.df.noNA<-An.funestus.df.noNA[,c(4,3,1,2)]
An.funestus.df.noNA
An_funestus<-An.funestus.df.noNA

An.funestus_africa<-An_funestus[An_funestus$cont=="1",]
An.funestus_asia<-An_funestus[An_funestus$cont=="2",]
An.funestus_australia<-An_funestus[An_funestus$cont=="3",]
An.funestus_n.america<-An_funestus[An_funestus$cont=="4",]
An.funestus_oceania<-An_funestus[An_funestus$cont=="5",]
An.funestus_s.america<-An_funestus[An_funestus$cont=="6",]
An.funestus_europe<-An_funestus[An_funestus$cont=="8",]

An_funestus_continents<-rbind(An.funestus_africa, An.funestus_asia, An.funestus_australia, An.funestus_n.america, An.funestus_oceania, An.funestus_s.america, An.funestus_europe)
An_funestus_continents
#in a list
An_funestus_continents.list<-list(An.funestus_africa, An.funestus_asia, An.funestus_australia, An.funestus_n.america, An.funestus_oceania, An.funestus_s.america, An.funestus_europe)
An_funestus_continents.list

#Anopheles gambiae
An.gambiae.df<-An.gambiae.data
An.gambiae.cont<-extract(continent, An.gambiae.df)
An.gambiae.cont
An.gambiae.df$cont<-An.gambiae.cont
An.gambiae.df.noNA<-An.gambiae.df[!is.na(An.gambiae.df$cont),]
An.gambiae.df.noNA
An.gambiae.df.noNA$species<-"An_gambiae"
An.gambiae.df.noNA<-An.gambiae.df.noNA[,c(4,3,1,2)]
An.gambiae.df.noNA
An_gambiae<-An.gambiae.df.noNA

An.gambiae_africa<-An_gambiae[An_gambiae$cont=="1",]
An.gambiae_asia<-An_gambiae[An_gambiae$cont=="2",]
An.gambiae_australia<-An_gambiae[An_gambiae$cont=="3",]
An.gambiae_n.america<-An_gambiae[An_gambiae$cont=="4",]
An.gambiae_oceania<-An_gambiae[An_gambiae$cont=="5",]
An.gambiae_s.america<-An_gambiae[An_gambiae$cont=="6",]
An.gambiae_europe<-An_gambiae[An_gambiae$cont=="8",]

An_gambiae_continents<-rbind(An.gambiae_africa, An.gambiae_asia, An.gambiae_australia, An.gambiae_n.america, An.gambiae_oceania, An.gambiae_s.america, An.gambiae_europe)
An_gambiae_continents
#in a list
An_gambiae_continents.list<-list(An.gambiae_africa, An.gambiae_asia, An.gambiae_australia, An.gambiae_n.america, An.gambiae_oceania, An.gambiae_s.america, An.gambiae_europe)
An_gambiae_continents.list

#Anopheles hyrcanus
An.hyrcanus.df<-An.hyrcanus.data
An.hyrcanus.cont<-extract(continent, An.hyrcanus.df)
An.hyrcanus.cont
An.hyrcanus.df$cont<-An.hyrcanus.cont
An.hyrcanus.df.noNA<-An.hyrcanus.df[!is.na(An.hyrcanus.df$cont),]
An.hyrcanus.df.noNA
An.hyrcanus.df.noNA$species<-"An_hyrcanus"
An.hyrcanus.df.noNA<-An.hyrcanus.df.noNA[,c(4,3,1,2)]
An.hyrcanus.df.noNA
An_hyrcanus<-An.hyrcanus.df.noNA

An.hyrcanus_africa<-An_hyrcanus[An_hyrcanus$cont=="1",]
An.hyrcanus_asia<-An_hyrcanus[An_hyrcanus$cont=="2",]
An.hyrcanus_australia<-An_hyrcanus[An_hyrcanus$cont=="3",]
An.hyrcanus_n.america<-An_hyrcanus[An_hyrcanus$cont=="4",]
An.hyrcanus_oceania<-An_hyrcanus[An_hyrcanus$cont=="5",]
An.hyrcanus_s.america<-An_hyrcanus[An_hyrcanus$cont=="6",]
An.hyrcanus_europe<-An_hyrcanus[An_hyrcanus$cont=="8",]

An_hyrcanus_continents<-rbind(An.hyrcanus_africa, An.hyrcanus_asia, An.hyrcanus_australia, An.hyrcanus_n.america, An.hyrcanus_oceania, An.hyrcanus_s.america, An.hyrcanus_europe)
An_hyrcanus_continents
#in a list
An_hyrcanus_continents.list<-list(An.hyrcanus_africa, An.hyrcanus_asia, An.hyrcanus_australia, An.hyrcanus_n.america, An.hyrcanus_oceania, An.hyrcanus_s.america, An.hyrcanus_europe)
An_hyrcanus_continents.list

#Anopheles koliensis
An.koliensis.df<-An.koliensis.data
An.koliensis.cont<-extract(continent, An.koliensis.df)
An.koliensis.cont
An.koliensis.df$cont<-An.koliensis.cont
An.koliensis.df.noNA<-An.koliensis.df[!is.na(An.koliensis.df$cont),]
An.koliensis.df.noNA
An.koliensis.df.noNA$species<-"An_koliensis"
An.koliensis.df.noNA<-An.koliensis.df.noNA[,c(4,3,1,2)]
An.koliensis.df.noNA
An_koliensis<-An.koliensis.df.noNA

An.koliensis_africa<-An_koliensis[An_koliensis$cont=="1",]
An.koliensis_asia<-An_koliensis[An_koliensis$cont=="2",]
An.koliensis_australia<-An_koliensis[An_koliensis$cont=="3",]
An.koliensis_n.america<-An_koliensis[An_koliensis$cont=="4",]
An.koliensis_oceania<-An_koliensis[An_koliensis$cont=="5",]
An.koliensis_s.america<-An_koliensis[An_koliensis$cont=="6",]
An.koliensis_europe<-An_koliensis[An_koliensis$cont=="8",]

An_koliensis_continents<-rbind(An.koliensis_africa, An.koliensis_asia, An.koliensis_australia, An.koliensis_n.america, An.koliensis_oceania, An.koliensis_s.america, An.koliensis_europe)
An_koliensis_continents
#in a list
An_koliensis_continents.list<-list(An.koliensis_africa, An.koliensis_asia, An.koliensis_australia, An.koliensis_n.america, An.koliensis_oceania, An.koliensis_s.america, An.koliensis_europe)
An_koliensis_continents.list

#Anopheles lesteri
An.lesteri.df<-An.lesteri.data
An.lesteri.cont<-extract(continent, An.lesteri.df)
An.lesteri.cont
An.lesteri.df$cont<-An.lesteri.cont
An.lesteri.df.noNA<-An.lesteri.df[!is.na(An.lesteri.df$cont),]
An.lesteri.df.noNA
An.lesteri.df.noNA$species<-"An_lesteri"
An.lesteri.df.noNA<-An.lesteri.df.noNA[,c(4,3,1,2)]
An.lesteri.df.noNA
An_lesteri<-An.lesteri.df.noNA

An.lesteri_africa<-An_lesteri[An_lesteri$cont=="1",]
An.lesteri_asia<-An_lesteri[An_lesteri$cont=="2",]
An.lesteri_australia<-An_lesteri[An_lesteri$cont=="3",]
An.lesteri_n.america<-An_lesteri[An_lesteri$cont=="4",]
An.lesteri_oceania<-An_lesteri[An_lesteri$cont=="5",]
An.lesteri_s.america<-An_lesteri[An_lesteri$cont=="6",]
An.lesteri_europe<-An_lesteri[An_lesteri$cont=="8",]

An_lesteri_continents<-rbind(An.lesteri_africa, An.lesteri_asia, An.lesteri_australia, An.lesteri_n.america, An.lesteri_oceania, An.lesteri_s.america, An.lesteri_europe)
An_lesteri_continents
#in a list
An_lesteri_continents.list<-list(An.lesteri_africa, An.lesteri_asia, An.lesteri_australia, An.lesteri_n.america, An.lesteri_oceania, An.lesteri_s.america, An.lesteri_europe)
An_lesteri_continents.list

#Anopheles leucosphyrus
An.leucosphyrus.df<-An.leucosphyrus.data
An.leucosphyrus.cont<-extract(continent, An.leucosphyrus.df)
An.leucosphyrus.cont
An.leucosphyrus.df$cont<-An.leucosphyrus.cont
An.leucosphyrus.df.noNA<-An.leucosphyrus.df[!is.na(An.leucosphyrus.df$cont),]
An.leucosphyrus.df.noNA
An.leucosphyrus.df.noNA$species<-"An_leucosphyrus"
An.leucosphyrus.df.noNA<-An.leucosphyrus.df.noNA[,c(4,3,1,2)]
An.leucosphyrus.df.noNA
An_leucosphyrus<-An.leucosphyrus.df.noNA

An.leucosphyrus_africa<-An_leucosphyrus[An_leucosphyrus$cont=="1",]
An.leucosphyrus_asia<-An_leucosphyrus[An_leucosphyrus$cont=="2",]
An.leucosphyrus_australia<-An_leucosphyrus[An_leucosphyrus$cont=="3",]
An.leucosphyrus_n.america<-An_leucosphyrus[An_leucosphyrus$cont=="4",]
An.leucosphyrus_oceania<-An_leucosphyrus[An_leucosphyrus$cont=="5",]
An.leucosphyrus_s.america<-An_leucosphyrus[An_leucosphyrus$cont=="6",]
An.leucosphyrus_europe<-An_leucosphyrus[An_leucosphyrus$cont=="8",]

An_leucosphyrus_continents<-rbind(An.leucosphyrus_africa, An.leucosphyrus_asia, An.leucosphyrus_australia, An.leucosphyrus_n.america, An.leucosphyrus_oceania, An.leucosphyrus_s.america, An.leucosphyrus_europe)
An_leucosphyrus_continents
#in a list
An_leucosphyrus_continents.list<-list(An.leucosphyrus_africa, An.leucosphyrus_asia, An.leucosphyrus_australia, An.leucosphyrus_n.america, An.leucosphyrus_oceania, An.leucosphyrus_s.america, An.leucosphyrus_europe)
An_leucosphyrus_continents.list

#Anopheles maculatus
An.maculatus.df<-An.maculatus.data
An.maculatus.cont<-extract(continent, An.maculatus.df)
An.maculatus.cont
An.maculatus.df$cont<-An.maculatus.cont
An.maculatus.df.noNA<-An.maculatus.df[!is.na(An.maculatus.df$cont),]
An.maculatus.df.noNA
An.maculatus.df.noNA$species<-"An_maculatus"
An.maculatus.df.noNA<-An.maculatus.df.noNA[,c(4,3,1,2)]
An.maculatus.df.noNA
An_maculatus<-An.maculatus.df.noNA

An.maculatus_africa<-An_maculatus[An_maculatus$cont=="1",]
An.maculatus_asia<-An_maculatus[An_maculatus$cont=="2",]
An.maculatus_australia<-An_maculatus[An_maculatus$cont=="3",]
An.maculatus_n.america<-An_maculatus[An_maculatus$cont=="4",]
An.maculatus_oceania<-An_maculatus[An_maculatus$cont=="5",]
An.maculatus_s.america<-An_maculatus[An_maculatus$cont=="6",]
An.maculatus_europe<-An_maculatus[An_maculatus$cont=="8",]

An_maculatus_continents<-rbind(An.maculatus_africa, An.maculatus_asia, An.maculatus_australia, An.maculatus_n.america, An.maculatus_oceania, An.maculatus_s.america, An.maculatus_europe)
An_maculatus_continents
#in a list
An_maculatus_continents.list<-list(An.maculatus_africa, An.maculatus_asia, An.maculatus_australia, An.maculatus_n.america, An.maculatus_oceania, An.maculatus_s.america, An.maculatus_europe)
An_maculatus_continents.list

#Anopheles maculipennis
An.maculipennis.df<-An.maculipennis.data
An.maculipennis.cont<-extract(continent, An.maculipennis.df)
An.maculipennis.cont
An.maculipennis.df$cont<-An.maculipennis.cont
An.maculipennis.df.noNA<-An.maculipennis.df[!is.na(An.maculipennis.df$cont),]
An.maculipennis.df.noNA
An.maculipennis.df.noNA$species<-"An_maculipennis"
An.maculipennis.df.noNA<-An.maculipennis.df.noNA[,c(4,3,1,2)]
An.maculipennis.df.noNA
An_maculipennis<-An.maculipennis.df.noNA

An.maculipennis_africa<-An_maculipennis[An_maculipennis$cont=="1",]
An.maculipennis_asia<-An_maculipennis[An_maculipennis$cont=="2",]
An.maculipennis_australia<-An_maculipennis[An_maculipennis$cont=="3",]
An.maculipennis_n.america<-An_maculipennis[An_maculipennis$cont=="4",]
An.maculipennis_oceania<-An_maculipennis[An_maculipennis$cont=="5",]
An.maculipennis_s.america<-An_maculipennis[An_maculipennis$cont=="6",]
An.maculipennis_europe<-An_maculipennis[An_maculipennis$cont=="8",]

An_maculipennis_continents<-rbind(An.maculipennis_africa, An.maculipennis_asia, An.maculipennis_australia, An.maculipennis_n.america, An.maculipennis_oceania, An.maculipennis_s.america, An.maculipennis_europe)
An_maculipennis_continents
#in a list
An_maculipennis_continents.list<-list(An.maculipennis_africa, An.maculipennis_asia, An.maculipennis_australia, An.maculipennis_n.america, An.maculipennis_oceania, An.maculipennis_s.america, An.maculipennis_europe)
An_maculipennis_continents.list

#Anopheles marajoara
An.marajoara.df<-An.marajoara.data
An.marajoara.cont<-extract(continent, An.marajoara.df)
An.marajoara.cont
An.marajoara.df$cont<-An.marajoara.cont
An.marajoara.df.noNA<-An.marajoara.df[!is.na(An.marajoara.df$cont),]
An.marajoara.df.noNA
An.marajoara.df.noNA$species<-"An_marajoara"
An.marajoara.df.noNA<-An.marajoara.df.noNA[,c(4,3,1,2)]
An.marajoara.df.noNA
An_marajoara<-An.marajoara.df.noNA

An.marajoara_africa<-An_marajoara[An_marajoara$cont=="1",]
An.marajoara_asia<-An_marajoara[An_marajoara$cont=="2",]
An.marajoara_australia<-An_marajoara[An_marajoara$cont=="3",]
An.marajoara_n.america<-An_marajoara[An_marajoara$cont=="4",]
An.marajoara_oceania<-An_marajoara[An_marajoara$cont=="5",]
An.marajoara_s.america<-An_marajoara[An_marajoara$cont=="6",]
An.marajoara_europe<-An_marajoara[An_marajoara$cont=="8",]

An_marajoara_continents<-rbind(An.marajoara_africa, An.marajoara_asia, An.marajoara_australia, An.marajoara_n.america, An.marajoara_oceania, An.marajoara_s.america, An.marajoara_europe)
An_marajoara_continents
#in a list
An_marajoara_continents.list<-list(An.marajoara_africa, An.marajoara_asia, An.marajoara_australia, An.marajoara_n.america, An.marajoara_oceania, An.marajoara_s.america, An.marajoara_europe)
An_marajoara_continents.list

#Anopheles melas
An.melas.df<-An.melas.data
An.melas.cont<-extract(continent, An.melas.df)
An.melas.cont
An.melas.df$cont<-An.melas.cont
An.melas.df.noNA<-An.melas.df[!is.na(An.melas.df$cont),]
An.melas.df.noNA
An.melas.df.noNA$species<-"An_melas"
An.melas.df.noNA<-An.melas.df.noNA[,c(4,3,1,2)]
An.melas.df.noNA
An_melas<-An.melas.df.noNA

An.melas_africa<-An_melas[An_melas$cont=="1",]
An.melas_asia<-An_melas[An_melas$cont=="2",]
An.melas_australia<-An_melas[An_melas$cont=="3",]
An.melas_n.america<-An_melas[An_melas$cont=="4",]
An.melas_oceania<-An_melas[An_melas$cont=="5",]
An.melas_s.america<-An_melas[An_melas$cont=="6",]
An.melas_europe<-An_melas[An_melas$cont=="8",]

An_melas_continents<-rbind(An.melas_africa, An.melas_asia, An.melas_australia, An.melas_n.america, An.melas_oceania, An.melas_s.america, An.melas_europe)
An_melas_continents
#in a list
An_melas_continents.list<-list(An.melas_africa, An.melas_asia, An.melas_australia, An.melas_n.america, An.melas_oceania, An.melas_s.america, An.melas_europe)
An_melas_continents.list

#Anopheles merus
An.merus.df<-An.merus.data
An.merus.cont<-extract(continent, An.merus.df)
An.merus.cont
An.merus.df$cont<-An.merus.cont
An.merus.df.noNA<-An.merus.df[!is.na(An.merus.df$cont),]
An.merus.df.noNA
An.merus.df.noNA$species<-"An_merus"
An.merus.df.noNA<-An.merus.df.noNA[,c(4,3,1,2)]
An.merus.df.noNA
An_merus<-An.merus.df.noNA

An.merus_africa<-An_merus[An_merus$cont=="1",]
An.merus_asia<-An_merus[An_merus$cont=="2",]
An.merus_australia<-An_merus[An_merus$cont=="3",]
An.merus_n.america<-An_merus[An_merus$cont=="4",]
An.merus_oceania<-An_merus[An_merus$cont=="5",]
An.merus_s.america<-An_merus[An_merus$cont=="6",]
An.merus_europe<-An_merus[An_merus$cont=="8",]

An_merus_continents<-rbind(An.merus_africa, An.merus_asia, An.merus_australia, An.merus_n.america, An.merus_oceania, An.merus_s.america, An.merus_europe)
An_merus_continents
#in a list
An_merus_continents.list<-list(An.merus_africa, An.merus_asia, An.merus_australia, An.merus_n.america, An.merus_oceania, An.merus_s.america, An.merus_europe)
An_merus_continents.list

#Anopheles messeae
An.messeae.df<-An.messeae.data
An.messeae.cont<-extract(continent, An.messeae.df)
An.messeae.cont
An.messeae.df$cont<-An.messeae.cont
An.messeae.df.noNA<-An.messeae.df[!is.na(An.messeae.df$cont),]
An.messeae.df.noNA
An.messeae.df.noNA$species<-"An_messeae"
An.messeae.df.noNA<-An.messeae.df.noNA[,c(4,3,1,2)]
An.messeae.df.noNA
An_messeae<-An.messeae.df.noNA

An.messeae_africa<-An_messeae[An_messeae$cont=="1",]
An.messeae_asia<-An_messeae[An_messeae$cont=="2",]
An.messeae_australia<-An_messeae[An_messeae$cont=="3",]
An.messeae_n.america<-An_messeae[An_messeae$cont=="4",]
An.messeae_oceania<-An_messeae[An_messeae$cont=="5",]
An.messeae_s.america<-An_messeae[An_messeae$cont=="6",]
An.messeae_europe<-An_messeae[An_messeae$cont=="8",]

An_messeae_continents<-rbind(An.messeae_africa, An.messeae_asia, An.messeae_australia, An.messeae_n.america, An.messeae_oceania, An.messeae_s.america, An.messeae_europe)
An_messeae_continents
#in a list
An_messeae_continents.list<-list(An.messeae_africa, An.messeae_asia, An.messeae_australia, An.messeae_n.america, An.messeae_oceania, An.messeae_s.america, An.messeae_europe)
An_messeae_continents.list

#Anopheles minimus
An.minimus.df<-An.minimus.data
An.minimus.cont<-extract(continent, An.minimus.df)
An.minimus.cont
An.minimus.df$cont<-An.minimus.cont
An.minimus.df.noNA<-An.minimus.df[!is.na(An.minimus.df$cont),]
An.minimus.df.noNA
An.minimus.df.noNA$species<-"An_minimus"
An.minimus.df.noNA<-An.minimus.df.noNA[,c(4,3,1,2)]
An.minimus.df.noNA
An_minimus<-An.minimus.df.noNA

An.minimus_africa<-An_minimus[An_minimus$cont=="1",]
An.minimus_asia<-An_minimus[An_minimus$cont=="2",]
An.minimus_australia<-An_minimus[An_minimus$cont=="3",]
An.minimus_n.america<-An_minimus[An_minimus$cont=="4",]
An.minimus_oceania<-An_minimus[An_minimus$cont=="5",]
An.minimus_s.america<-An_minimus[An_minimus$cont=="6",]
An.minimus_europe<-An_minimus[An_minimus$cont=="8",]

An_minimus_continents<-rbind(An.minimus_africa, An.minimus_asia, An.minimus_australia, An.minimus_n.america, An.minimus_oceania, An.minimus_s.america, An.minimus_europe)
An_minimus_continents
#in a list
An_minimus_continents.list<-list(An.minimus_africa, An.minimus_asia, An.minimus_australia, An.minimus_n.america, An.minimus_oceania, An.minimus_s.america, An.minimus_europe)
An_minimus_continents.list

#Anopheles moucheti
An.moucheti.df<-An.moucheti.data
An.moucheti.cont<-extract(continent, An.moucheti.df)
An.moucheti.cont
An.moucheti.df$cont<-An.moucheti.cont
An.moucheti.df.noNA<-An.moucheti.df[!is.na(An.moucheti.df$cont),]
An.moucheti.df.noNA
An.moucheti.df.noNA$species<-"An_moucheti"
An.moucheti.df.noNA<-An.moucheti.df.noNA[,c(4,3,1,2)]
An.moucheti.df.noNA
An_moucheti<-An.moucheti.df.noNA

An.moucheti_africa<-An_moucheti[An_moucheti$cont=="1",]
An.moucheti_asia<-An_moucheti[An_moucheti$cont=="2",]
An.moucheti_australia<-An_moucheti[An_moucheti$cont=="3",]
An.moucheti_n.america<-An_moucheti[An_moucheti$cont=="4",]
An.moucheti_oceania<-An_moucheti[An_moucheti$cont=="5",]
An.moucheti_s.america<-An_moucheti[An_moucheti$cont=="6",]
An.moucheti_europe<-An_moucheti[An_moucheti$cont=="8",]

An_moucheti_continents<-rbind(An.moucheti_africa, An.moucheti_asia, An.moucheti_australia, An.moucheti_n.america, An.moucheti_oceania, An.moucheti_s.america, An.moucheti_europe)
An_moucheti_continents
#in a list
An_moucheti_continents.list<-list(An.moucheti_africa, An.moucheti_asia, An.moucheti_australia, An.moucheti_n.america, An.moucheti_oceania, An.moucheti_s.america, An.moucheti_europe)
An_moucheti_continents.list

#Anopheles nili
An.nili.df<-An.nili.data
An.nili.cont<-extract(continent, An.nili.df)
An.nili.cont
An.nili.df$cont<-An.nili.cont
An.nili.df.noNA<-An.nili.df[!is.na(An.nili.df$cont),]
An.nili.df.noNA
An.nili.df.noNA$species<-"An_nili"
An.nili.df.noNA<-An.nili.df.noNA[,c(4,3,1,2)]
An.nili.df.noNA
An_nili<-An.nili.df.noNA

An.nili_africa<-An_nili[An_nili$cont=="1",]
An.nili_asia<-An_nili[An_nili$cont=="2",]
An.nili_australia<-An_nili[An_nili$cont=="3",]
An.nili_n.america<-An_nili[An_nili$cont=="4",]
An.nili_oceania<-An_nili[An_nili$cont=="5",]
An.nili_s.america<-An_nili[An_nili$cont=="6",]
An.nili_europe<-An_nili[An_nili$cont=="8",]

An_nili_continents<-rbind(An.nili_africa, An.nili_asia, An.nili_australia, An.nili_n.america, An.nili_oceania, An.nili_s.america, An.nili_europe)
An_nili_continents
#in a list
An_nili_continents.list<-list(An.nili_africa, An.nili_asia, An.nili_australia, An.nili_n.america, An.nili_oceania, An.nili_s.america, An.nili_europe)
An_nili_continents.list

#Anopheles nuneztovari
An.nuneztovari.df<-An.nuneztovari.data
An.nuneztovari.cont<-extract(continent, An.nuneztovari.df)
An.nuneztovari.cont
An.nuneztovari.df$cont<-An.nuneztovari.cont
An.nuneztovari.df.noNA<-An.nuneztovari.df[!is.na(An.nuneztovari.df$cont),]
An.nuneztovari.df.noNA
An.nuneztovari.df.noNA$species<-"An_nuneztovari"
An.nuneztovari.df.noNA<-An.nuneztovari.df.noNA[,c(4,3,1,2)]
An.nuneztovari.df.noNA
An_nuneztovari<-An.nuneztovari.df.noNA

An.nuneztovari_africa<-An_nuneztovari[An_nuneztovari$cont=="1",]
An.nuneztovari_asia<-An_nuneztovari[An_nuneztovari$cont=="2",]
An.nuneztovari_australia<-An_nuneztovari[An_nuneztovari$cont=="3",]
An.nuneztovari_n.america<-An_nuneztovari[An_nuneztovari$cont=="4",]
An.nuneztovari_oceania<-An_nuneztovari[An_nuneztovari$cont=="5",]
An.nuneztovari_s.america<-An_nuneztovari[An_nuneztovari$cont=="6",]
An.nuneztovari_europe<-An_nuneztovari[An_nuneztovari$cont=="8",]

An_nuneztovari_continents<-rbind(An.nuneztovari_africa, An.nuneztovari_asia, An.nuneztovari_australia, An.nuneztovari_n.america, An.nuneztovari_oceania, An.nuneztovari_s.america, An.nuneztovari_europe)
An_nuneztovari_continents
#in a list
An_nuneztovari_continents.list<-list(An.nuneztovari_africa, An.nuneztovari_asia, An.nuneztovari_australia, An.nuneztovari_n.america, An.nuneztovari_oceania, An.nuneztovari_s.america, An.nuneztovari_europe)
An_nuneztovari_continents.list

#Anopheles pseudopunctipennis
An.pseudopunctipennis.df<-An.pseudopunctipennis.data
An.pseudopunctipennis.cont<-extract(continent, An.pseudopunctipennis.df)
An.pseudopunctipennis.cont
An.pseudopunctipennis.df$cont<-An.pseudopunctipennis.cont
An.pseudopunctipennis.df.noNA<-An.pseudopunctipennis.df[!is.na(An.pseudopunctipennis.df$cont),]
An.pseudopunctipennis.df.noNA
An.pseudopunctipennis.df.noNA$species<-"An_pseudopunctipennis"
An.pseudopunctipennis.df.noNA<-An.pseudopunctipennis.df.noNA[,c(4,3,1,2)]
An.pseudopunctipennis.df.noNA
An_pseudopunctipennis<-An.pseudopunctipennis.df.noNA

An.pseudopunctipennis_africa<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="1",]
An.pseudopunctipennis_asia<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="2",]
An.pseudopunctipennis_australia<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="3",]
An.pseudopunctipennis_n.america<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="4",]
An.pseudopunctipennis_oceania<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="5",]
An.pseudopunctipennis_s.america<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="6",]
An.pseudopunctipennis_europe<-An_pseudopunctipennis[An_pseudopunctipennis$cont=="8",]

An_pseudopunctipennis_continents<-rbind(An.pseudopunctipennis_africa, An.pseudopunctipennis_asia, An.pseudopunctipennis_australia, An.pseudopunctipennis_n.america, An.pseudopunctipennis_oceania, An.pseudopunctipennis_s.america, An.pseudopunctipennis_europe)
An_pseudopunctipennis_continents
#in a list
An_pseudopunctipennis_continents.list<-list(An.pseudopunctipennis_africa, An.pseudopunctipennis_asia, An.pseudopunctipennis_australia, An.pseudopunctipennis_n.america, An.pseudopunctipennis_oceania, An.pseudopunctipennis_s.america, An.pseudopunctipennis_europe)
An_pseudopunctipennis_continents.list

#Anopheles punctipennis
An.punctipennis.df<-An.punctipennis.data
An.punctipennis.cont<-extract(continent, An.punctipennis.df)
An.punctipennis.cont
An.punctipennis.df$cont<-An.punctipennis.cont
An.punctipennis.df.noNA<-An.punctipennis.df[!is.na(An.punctipennis.df$cont),]
An.punctipennis.df.noNA
An.punctipennis.df.noNA$species<-"An_punctipennis"
An.punctipennis.df.noNA<-An.punctipennis.df.noNA[,c(4,3,1,2)]
An.punctipennis.df.noNA
An_punctipennis<-An.punctipennis.df.noNA

An.punctipennis_africa<-An_punctipennis[An_punctipennis$cont=="1",]
An.punctipennis_asia<-An_punctipennis[An_punctipennis$cont=="2",]
An.punctipennis_australia<-An_punctipennis[An_punctipennis$cont=="3",]
An.punctipennis_n.america<-An_punctipennis[An_punctipennis$cont=="4",]
An.punctipennis_oceania<-An_punctipennis[An_punctipennis$cont=="5",]
An.punctipennis_s.america<-An_punctipennis[An_punctipennis$cont=="6",]
An.punctipennis_europe<-An_punctipennis[An_punctipennis$cont=="8",]

An_punctipennis_continents<-rbind(An.punctipennis_africa, An.punctipennis_asia, An.punctipennis_australia, An.punctipennis_n.america, An.punctipennis_oceania, An.punctipennis_s.america, An.punctipennis_europe)
An_punctipennis_continents
#in a list
An_punctipennis_continents.list<-list(An.punctipennis_africa, An.punctipennis_asia, An.punctipennis_australia, An.punctipennis_n.america, An.punctipennis_oceania, An.punctipennis_s.america, An.punctipennis_europe)
An_punctipennis_continents.list

#Anopheles punctulatus
An.punctulatus.df<-An.punctulatus.data
An.punctulatus.cont<-extract(continent, An.punctulatus.df)
An.punctulatus.cont
An.punctulatus.df$cont<-An.punctulatus.cont
An.punctulatus.df.noNA<-An.punctulatus.df[!is.na(An.punctulatus.df$cont),]
An.punctulatus.df.noNA
An.punctulatus.df.noNA$species<-"An_punctulatus"
An.punctulatus.df.noNA<-An.punctulatus.df.noNA[,c(4,3,1,2)]
An.punctulatus.df.noNA
An_punctulatus<-An.punctulatus.df.noNA

An.punctulatus_africa<-An_punctulatus[An_punctulatus$cont=="1",]
An.punctulatus_asia<-An_punctulatus[An_punctulatus$cont=="2",]
An.punctulatus_australia<-An_punctulatus[An_punctulatus$cont=="3",]
An.punctulatus_n.america<-An_punctulatus[An_punctulatus$cont=="4",]
An.punctulatus_oceania<-An_punctulatus[An_punctulatus$cont=="5",]
An.punctulatus_s.america<-An_punctulatus[An_punctulatus$cont=="6",]
An.punctulatus_europe<-An_punctulatus[An_punctulatus$cont=="8",]

An_punctulatus_continents<-rbind(An.punctulatus_africa, An.punctulatus_asia, An.punctulatus_australia, An.punctulatus_n.america, An.punctulatus_oceania, An.punctulatus_s.america, An.punctulatus_europe)
An_punctulatus_continents
#in a list
An_punctulatus_continents.list<-list(An.punctulatus_africa, An.punctulatus_asia, An.punctulatus_australia, An.punctulatus_n.america, An.punctulatus_oceania, An.punctulatus_s.america, An.punctulatus_europe)
An_punctulatus_continents.list

#Anopheles quadrimaculatus
An.quadrimaculatus.df<-An.quadrimaculatus.data
An.quadrimaculatus.cont<-extract(continent, An.quadrimaculatus.df)
An.quadrimaculatus.cont
An.quadrimaculatus.df$cont<-An.quadrimaculatus.cont
An.quadrimaculatus.df.noNA<-An.quadrimaculatus.df[!is.na(An.quadrimaculatus.df$cont),]
An.quadrimaculatus.df.noNA
An.quadrimaculatus.df.noNA$species<-"An_quadrimaculatus"
An.quadrimaculatus.df.noNA<-An.quadrimaculatus.df.noNA[,c(4,3,1,2)]
An.quadrimaculatus.df.noNA
An_quadrimaculatus<-An.quadrimaculatus.df.noNA

An.quadrimaculatus_africa<-An_quadrimaculatus[An_quadrimaculatus$cont=="1",]
An.quadrimaculatus_asia<-An_quadrimaculatus[An_quadrimaculatus$cont=="2",]
An.quadrimaculatus_australia<-An_quadrimaculatus[An_quadrimaculatus$cont=="3",]
An.quadrimaculatus_n.america<-An_quadrimaculatus[An_quadrimaculatus$cont=="4",]
An.quadrimaculatus_oceania<-An_quadrimaculatus[An_quadrimaculatus$cont=="5",]
An.quadrimaculatus_s.america<-An_quadrimaculatus[An_quadrimaculatus$cont=="6",]
An.quadrimaculatus_europe<-An_quadrimaculatus[An_quadrimaculatus$cont=="8",]

An_quadrimaculatus_continents<-rbind(An.quadrimaculatus_africa, An.quadrimaculatus_asia, An.quadrimaculatus_australia, An.quadrimaculatus_n.america, An.quadrimaculatus_oceania, An.quadrimaculatus_s.america, An.quadrimaculatus_europe)
An_quadrimaculatus_continents
#in a list
An_quadrimaculatus_continents.list<-list(An.quadrimaculatus_africa, An.quadrimaculatus_asia, An.quadrimaculatus_australia, An.quadrimaculatus_n.america, An.quadrimaculatus_oceania, An.quadrimaculatus_s.america, An.quadrimaculatus_europe)
An_quadrimaculatus_continents.list

#Anopheles sacharovi
An.sacharovi.df<-An.sacharovi.data
An.sacharovi.cont<-extract(continent, An.sacharovi.df)
An.sacharovi.cont
An.sacharovi.df$cont<-An.sacharovi.cont
An.sacharovi.df.noNA<-An.sacharovi.df[!is.na(An.sacharovi.df$cont),]
An.sacharovi.df.noNA
An.sacharovi.df.noNA$species<-"An_sacharovi"
An.sacharovi.df.noNA<-An.sacharovi.df.noNA[,c(4,3,1,2)]
An.sacharovi.df.noNA
An_sacharovi<-An.sacharovi.df.noNA

An.sacharovi_africa<-An_sacharovi[An_sacharovi$cont=="1",]
An.sacharovi_asia<-An_sacharovi[An_sacharovi$cont=="2",]
An.sacharovi_australia<-An_sacharovi[An_sacharovi$cont=="3",]
An.sacharovi_n.america<-An_sacharovi[An_sacharovi$cont=="4",]
An.sacharovi_oceania<-An_sacharovi[An_sacharovi$cont=="5",]
An.sacharovi_s.america<-An_sacharovi[An_sacharovi$cont=="6",]
An.sacharovi_europe<-An_sacharovi[An_sacharovi$cont=="8",]

An_sacharovi_continents<-rbind(An.sacharovi_africa, An.sacharovi_asia, An.sacharovi_australia, An.sacharovi_n.america, An.sacharovi_oceania, An.sacharovi_s.america, An.sacharovi_europe)
An_sacharovi_continents
#in a list
An_sacharovi_continents.list<-list(An.sacharovi_africa, An.sacharovi_asia, An.sacharovi_australia, An.sacharovi_n.america, An.sacharovi_oceania, An.sacharovi_s.america, An.sacharovi_europe)
An_sacharovi_continents.list

#Anopheles sinensis
An.sinensis.df<-An.sinensis.data
An.sinensis.cont<-extract(continent, An.sinensis.df)
An.sinensis.cont
An.sinensis.df$cont<-An.sinensis.cont
An.sinensis.df.noNA<-An.sinensis.df[!is.na(An.sinensis.df$cont),]
An.sinensis.df.noNA
An.sinensis.df.noNA$species<-"An_sinensis"
An.sinensis.df.noNA<-An.sinensis.df.noNA[,c(4,3,1,2)]
An.sinensis.df.noNA
An_sinensis<-An.sinensis.df.noNA

An.sinensis_africa<-An_sinensis[An_sinensis$cont=="1",]
An.sinensis_asia<-An_sinensis[An_sinensis$cont=="2",]
An.sinensis_australia<-An_sinensis[An_sinensis$cont=="3",]
An.sinensis_n.america<-An_sinensis[An_sinensis$cont=="4",]
An.sinensis_oceania<-An_sinensis[An_sinensis$cont=="5",]
An.sinensis_s.america<-An_sinensis[An_sinensis$cont=="6",]
An.sinensis_europe<-An_sinensis[An_sinensis$cont=="8",]

An_sinensis_continents<-rbind(An.sinensis_africa, An.sinensis_asia, An.sinensis_australia, An.sinensis_n.america, An.sinensis_oceania, An.sinensis_s.america, An.sinensis_europe)
An_sinensis_continents
#in a list
An_sinensis_continents.list<-list(An.sinensis_africa, An.sinensis_asia, An.sinensis_australia, An.sinensis_n.america, An.sinensis_oceania, An.sinensis_s.america, An.sinensis_europe)
An_sinensis_continents.list

#Anopheles stephensi
An.stephensi.df<-An.stephensi.data
An.stephensi.cont<-extract(continent, An.stephensi.df)
An.stephensi.cont
An.stephensi.df$cont<-An.stephensi.cont
An.stephensi.df.noNA<-An.stephensi.df[!is.na(An.stephensi.df$cont),]
An.stephensi.df.noNA
An.stephensi.df.noNA$species<-"An_stephensi"
An.stephensi.df.noNA<-An.stephensi.df.noNA[,c(4,3,1,2)]
An.stephensi.df.noNA
An_stephensi<-An.stephensi.df.noNA

An.stephensi_africa<-An_stephensi[An_stephensi$cont=="1",]
An.stephensi_asia<-An_stephensi[An_stephensi$cont=="2",]
An.stephensi_australia<-An_stephensi[An_stephensi$cont=="3",]
An.stephensi_n.america<-An_stephensi[An_stephensi$cont=="4",]
An.stephensi_oceania<-An_stephensi[An_stephensi$cont=="5",]
An.stephensi_s.america<-An_stephensi[An_stephensi$cont=="6",]
An.stephensi_europe<-An_stephensi[An_stephensi$cont=="8",]

An_stephensi_continents<-rbind(An.stephensi_africa, An.stephensi_asia, An.stephensi_australia, An.stephensi_n.america, An.stephensi_oceania, An.stephensi_s.america, An.stephensi_europe)
An_stephensi_continents
#in a list
An_stephensi_continents.list<-list(An.stephensi_africa, An.stephensi_asia, An.stephensi_australia, An.stephensi_n.america, An.stephensi_oceania, An.stephensi_s.america, An.stephensi_europe)
An_stephensi_continents.list

#Anopheles subpictus
An.subpictus.df<-An.subpictus.data
An.subpictus.cont<-extract(continent, An.subpictus.df)
An.subpictus.cont
An.subpictus.df$cont<-An.subpictus.cont
An.subpictus.df.noNA<-An.subpictus.df[!is.na(An.subpictus.df$cont),]
An.subpictus.df.noNA
An.subpictus.df.noNA$species<-"An_subpictus"
An.subpictus.df.noNA<-An.subpictus.df.noNA[,c(4,3,1,2)]
An.subpictus.df.noNA
An_subpictus<-An.subpictus.df.noNA

An.subpictus_africa<-An_subpictus[An_subpictus$cont=="1",]
An.subpictus_asia<-An_subpictus[An_subpictus$cont=="2",]
An.subpictus_australia<-An_subpictus[An_subpictus$cont=="3",]
An.subpictus_n.america<-An_subpictus[An_subpictus$cont=="4",]
An.subpictus_oceania<-An_subpictus[An_subpictus$cont=="5",]
An.subpictus_s.america<-An_subpictus[An_subpictus$cont=="6",]
An.subpictus_europe<-An_subpictus[An_subpictus$cont=="8",]

An_subpictus_continents<-rbind(An.subpictus_africa, An.subpictus_asia, An.subpictus_australia, An.subpictus_n.america, An.subpictus_oceania, An.subpictus_s.america, An.subpictus_europe)
An_subpictus_continents
#in a list
An_subpictus_continents.list<-list(An.subpictus_africa, An.subpictus_asia, An.subpictus_australia, An.subpictus_n.america, An.subpictus_oceania, An.subpictus_s.america, An.subpictus_europe)
An_subpictus_continents.list

#Anopheles sundaicus
An.sundaicus.df<-An.sundaicus.data
An.sundaicus.cont<-extract(continent, An.sundaicus.df)
An.sundaicus.cont
An.sundaicus.df$cont<-An.sundaicus.cont
An.sundaicus.df.noNA<-An.sundaicus.df[!is.na(An.sundaicus.df$cont),]
An.sundaicus.df.noNA
An.sundaicus.df.noNA$species<-"An_sundaicus"
An.sundaicus.df.noNA<-An.sundaicus.df.noNA[,c(4,3,1,2)]
An.sundaicus.df.noNA
An_sundaicus<-An.sundaicus.df.noNA

An.sundaicus_africa<-An_sundaicus[An_sundaicus$cont=="1",]
An.sundaicus_asia<-An_sundaicus[An_sundaicus$cont=="2",]
An.sundaicus_australia<-An_sundaicus[An_sundaicus$cont=="3",]
An.sundaicus_n.america<-An_sundaicus[An_sundaicus$cont=="4",]
An.sundaicus_oceania<-An_sundaicus[An_sundaicus$cont=="5",]
An.sundaicus_s.america<-An_sundaicus[An_sundaicus$cont=="6",]
An.sundaicus_europe<-An_sundaicus[An_sundaicus$cont=="8",]

An_sundaicus_continents<-rbind(An.sundaicus_africa, An.sundaicus_asia, An.sundaicus_australia, An.sundaicus_n.america, An.sundaicus_oceania, An.sundaicus_s.america, An.sundaicus_europe)
An_sundaicus_continents
#in a list
An_sundaicus_continents.list<-list(An.sundaicus_africa, An.sundaicus_asia, An.sundaicus_australia, An.sundaicus_n.america, An.sundaicus_oceania, An.sundaicus_s.america, An.sundaicus_europe)
An_sundaicus_continents.list

#Anopheles superpictus
An.superpictus.df<-An.superpictus.data
An.superpictus.cont<-extract(continent, An.superpictus.df)
An.superpictus.cont
An.superpictus.df$cont<-An.superpictus.cont
An.superpictus.df.noNA<-An.superpictus.df[!is.na(An.superpictus.df$cont),]
An.superpictus.df.noNA
An.superpictus.df.noNA$species<-"An_superpictus"
An.superpictus.df.noNA<-An.superpictus.df.noNA[,c(4,3,1,2)]
An.superpictus.df.noNA
An_superpictus<-An.superpictus.df.noNA

An.superpictus_africa<-An_superpictus[An_superpictus$cont=="1",]
An.superpictus_asia<-An_superpictus[An_superpictus$cont=="2",]
An.superpictus_australia<-An_superpictus[An_superpictus$cont=="3",]
An.superpictus_n.america<-An_superpictus[An_superpictus$cont=="4",]
An.superpictus_oceania<-An_superpictus[An_superpictus$cont=="5",]
An.superpictus_s.america<-An_superpictus[An_superpictus$cont=="6",]
An.superpictus_europe<-An_superpictus[An_superpictus$cont=="8",]

An_superpictus_continents<-rbind(An.superpictus_africa, An.superpictus_asia, An.superpictus_australia, An.superpictus_n.america, An.superpictus_oceania, An.superpictus_s.america, An.superpictus_europe)
An_superpictus_continents
#in a list
An_superpictus_continents.list<-list(An.superpictus_africa, An.superpictus_asia, An.superpictus_australia, An.superpictus_n.america, An.superpictus_oceania, An.superpictus_s.america, An.superpictus_europe)
An_superpictus_continents.list

#Anopheles walkeri
An.walkeri.df<-An.walkeri.data
An.walkeri.cont<-extract(continent, An.walkeri.df)
An.walkeri.cont
An.walkeri.df$cont<-An.walkeri.cont
An.walkeri.df.noNA<-An.walkeri.df[!is.na(An.walkeri.df$cont),]
An.walkeri.df.noNA
An.walkeri.df.noNA$species<-"An_walkeri"
An.walkeri.df.noNA<-An.walkeri.df.noNA[,c(4,3,1,2)]
An.walkeri.df.noNA
An_walkeri<-An.walkeri.df.noNA

An.walkeri_africa<-An_walkeri[An_walkeri$cont=="1",]
An.walkeri_asia<-An_walkeri[An_walkeri$cont=="2",]
An.walkeri_australia<-An_walkeri[An_walkeri$cont=="3",]
An.walkeri_n.america<-An_walkeri[An_walkeri$cont=="4",]
An.walkeri_oceania<-An_walkeri[An_walkeri$cont=="5",]
An.walkeri_s.america<-An_walkeri[An_walkeri$cont=="6",]
An.walkeri_europe<-An_walkeri[An_walkeri$cont=="8",]

An_walkeri_continents<-rbind(An.walkeri_africa, An.walkeri_asia, An.walkeri_australia, An.walkeri_n.america, An.walkeri_oceania, An.walkeri_s.america, An.walkeri_europe)
An_walkeri_continents
#in a list
An_walkeri_continents.list<-list(An.walkeri_africa, An.walkeri_asia, An.walkeri_australia, An.walkeri_n.america, An.walkeri_oceania, An.walkeri_s.america, An.walkeri_europe)
An_walkeri_continents.list

#Culex antennatus
C.antennatus.df<-C.antennatus.data
C.antennatus.cont<-extract(continent, C.antennatus.df)
C.antennatus.cont
C.antennatus.df$cont<-C.antennatus.cont
C.antennatus.df.noNA<-C.antennatus.df[!is.na(C.antennatus.df$cont),]
C.antennatus.df.noNA
C.antennatus.df.noNA$species<-"C_antennatus"
C.antennatus.df.noNA<-C.antennatus.df.noNA[,c(4,3,1,2)]
C.antennatus.df.noNA
C_antennatus<-C.antennatus.df.noNA

C.antennatus_africa<-C_antennatus[C_antennatus$cont=="1",]
C.antennatus_asia<-C_antennatus[C_antennatus$cont=="2",]
C.antennatus_australia<-C_antennatus[C_antennatus$cont=="3",]
C.antennatus_n.america<-C_antennatus[C_antennatus$cont=="4",]
C.antennatus_oceania<-C_antennatus[C_antennatus$cont=="5",]
C.antennatus_s.america<-C_antennatus[C_antennatus$cont=="6",]
C.antennatus_europe<-C_antennatus[C_antennatus$cont=="8",]

C_antennatus_continents<-rbind(C.antennatus_africa, C.antennatus_asia, C.antennatus_australia, C.antennatus_n.america, C.antennatus_oceania, C.antennatus_s.america, C.antennatus_europe)
C_antennatus_continents
#in a list
C_antennatus_continents.list<-list(C.antennatus_africa, C.antennatus_asia, C.antennatus_australia, C.antennatus_n.america, C.antennatus_oceania, C.antennatus_s.america, C.antennatus_europe)
C_antennatus_continents.list

#Culex apicalis
C.apicalis.df<-C.apicalis.data
C.apicalis.cont<-extract(continent, C.apicalis.df)
C.apicalis.cont
C.apicalis.df$cont<-C.apicalis.cont
C.apicalis.df.noNA<-C.apicalis.df[!is.na(C.apicalis.df$cont),]
C.apicalis.df.noNA
C.apicalis.df.noNA$species<-"C_apicalis"
C.apicalis.df.noNA<-C.apicalis.df.noNA[,c(4,3,1,2)]
C.apicalis.df.noNA
C_apicalis<-C.apicalis.df.noNA

C.apicalis_africa<-C_apicalis[C_apicalis$cont=="1",]
C.apicalis_asia<-C_apicalis[C_apicalis$cont=="2",]
C.apicalis_australia<-C_apicalis[C_apicalis$cont=="3",]
C.apicalis_n.america<-C_apicalis[C_apicalis$cont=="4",]
C.apicalis_oceania<-C_apicalis[C_apicalis$cont=="5",]
C.apicalis_s.america<-C_apicalis[C_apicalis$cont=="6",]
C.apicalis_europe<-C_apicalis[C_apicalis$cont=="8",]

C_apicalis_continents<-rbind(C.apicalis_africa, C.apicalis_asia, C.apicalis_australia, C.apicalis_n.america, C.apicalis_oceania, C.apicalis_s.america, C.apicalis_europe)
C_apicalis_continents
#in a list
C_apicalis_continents.list<-list(C.apicalis_africa, C.apicalis_asia, C.apicalis_australia, C.apicalis_n.america, C.apicalis_oceania, C.apicalis_s.america, C.apicalis_europe)
C_apicalis_continents.list

#Culex bahamensis
C.bahamensis.df<-C.bahamensis.data
C.bahamensis.cont<-extract(continent, C.bahamensis.df)
C.bahamensis.cont
C.bahamensis.df$cont<-C.bahamensis.cont
C.bahamensis.df.noNA<-C.bahamensis.df[!is.na(C.bahamensis.df$cont),]
C.bahamensis.df.noNA
C.bahamensis.df.noNA$species<-"C_bahamensis"
C.bahamensis.df.noNA<-C.bahamensis.df.noNA[,c(4,3,1,2)]
C.bahamensis.df.noNA
C_bahamensis<-C.bahamensis.df.noNA

C.bahamensis_africa<-C_bahamensis[C_bahamensis$cont=="1",]
C.bahamensis_asia<-C_bahamensis[C_bahamensis$cont=="2",]
C.bahamensis_australia<-C_bahamensis[C_bahamensis$cont=="3",]
C.bahamensis_n.america<-C_bahamensis[C_bahamensis$cont=="4",]
C.bahamensis_oceania<-C_bahamensis[C_bahamensis$cont=="5",]
C.bahamensis_s.america<-C_bahamensis[C_bahamensis$cont=="6",]
C.bahamensis_europe<-C_bahamensis[C_bahamensis$cont=="8",]

C_bahamensis_continents<-rbind(C.bahamensis_africa, C.bahamensis_asia, C.bahamensis_australia, C.bahamensis_n.america, C.bahamensis_oceania, C.bahamensis_s.america, C.bahamensis_europe)
C_bahamensis_continents
#in a list
C_bahamensis_continents.list<-list(C.bahamensis_africa, C.bahamensis_asia, C.bahamensis_australia, C.bahamensis_n.america, C.bahamensis_oceania, C.bahamensis_s.america, C.bahamensis_europe)
C_bahamensis_continents.list

#Culex coronator
C.coronator.df<-C.coronator.data
C.coronator.cont<-extract(continent, C.coronator.df)
C.coronator.cont
C.coronator.df$cont<-C.coronator.cont
C.coronator.df.noNA<-C.coronator.df[!is.na(C.coronator.df$cont),]
C.coronator.df.noNA
C.coronator.df.noNA$species<-"C_coronator"
C.coronator.df.noNA<-C.coronator.df.noNA[,c(4,3,1,2)]
C.coronator.df.noNA
C_coronator<-C.coronator.df.noNA

C.coronator_africa<-C_coronator[C_coronator$cont=="1",]
C.coronator_asia<-C_coronator[C_coronator$cont=="2",]
C.coronator_australia<-C_coronator[C_coronator$cont=="3",]
C.coronator_n.america<-C_coronator[C_coronator$cont=="4",]
C.coronator_oceania<-C_coronator[C_coronator$cont=="5",]
C.coronator_s.america<-C_coronator[C_coronator$cont=="6",]
C.coronator_europe<-C_coronator[C_coronator$cont=="8",]

C_coronator_continents<-rbind(C.coronator_africa, C.coronator_asia, C.coronator_australia, C.coronator_n.america, C.coronator_oceania, C.coronator_s.america, C.coronator_europe)
C_coronator_continents
#in a list
C_coronator_continents.list<-list(C.coronator_africa, C.coronator_asia, C.coronator_australia, C.coronator_n.america, C.coronator_oceania, C.coronator_s.america, C.coronator_europe)
C_coronator_continents.list

#Culex erraticus
C.erraticus.df<-C.erraticus.data
C.erraticus.cont<-extract(continent, C.erraticus.df)
C.erraticus.cont
C.erraticus.df$cont<-C.erraticus.cont
C.erraticus.df.noNA<-C.erraticus.df[!is.na(C.erraticus.df$cont),]
C.erraticus.df.noNA
C.erraticus.df.noNA$species<-"C_erraticus"
C.erraticus.df.noNA<-C.erraticus.df.noNA[,c(4,3,1,2)]
C.erraticus.df.noNA
C_erraticus<-C.erraticus.df.noNA

C.erraticus_africa<-C_erraticus[C_erraticus$cont=="1",]
C.erraticus_asia<-C_erraticus[C_erraticus$cont=="2",]
C.erraticus_australia<-C_erraticus[C_erraticus$cont=="3",]
C.erraticus_n.america<-C_erraticus[C_erraticus$cont=="4",]
C.erraticus_oceania<-C_erraticus[C_erraticus$cont=="5",]
C.erraticus_s.america<-C_erraticus[C_erraticus$cont=="6",]
C.erraticus_europe<-C_erraticus[C_erraticus$cont=="8",]

C_erraticus_continents<-rbind(C.erraticus_africa, C.erraticus_asia, C.erraticus_australia, C.erraticus_n.america, C.erraticus_oceania, C.erraticus_s.america, C.erraticus_europe)
C_erraticus_continents
#in a list
C_erraticus_continents.list<-list(C.erraticus_africa, C.erraticus_asia, C.erraticus_australia, C.erraticus_n.america, C.erraticus_oceania, C.erraticus_s.america, C.erraticus_europe)
C_erraticus_continents.list

#Culex erythrothorax
C.erythrothorax.df<-C.erythrothorax.data
C.erythrothorax.cont<-extract(continent, C.erythrothorax.df)
C.erythrothorax.cont
C.erythrothorax.df$cont<-C.erythrothorax.cont
C.erythrothorax.df.noNA<-C.erythrothorax.df[!is.na(C.erythrothorax.df$cont),]
C.erythrothorax.df.noNA
C.erythrothorax.df.noNA$species<-"C_erythrothorax"
C.erythrothorax.df.noNA<-C.erythrothorax.df.noNA[,c(4,3,1,2)]
C.erythrothorax.df.noNA
C_erythrothorax<-C.erythrothorax.df.noNA

C.erythrothorax_africa<-C_erythrothorax[C_erythrothorax$cont=="1",]
C.erythrothorax_asia<-C_erythrothorax[C_erythrothorax$cont=="2",]
C.erythrothorax_australia<-C_erythrothorax[C_erythrothorax$cont=="3",]
C.erythrothorax_n.america<-C_erythrothorax[C_erythrothorax$cont=="4",]
C.erythrothorax_oceania<-C_erythrothorax[C_erythrothorax$cont=="5",]
C.erythrothorax_s.america<-C_erythrothorax[C_erythrothorax$cont=="6",]
C.erythrothorax_europe<-C_erythrothorax[C_erythrothorax$cont=="8",]

C_erythrothorax_continents<-rbind(C.erythrothorax_africa, C.erythrothorax_asia, C.erythrothorax_australia, C.erythrothorax_n.america, C.erythrothorax_oceania, C.erythrothorax_s.america, C.erythrothorax_europe)
C_erythrothorax_continents
#in a list
C_erythrothorax_continents.list<-list(C.erythrothorax_africa, C.erythrothorax_asia, C.erythrothorax_australia, C.erythrothorax_n.america, C.erythrothorax_oceania, C.erythrothorax_s.america, C.erythrothorax_europe)
C_erythrothorax_continents.list

#Culex guiarti
C.guiarti.df<-C.guiarti.data
C.guiarti.cont<-extract(continent, C.guiarti.df)
C.guiarti.cont
C.guiarti.df$cont<-C.guiarti.cont
C.guiarti.df.noNA<-C.guiarti.df[!is.na(C.guiarti.df$cont),]
C.guiarti.df.noNA
C.guiarti.df.noNA$species<-"C_guiarti"
C.guiarti.df.noNA<-C.guiarti.df.noNA[,c(4,3,1,2)]
C.guiarti.df.noNA
C_guiarti<-C.guiarti.df.noNA

C.guiarti_africa<-C_guiarti[C_guiarti$cont=="1",]
C.guiarti_asia<-C_guiarti[C_guiarti$cont=="2",]
C.guiarti_australia<-C_guiarti[C_guiarti$cont=="3",]
C.guiarti_n.america<-C_guiarti[C_guiarti$cont=="4",]
C.guiarti_oceania<-C_guiarti[C_guiarti$cont=="5",]
C.guiarti_s.america<-C_guiarti[C_guiarti$cont=="6",]
C.guiarti_europe<-C_guiarti[C_guiarti$cont=="8",]

C_guiarti_continents<-rbind(C.guiarti_africa, C.guiarti_asia, C.guiarti_australia, C.guiarti_n.america, C.guiarti_oceania, C.guiarti_s.america, C.guiarti_europe)
C_guiarti_continents
#in a list
C_guiarti_continents.list<-list(C.guiarti_africa, C.guiarti_asia, C.guiarti_australia, C.guiarti_n.america, C.guiarti_oceania, C.guiarti_s.america, C.guiarti_europe)
C_guiarti_continents.list

#Culex modestus
C.modestus.df<-C.modestus.data
C.modestus.cont<-extract(continent, C.modestus.df)
C.modestus.cont
C.modestus.df$cont<-C.modestus.cont
C.modestus.df.noNA<-C.modestus.df[!is.na(C.modestus.df$cont),]
C.modestus.df.noNA
C.modestus.df.noNA$species<-"C_modestus"
C.modestus.df.noNA<-C.modestus.df.noNA[,c(4,3,1,2)]
C.modestus.df.noNA
C_modestus<-C.modestus.df.noNA

C.modestus_africa<-C_modestus[C_modestus$cont=="1",]
C.modestus_asia<-C_modestus[C_modestus$cont=="2",]
C.modestus_australia<-C_modestus[C_modestus$cont=="3",]
C.modestus_n.america<-C_modestus[C_modestus$cont=="4",]
C.modestus_oceania<-C_modestus[C_modestus$cont=="5",]
C.modestus_s.america<-C_modestus[C_modestus$cont=="6",]
C.modestus_europe<-C_modestus[C_modestus$cont=="8",]

C_modestus_continents<-rbind(C.modestus_africa, C.modestus_asia, C.modestus_australia, C.modestus_n.america, C.modestus_oceania, C.modestus_s.america, C.modestus_europe)
C_modestus_continents
#in a list
C_modestus_continents.list<-list(C.modestus_africa, C.modestus_asia, C.modestus_australia, C.modestus_n.america, C.modestus_oceania, C.modestus_s.america, C.modestus_europe)
C_modestus_continents.list

#Culex nigripalpus
C.nigripalpus.df<-C.nigripalpus.data
C.nigripalpus.cont<-extract(continent, C.nigripalpus.df)
C.nigripalpus.cont
C.nigripalpus.df$cont<-C.nigripalpus.cont
C.nigripalpus.df.noNA<-C.nigripalpus.df[!is.na(C.nigripalpus.df$cont),]
C.nigripalpus.df.noNA
C.nigripalpus.df.noNA$species<-"C_nigripalpus"
C.nigripalpus.df.noNA<-C.nigripalpus.df.noNA[,c(4,3,1,2)]
C.nigripalpus.df.noNA
C_nigripalpus<-C.nigripalpus.df.noNA

C.nigripalpus_africa<-C_nigripalpus[C_nigripalpus$cont=="1",]
C.nigripalpus_asia<-C_nigripalpus[C_nigripalpus$cont=="2",]
C.nigripalpus_australia<-C_nigripalpus[C_nigripalpus$cont=="3",]
C.nigripalpus_n.america<-C_nigripalpus[C_nigripalpus$cont=="4",]
C.nigripalpus_oceania<-C_nigripalpus[C_nigripalpus$cont=="5",]
C.nigripalpus_s.america<-C_nigripalpus[C_nigripalpus$cont=="6",]
C.nigripalpus_europe<-C_nigripalpus[C_nigripalpus$cont=="8",]

C_nigripalpus_continents<-rbind(C.nigripalpus_africa, C.nigripalpus_asia, C.nigripalpus_australia, C.nigripalpus_n.america, C.nigripalpus_oceania, C.nigripalpus_s.america, C.nigripalpus_europe)
C_nigripalpus_continents
#in a list
C_nigripalpus_continents.list<-list(C.nigripalpus_africa, C.nigripalpus_asia, C.nigripalpus_australia, C.nigripalpus_n.america, C.nigripalpus_oceania, C.nigripalpus_s.america, C.nigripalpus_europe)
C_nigripalpus_continents.list


#Culex perexigus
C.perexigus.df<-C.perexigus.data
C.perexigus.cont<-extract(continent, C.perexigus.df)
C.perexigus.cont
C.perexigus.df$cont<-C.perexigus.cont
C.perexigus.df.noNA<-C.perexigus.df[!is.na(C.perexigus.df$cont),]
C.perexigus.df.noNA
C.perexigus.df.noNA$species<-"C_perexigus"
C.perexigus.df.noNA<-C.perexigus.df.noNA[,c(4,3,1,2)]
C.perexigus.df.noNA
C_perexigus<-C.perexigus.df.noNA

C.perexigus_africa<-C_perexigus[C_perexigus$cont=="1",]
C.perexigus_asia<-C_perexigus[C_perexigus$cont=="2",]
C.perexigus_australia<-C_perexigus[C_perexigus$cont=="3",]
C.perexigus_n.america<-C_perexigus[C_perexigus$cont=="4",]
C.perexigus_oceania<-C_perexigus[C_perexigus$cont=="5",]
C.perexigus_s.america<-C_perexigus[C_perexigus$cont=="6",]
C.perexigus_europe<-C_perexigus[C_perexigus$cont=="8",]

C_perexigus_continents<-rbind(C.perexigus_africa, C.perexigus_asia, C.perexigus_australia, C.perexigus_n.america, C.perexigus_oceania, C.perexigus_s.america, C.perexigus_europe)
C_perexigus_continents
#in a list
C_perexigus_continents.list<-list(C.perexigus_africa, C.perexigus_asia, C.perexigus_australia, C.perexigus_n.america, C.perexigus_oceania, C.perexigus_s.america, C.perexigus_europe)
C_perexigus_continents.list


#Culex perfuscus
C.perfuscus.df<-C.perfuscus.data
C.perfuscus.cont<-extract(continent, C.perfuscus.df)
C.perfuscus.cont
C.perfuscus.df$cont<-C.perfuscus.cont
C.perfuscus.df.noNA<-C.perfuscus.df[!is.na(C.perfuscus.df$cont),]
C.perfuscus.df.noNA
C.perfuscus.df.noNA$species<-"C_perfuscus"
C.perfuscus.df.noNA<-C.perfuscus.df.noNA[,c(4,3,1,2)]
C.perfuscus.df.noNA
C_perfuscus<-C.perfuscus.df.noNA

C.perfuscus_africa<-C_perfuscus[C_perfuscus$cont=="1",]
C.perfuscus_asia<-C_perfuscus[C_perfuscus$cont=="2",]
C.perfuscus_australia<-C_perfuscus[C_perfuscus$cont=="3",]
C.perfuscus_n.america<-C_perfuscus[C_perfuscus$cont=="4",]
C.perfuscus_oceania<-C_perfuscus[C_perfuscus$cont=="5",]
C.perfuscus_s.america<-C_perfuscus[C_perfuscus$cont=="6",]
C.perfuscus_europe<-C_perfuscus[C_perfuscus$cont=="8",]

C_perfuscus_continents<-rbind(C.perfuscus_africa, C.perfuscus_asia, C.perfuscus_australia, C.perfuscus_n.america, C.perfuscus_oceania, C.perfuscus_s.america, C.perfuscus_europe)
C_perfuscus_continents
#in a list
C_perfuscus_continents.list<-list(C.perfuscus_africa, C.perfuscus_asia, C.perfuscus_australia, C.perfuscus_n.america, C.perfuscus_oceania, C.perfuscus_s.america, C.perfuscus_europe)
C_perfuscus_continents.list

#Culex pipiens
C.pipiens.df<-C.pipiens.data
C.pipiens.cont<-extract(continent, C.pipiens.df)
C.pipiens.cont
C.pipiens.df$cont<-C.pipiens.cont
C.pipiens.df.noNA<-C.pipiens.df[!is.na(C.pipiens.df$cont),]
C.pipiens.df.noNA
C.pipiens.df.noNA$species<-"C_pipiens"
C.pipiens.df.noNA<-C.pipiens.df.noNA[,c(4,3,1,2)]
C.pipiens.df.noNA
C_pipiens<-C.pipiens.df.noNA

C.pipiens_africa<-C_pipiens[C_pipiens$cont=="1",]
C.pipiens_asia<-C_pipiens[C_pipiens$cont=="2",]
C.pipiens_australia<-C_pipiens[C_pipiens$cont=="3",]
C.pipiens_n.america<-C_pipiens[C_pipiens$cont=="4",]
C.pipiens_oceania<-C_pipiens[C_pipiens$cont=="5",]
C.pipiens_s.america<-C_pipiens[C_pipiens$cont=="6",]
C.pipiens_europe<-C_pipiens[C_pipiens$cont=="8",]

C_pipiens_continents<-rbind(C.pipiens_africa, C.pipiens_asia, C.pipiens_australia, C.pipiens_n.america, C.pipiens_oceania, C.pipiens_s.america, C.pipiens_europe)
C_pipiens_continents
#in a list
C_pipiens_continents.list<-list(C.pipiens_africa, C.pipiens_asia, C.pipiens_australia, C.pipiens_n.america, C.pipiens_oceania, C.pipiens_s.america, C.pipiens_europe)
C_pipiens_continents.list


#Culex quinquefasciatus
C.quinquefasciatus.df<-C.quinquefasciatus.data
C.quinquefasciatus.cont<-extract(continent, C.quinquefasciatus.df)
C.quinquefasciatus.cont
C.quinquefasciatus.df$cont<-C.quinquefasciatus.cont
C.quinquefasciatus.df.noNA<-C.quinquefasciatus.df[!is.na(C.quinquefasciatus.df$cont),]
C.quinquefasciatus.df.noNA
C.quinquefasciatus.df.noNA$species<-"C_quinquefasciatus"
C.quinquefasciatus.df.noNA<-C.quinquefasciatus.df.noNA[,c(4,3,1,2)]
C.quinquefasciatus.df.noNA
C_quinquefasciatus<-C.quinquefasciatus.df.noNA

C.quinquefasciatus_africa<-C_quinquefasciatus[C_quinquefasciatus$cont=="1",]
C.quinquefasciatus_asia<-C_quinquefasciatus[C_quinquefasciatus$cont=="2",]
C.quinquefasciatus_australia<-C_quinquefasciatus[C_quinquefasciatus$cont=="3",]
C.quinquefasciatus_n.america<-C_quinquefasciatus[C_quinquefasciatus$cont=="4",]
C.quinquefasciatus_oceania<-C_quinquefasciatus[C_quinquefasciatus$cont=="5",]
C.quinquefasciatus_s.america<-C_quinquefasciatus[C_quinquefasciatus$cont=="6",]
C.quinquefasciatus_europe<-C_quinquefasciatus[C_quinquefasciatus$cont=="8",]

C_quinquefasciatus_continents<-rbind(C.quinquefasciatus_africa, C.quinquefasciatus_asia, C.quinquefasciatus_australia, C.quinquefasciatus_n.america, C.quinquefasciatus_oceania, C.quinquefasciatus_s.america, C.quinquefasciatus_europe)
C_quinquefasciatus_continents
#in a list
C_quinquefasciatus_continents.list<-list(C.quinquefasciatus_africa, C.quinquefasciatus_asia, C.quinquefasciatus_australia, C.quinquefasciatus_n.america, C.quinquefasciatus_oceania, C.quinquefasciatus_s.america, C.quinquefasciatus_europe)
C_quinquefasciatus_continents.list

#Culex restuans
C.restuans.df<-C.restuans.data
C.restuans.cont<-extract(continent, C.restuans.df)
C.restuans.cont
C.restuans.df$cont<-C.restuans.cont
C.restuans.df.noNA<-C.restuans.df[!is.na(C.restuans.df$cont),]
C.restuans.df.noNA
C.restuans.df.noNA$species<-"C_restuans"
C.restuans.df.noNA<-C.restuans.df.noNA[,c(4,3,1,2)]
C.restuans.df.noNA
C_restuans<-C.restuans.df.noNA

C.restuans_africa<-C_restuans[C_restuans$cont=="1",]
C.restuans_asia<-C_restuans[C_restuans$cont=="2",]
C.restuans_australia<-C_restuans[C_restuans$cont=="3",]
C.restuans_n.america<-C_restuans[C_restuans$cont=="4",]
C.restuans_oceania<-C_restuans[C_restuans$cont=="5",]
C.restuans_s.america<-C_restuans[C_restuans$cont=="6",]
C.restuans_europe<-C_restuans[C_restuans$cont=="8",]

C_restuans_continents<-rbind(C.restuans_africa, C.restuans_asia, C.restuans_australia, C.restuans_n.america, C.restuans_oceania, C.restuans_s.america, C.restuans_europe)
C_restuans_continents
#in a list
C_restuans_continents.list<-list(C.restuans_africa, C.restuans_asia, C.restuans_australia, C.restuans_n.america, C.restuans_oceania, C.restuans_s.america, C.restuans_europe)
C_restuans_continents.list

#Haemagogus janthinomys
H.janthinomys.df<-H.janthinomys.data
H.janthinomys.cont<-extract(continent, H.janthinomys.df)
H.janthinomys.cont
H.janthinomys.df$cont<-H.janthinomys.cont
H.janthinomys.df.noNA<-H.janthinomys.df[!is.na(H.janthinomys.df$cont),]
H.janthinomys.df.noNA
H.janthinomys.df.noNA$species<-"H_janthinomys"
H.janthinomys.df.noNA<-H.janthinomys.df.noNA[,c(4,3,1,2)]
H.janthinomys.df.noNA
H_janthinomys<-H.janthinomys.df.noNA

H.janthinomys_africa<-H_janthinomys[H_janthinomys$cont=="1",]
H.janthinomys_asia<-H_janthinomys[H_janthinomys$cont=="2",]
H.janthinomys_australia<-H_janthinomys[H_janthinomys$cont=="3",]
H.janthinomys_n.america<-H_janthinomys[H_janthinomys$cont=="4",]
H.janthinomys_oceania<-H_janthinomys[H_janthinomys$cont=="5",]
H.janthinomys_s.america<-H_janthinomys[H_janthinomys$cont=="6",]
H.janthinomys_europe<-H_janthinomys[H_janthinomys$cont=="8",]

H_janthinomys_continents<-rbind(H.janthinomys_africa, H.janthinomys_asia, H.janthinomys_australia, H.janthinomys_n.america, H.janthinomys_oceania, H.janthinomys_s.america, H.janthinomys_europe)
H_janthinomys_continents
#in a list
H_janthinomys_continents.list<-list(H.janthinomys_africa, H.janthinomys_asia, H.janthinomys_australia, H.janthinomys_n.america, H.janthinomys_oceania, H.janthinomys_s.america, H.janthinomys_europe)
H_janthinomys_continents.list

#Haemagogus leucocelaenus
H.leucocelaenus.df<-H.leucocelaenus.data
H.leucocelaenus.cont<-extract(continent, H.leucocelaenus.df)
H.leucocelaenus.cont
H.leucocelaenus.df$cont<-H.leucocelaenus.cont
H.leucocelaenus.df.noNA<-H.leucocelaenus.df[!is.na(H.leucocelaenus.df$cont),]
H.leucocelaenus.df.noNA
H.leucocelaenus.df.noNA$species<-"H_leucocelaenus"
H.leucocelaenus.df.noNA<-H.leucocelaenus.df.noNA[,c(4,3,1,2)]
H.leucocelaenus.df.noNA
H_leucocelaenus<-H.leucocelaenus.df.noNA

H.leucocelaenus_africa<-H_leucocelaenus[H_leucocelaenus$cont=="1",]
H.leucocelaenus_asia<-H_leucocelaenus[H_leucocelaenus$cont=="2",]
H.leucocelaenus_australia<-H_leucocelaenus[H_leucocelaenus$cont=="3",]
H.leucocelaenus_n.america<-H_leucocelaenus[H_leucocelaenus$cont=="4",]
H.leucocelaenus_oceania<-H_leucocelaenus[H_leucocelaenus$cont=="5",]
H.leucocelaenus_s.america<-H_leucocelaenus[H_leucocelaenus$cont=="6",]
H.leucocelaenus_europe<-H_leucocelaenus[H_leucocelaenus$cont=="8",]

H_leucocelaenus_continents<-rbind(H.leucocelaenus_africa, H.leucocelaenus_asia, H.leucocelaenus_australia, H.leucocelaenus_n.america, H.leucocelaenus_oceania, H.leucocelaenus_s.america, H.leucocelaenus_europe)
H_leucocelaenus_continents
#in a list
H_leucocelaenus_continents.list<-list(H.leucocelaenus_africa, H.leucocelaenus_asia, H.leucocelaenus_australia, H.leucocelaenus_n.america, H.leucocelaenus_oceania, H.leucocelaenus_s.america, H.leucocelaenus_europe)
H_leucocelaenus_continents.list

#Haemagogus spegazzinii
H.spegazzinii.df<-H.spegazzinii.data
H.spegazzinii.cont<-extract(continent, H.spegazzinii.df)
H.spegazzinii.cont
H.spegazzinii.df$cont<-H.spegazzinii.cont
H.spegazzinii.df.noNA<-H.spegazzinii.df[!is.na(H.spegazzinii.df$cont),]
H.spegazzinii.df.noNA
H.spegazzinii.df.noNA$species<-"H_spegazzinii"
H.spegazzinii.df.noNA<-H.spegazzinii.df.noNA[,c(4,3,1,2)]
H.spegazzinii.df.noNA
H_spegazzinii<-H.spegazzinii.df.noNA

H.spegazzinii_africa<-H_spegazzinii[H_spegazzinii$cont=="1",]
H.spegazzinii_asia<-H_spegazzinii[H_spegazzinii$cont=="2",]
H.spegazzinii_australia<-H_spegazzinii[H_spegazzinii$cont=="3",]
H.spegazzinii_n.america<-H_spegazzinii[H_spegazzinii$cont=="4",]
H.spegazzinii_oceania<-H_spegazzinii[H_spegazzinii$cont=="5",]
H.spegazzinii_s.america<-H_spegazzinii[H_spegazzinii$cont=="6",]
H.spegazzinii_europe<-H_spegazzinii[H_spegazzinii$cont=="8",]

H_spegazzinii_continents<-rbind(H.spegazzinii_africa, H.spegazzinii_asia, H.spegazzinii_australia, H.spegazzinii_n.america, H.spegazzinii_oceania, H.spegazzinii_s.america, H.spegazzinii_europe)
H_spegazzinii_continents
#in a list
H_spegazzinii_continents.list<-list(H.spegazzinii_africa, H.spegazzinii_asia, H.spegazzinii_australia, H.spegazzinii_n.america, H.spegazzinii_oceania, H.spegazzinii_s.america, H.spegazzinii_europe)
H_spegazzinii_continents.list

#Mansonia uniformis
M.uniformis.df<-M.uniformis.data
M.uniformis.cont<-extract(continent, M.uniformis.df)
M.uniformis.cont
M.uniformis.df$cont<-M.uniformis.cont
M.uniformis.df.noNA<-M.uniformis.df[!is.na(M.uniformis.df$cont),]
M.uniformis.df.noNA
M.uniformis.df.noNA$species<-"M_uniformis"
M.uniformis.df.noNA<-M.uniformis.df.noNA[,c(4,3,1,2)]
M.uniformis.df.noNA
M_uniformis<-M.uniformis.df.noNA

M.uniformis_africa<-M_uniformis[M_uniformis$cont=="1",]
M.uniformis_asia<-M_uniformis[M_uniformis$cont=="2",]
M.uniformis_australia<-M_uniformis[M_uniformis$cont=="3",]
M.uniformis_n.america<-M_uniformis[M_uniformis$cont=="4",]
M.uniformis_oceania<-M_uniformis[M_uniformis$cont=="5",]
M.uniformis_s.america<-M_uniformis[M_uniformis$cont=="6",]
M.uniformis_europe<-M_uniformis[M_uniformis$cont=="8",]

M_uniformis_continents<-rbind(M.uniformis_africa, M.uniformis_asia, M.uniformis_australia, M.uniformis_n.america, M.uniformis_oceania, M.uniformis_s.america, M.uniformis_europe)
M_uniformis_continents
#in a list
M_uniformis_continents.list<-list(M.uniformis_africa, M.uniformis_asia, M.uniformis_australia, M.uniformis_n.america, M.uniformis_oceania, M.uniformis_s.america, M.uniformis_europe)
M_uniformis_continents.list

#Sabethes albiprivus
S.albiprivus.df<-S.albiprivus.data
S.albiprivus.cont<-extract(continent, S.albiprivus.df)
S.albiprivus.cont
S.albiprivus.df$cont<-S.albiprivus.cont
S.albiprivus.df.noNA<-S.albiprivus.df[!is.na(S.albiprivus.df$cont),]
S.albiprivus.df.noNA
S.albiprivus.df.noNA$species<-"S_albiprivus"
S.albiprivus.df.noNA<-S.albiprivus.df.noNA[,c(4,3,1,2)]
S.albiprivus.df.noNA
S_albiprivus<-S.albiprivus.df.noNA

S.albiprivus_africa<-S_albiprivus[S_albiprivus$cont=="1",]
S.albiprivus_asia<-S_albiprivus[S_albiprivus$cont=="2",]
S.albiprivus_australia<-S_albiprivus[S_albiprivus$cont=="3",]
S.albiprivus_n.america<-S_albiprivus[S_albiprivus$cont=="4",]
S.albiprivus_oceania<-S_albiprivus[S_albiprivus$cont=="5",]
S.albiprivus_s.america<-S_albiprivus[S_albiprivus$cont=="6",]
S.albiprivus_europe<-S_albiprivus[S_albiprivus$cont=="8",]

S_albiprivus_continents<-rbind(S.albiprivus_africa, S.albiprivus_asia, S.albiprivus_australia, S.albiprivus_n.america, S.albiprivus_oceania, S.albiprivus_s.america, S.albiprivus_europe)
S_albiprivus_continents
#in a list
S_albiprivus_continents.list<-list(S.albiprivus_africa, S.albiprivus_asia, S.albiprivus_australia, S.albiprivus_n.america, S.albiprivus_oceania, S.albiprivus_s.america, S.albiprivus_europe)
S_albiprivus_continents.list

#Sabethes chloropterus
S.chloropterus.df<-S.chloropterus.data
S.chloropterus.cont<-extract(continent, S.chloropterus.df)
S.chloropterus.cont
S.chloropterus.df$cont<-S.chloropterus.cont
S.chloropterus.df.noNA<-S.chloropterus.df[!is.na(S.chloropterus.df$cont),]
S.chloropterus.df.noNA
S.chloropterus.df.noNA$species<-"S_chloropterus"
S.chloropterus.df.noNA<-S.chloropterus.df.noNA[,c(4,3,1,2)]
S.chloropterus.df.noNA
S_chloropterus<-S.chloropterus.df.noNA

S.chloropterus_africa<-S_chloropterus[S_chloropterus$cont=="1",]
S.chloropterus_asia<-S_chloropterus[S_chloropterus$cont=="2",]
S.chloropterus_australia<-S_chloropterus[S_chloropterus$cont=="3",]
S.chloropterus_n.america<-S_chloropterus[S_chloropterus$cont=="4",]
S.chloropterus_oceania<-S_chloropterus[S_chloropterus$cont=="5",]
S.chloropterus_s.america<-S_chloropterus[S_chloropterus$cont=="6",]
S.chloropterus_europe<-S_chloropterus[S_chloropterus$cont=="8",]

S_chloropterus_continents<-rbind(S.chloropterus_africa, S.chloropterus_asia, S.chloropterus_australia, S.chloropterus_n.america, S.chloropterus_oceania, S.chloropterus_s.america, S.chloropterus_europe)
S_chloropterus_continents
#in a list
S_chloropterus_continents.list<-list(S.chloropterus_africa, S.chloropterus_asia, S.chloropterus_australia, S.chloropterus_n.america, S.chloropterus_oceania, S.chloropterus_s.america, S.chloropterus_europe)
S_chloropterus_continents.list

###############################################

#Making disease data frames
#Chikungunya
Chikungunya<-rbind(A_taylori_continents, A_neoafricanus_continents, A_luteocephalus_continents, A_furcifer_continents, A_aegypti_continents, A_africanus_continents, An_stephensi_continents, A_vittatus_continents, A_albopictus_continents)
Chikungunya
Chikungunya.list<-list(A_taylori_continents, A_neoafricanus_continents, A_luteocephalus_continents, A_furcifer_continents, A_aegypti_continents, A_africanus_continents, An_stephensi_continents, A_vittatus_continents, A_albopictus_continents)
Chikungunya.list
names(Chikungunya.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopictus")
Chikungunya.list

#Making disease data frame on each continent.
#africa, number 1
Chikungunya.africa<-rbind(A.taylori_africa, A.neoafricanus_africa, A.luteocephalus_africa, A.furcifer_africa, A.aegypti_africa, A.africanus_africa, An.stephensi_africa, A.vittatus_africa, A.albopictus_africa)
Chikungunya.africa.list<-list(A.taylori_africa, A.neoafricanus_africa, A.luteocephalus_africa, A.furcifer_africa, A.aegypti_africa, A.africanus_africa, An.stephensi_africa, A.vittatus_africa, A.albopictus_africa)
names(Chikungunya.africa.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopictus")
Chikungunya.africa.list 
Chikungunya.africa$disease<-"Chikungunya"

#Asia, number 2
Chikungunya.Asia<-rbind(A.taylori_asia, A.neoafricanus_asia, A.luteocephalus_asia, A.furcifer_asia, A.aegypti_asia, A.africanus_asia, An.stephensi_asia, A.vittatus_asia, A.albopictus_asia)
Chikungunya.Asia.list<-list(A.taylori_asia, A.neoafricanus_asia, A.luteocephalus_asia, A.furcifer_asia, A.aegypti_asia, A.africanus_asia, An.stephensi_asia, A.vittatus_asia, A.albopictus_asia)
names(Chikungunya.Asia.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopictus")
Chikungunya.Asia.list  
Chikungunya.Asia$disease<-"Chikungunya"

#Australia, number 3
Chikungunya.Australia<-rbind(A.taylori_australia, A.neoafricanus_australia, A.luteocephalus_australia, A.furcifer_australia, A.aegypti_australia, A.africanus_australia, An.stephensi_australia, A.vittatus_australia, A.albopictus_australia)
Chikungunya.Australia.list<-list(A.taylori_australia, A.neoafricanus_australia, A.luteocephalus_australia, A.furcifer_australia, A.aegypti_australia, A.africanus_australia, An.stephensi_australia, A.vittatus_australia, A.albopictus_australia)
names(Chikungunya.Australia.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopitus")
Chikungunya.Australia.list 
Chikungunya.Australia$disease<-"Chikungunya"

#N_America, number 4
Chikungunya.N_America<-rbind(A.taylori_n.america, A.neoafricanus_n.america, A.luteocephalus_n.america, A.furcifer_n.america, A.aegypti_n.america, A.africanus_n.america, An.stephensi_n.america, A.vittatus_n.america, A.albopictus_n.america)
Chikungunya.N_America.list<-list(A.taylori_n.america, A.neoafricanus_n.america, A.luteocephalus_n.america, A.furcifer_n.america, A.aegypti_n.america, A.africanus_n.america, An.stephensi_n.america, A.vittatus_n.america, A.albopictus_n.america)
names(Chikungunya.N_America.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopitus")
Chikungunya.N_America.list 
Chikungunya.N_America$disease<-"Chikungunya"

#Oceania, number 5
Chikungunya.Oceania<-rbind(A.taylori_oceania, A.neoafricanus_oceania, A.luteocephalus_oceania, A.furcifer_oceania, A.aegypti_oceania, A.africanus_oceania, An.stephensi_oceania, A.vittatus_oceania, A.albopictus_oceania)
Chikungunya.Oceania.list<-list(A.taylori_oceania, A.neoafricanus_oceania, A.luteocephalus_oceania, A.furcifer_oceania, A.aegypti_oceania, A.africanus_oceania, An.stephensi_oceania, A.vittatus_oceania, A.albopictus_oceania)
names(Chikungunya.Oceania.list)<-c("A_taylori", "A_neoaficanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopitus")
Chikungunya.Oceania.list
Chikungunya.Oceania$disease<-"Chikungunya"

#S_America, number 6
Chikungunya.S_America<-rbind(A.taylori_s.america, A.neoafricanus_s.america, A.luteocephalus_s.america, A.furcifer_s.america, A.aegypti_s.america, A.africanus_s.america, An.stephensi_s.america, A.vittatus_s.america, A.albopictus_s.america)
Chikungunya.S_America.list<-list(A.taylori_s.america, A.neoafricanus_s.america, A.luteocephalus_s.america, A.furcifer_s.america, A.aegypti_s.america, A.africanus_s.america, An.stephensi_s.america, A.vittatus_s.america, A.albopictus_s.america)
names(Chikungunya.S_America.list)<-c("A_taylori", "A_neoasianus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopitus")
Chikungunya.S_America.list 
Chikungunya.S_America$disease<-"Chikungunya"

#Europe, number 8
Chikungunya.Europe<-rbind(A.taylori_europe, A.neoafricanus_europe, A.luteocephalus_europe, A.furcifer_europe, A.aegypti_europe, A.africanus_europe, An.stephensi_europe, A.vittatus_europe, A.albopictus_europe)
Chikungunya.Europe.list<-list(A.taylori_europe, A.neoafricanus_europe, A.luteocephalus_europe, A.furcifer_europe, A.aegypti_europe, A.africanus_europe, An.stephensi_europe, A.vittatus_europe, A.albopictus_europe)
names(Chikungunya.Europe.list)<-c("A_taylori", "A_neoafricanus", "A_luteocephalus", "A_furcifer", "A_aegypti", "A_africanus", "An_stephensi", "A_vittatus", "A_albopitus")
Chikungunya.Europe.list 
Chikungunya.Europe$disease<-"Chikungunya"

Chikungunya.Eurasia<-rbind(Chikungunya.Europe, Chikungunya.Asia)

Chikungunya.Oceania.c<-rbind(Chikungunya.Oceania, Chikungunya.Australia)

#############################################

#Dengue
Dengue<-rbind(A_aegypti_continents, A_albopictus_continents, A_scutellaris_continents, A_polynesiensis_continents)
Dengue
Dengue.list<-list(A_aegypti_continents, A_albopictus_continents, A_scutellaris_continents, A_polynesiensis_continents)
Dengue.list
names(Dengue.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.list

#africa.
Dengue.africa<-rbind(A.aegypti_africa, A.albopictus_africa, A.scutellaris_africa, A.polynesiensis_africa)
Dengue.africa.list<-list(A.aegypti_africa, A.albopictus_africa, A.scutellaris_africa, A.polynesiensis_africa)
names(Dengue.africa.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.africa.list
Dengue.africa$disease<-"Dengue"

Dengue.asia<-rbind(A.aegypti_asia, A.albopictus_asia, A.scutellaris_asia, A.polynesiensis_asia)
Dengue.asia.list<-list(A.aegypti_asia, A.albopictus_asia, A.scutellaris_asia, A.polynesiensis_asia)
names(Dengue.asia.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.asia.list
Dengue.asia$disease<-"Dengue"
Dengue.asia

Dengue.australia<-rbind(A.aegypti_australia, A.albopictus_australia, A.scutellaris_australia, A.polynesiensis_australia)
Dengue.australia.list<-list(A.aegypti_australia, A.albopictus_australia, A.scutellaris_australia, A.polynesiensis_australia)
names(Dengue.australia.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.australia.list
Dengue.australia$disease<-"Dengue"

Dengue.n_america<-rbind(A.aegypti_n.america, A.albopictus_n.america, A.scutellaris_n.america, A.polynesiensis_n.america)
Dengue.n_america.list<-list(A.aegypti_n.america, A.albopictus_n.america, A.scutellaris_n.america, A.polynesiensis_n.america)
names(Dengue.n_america.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.n_america.list
Dengue.n_america$disease<-"Dengue"

Dengue.oceania<-rbind(A.aegypti_oceania, A.albopictus_oceania, A.scutellaris_oceania, A.polynesiensis_oceania)
Dengue.oceania.list<-list(A.aegypti_oceania, A.albopictus_oceania, A.scutellaris_oceania, A.polynesiensis_oceania)
names(Dengue.oceania.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.oceania.list
Dengue.oceania$disease<-"Dengue"

Dengue.s_america<-rbind(A.aegypti_s.america, A.albopictus_s.america, A.scutellaris_s.america, A.polynesiensis_s.america)
Dengue.s_america.list<-list(A.aegypti_s.america, A.albopictus_s.america, A.scutellaris_s.america, A.polynesiensis_s.america)
names(Dengue.s_america.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.s_america.list
Dengue.s_america$disease<-"Dengue"

Dengue.europe<-rbind(A.aegypti_europe, A.albopictus_europe, A.scutellaris_europe, A.polynesiensis_europe)
Dengue.europe.list<-list(A.aegypti_europe, A.albopictus_europe, A.scutellaris_europe, A.polynesiensis_europe)
names(Dengue.europe.list)<-c("A_aegypti", "A_albopictus", "A_scutellaris", "A_polynesiensis")
Dengue.europe.list
Dengue.europe$disease<-"Dengue"
Dengue.europe

Dengue.Eurasia<-rbind(Dengue.europe, Dengue.asia)

Dengue.Oceania.c<-rbind(Dengue.oceania, Dengue.australia)
###############################################

#Yellow Fever.
YellowFever<-rbind(A_aegypti_continents, A_africanus_continents, A_furcifer_continents, A_luteocephalus_continents, A_metallicus_continents, A_taylori_continents, A_vittatus_continents, H_janthinomys_continents, H_leucocelaenus_continents, H_spegazzinii_continents, S_albiprivus_continents, S_chloropterus_continents)
YellowFever
YellowFever.list<-list(A_aegypti_continents, A_africanus_continents, A_furcifer_continents, A_luteocephalus_continents, A_metallicus_continents, A_taylori_continents, A_vittatus_continents, H_janthinomys_continents, H_leucocelaenus_continents, H_spegazzinii_continents, S_albiprivus_continents, S_chloropterus_continents)
YellowFever.list
names(YellowFever.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.list

#Making disease data frame on each continent.
#africa, number 1
YellowFever.africa<-rbind(A.aegypti_africa, A.africanus_africa, A.furcifer_africa, A.luteocephalus_africa, A.metallicus_africa, A.taylori_africa, A.vittatus_africa, H.janthinomys_africa, H.leucocelaenus_africa, H.spegazzinii_africa, S.albiprivus_africa, S.chloropterus_africa)
YellowFever.africa.list<-list(A.aegypti_africa, A.africanus_africa, A.furcifer_africa, A.luteocephalus_africa, A.metallicus_africa, A.taylori_africa, A.vittatus_africa, H.janthinomys_africa, H.leucocelaenus_africa, H.spegazzinii_africa, S.albiprivus_africa, S.chloropterus_africa)
names(YellowFever.africa.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.africa.list 
YellowFever.africa$disease<-"YellowFever"

#Asia, number 2
YellowFever.Asia<-rbind(A.aegypti_asia, A.africanus_asia, A.furcifer_asia, A.luteocephalus_asia, A.metallicus_asia, A.taylori_asia, A.vittatus_asia, H.janthinomys_asia, H.leucocelaenus_asia, H.spegazzinii_asia, S.albiprivus_asia, S.chloropterus_asia)
YellowFever.Asia.list<-list(A.aegypti_asia, A.africanus_asia, A.furcifer_asia, A.luteocephalus_asia, A.metallicus_asia, A.taylori_asia, A.vittatus_asia, H.janthinomys_asia, H.leucocelaenus_asia, H.spegazzinii_asia, S.albiprivus_asia, S.chloropterus_asia)
names(YellowFever.Asia.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.Asia.list 
YellowFever.Asia$disease<-"YellowFever"

#Australia, number 3
YellowFever.Australia<-rbind(A.aegypti_australia, A.africanus_australia, A.furcifer_australia, A.luteocephalus_australia, A.metallicus_australia, A.taylori_australia, A.vittatus_australia, H.janthinomys_australia, H.leucocelaenus_australia, H.spegazzinii_australia, S.albiprivus_australia, S.chloropterus_australia)
YellowFever.Australia.list<-list(A.aegypti_australia, A.africanus_australia, A.furcifer_australia, A.luteocephalus_australia, A.metallicus_australia, A.taylori_australia, A.vittatus_australia, H.janthinomys_australia, H.leucocelaenus_australia, H.spegazzinii_australia, S.albiprivus_australia, S.chloropterus_australia)
names(YellowFever.Australia.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.Australia.list 
YellowFever.Australia$disease<-"YellowFever"

#N_America, number 4
YellowFever.N_america<-rbind(A.aegypti_n.america, A.africanus_n.america, A.furcifer_n.america, A.luteocephalus_n.america, A.metallicus_n.america, A.taylori_n.america, A.vittatus_n.america, H.janthinomys_n.america, H.leucocelaenus_n.america, H.spegazzinii_n.america, S.albiprivus_n.america, S.chloropterus_n.america)
YellowFever.N_america.list<-list(A.aegypti_n.america, A.africanus_n.america, A.furcifer_n.america, A.luteocephalus_n.america, A.metallicus_n.america, A.taylori_n.america, A.vittatus_n.america, H.janthinomys_n.america, H.leucocelaenus_n.america, H.spegazzinii_n.america, S.albiprivus_n.america, S.chloropterus_n.america)
names(YellowFever.N_america.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.N_america.list 
YellowFever.N_america$disease<-"YellowFever"

#Oceania, number 5
YellowFever.Oceania<-rbind(A.aegypti_oceania, A.africanus_oceania, A.furcifer_oceania, A.luteocephalus_oceania, A.metallicus_oceania, A.taylori_oceania, A.vittatus_oceania, H.janthinomys_oceania, H.leucocelaenus_oceania, H.spegazzinii_oceania, S.albiprivus_oceania, S.chloropterus_oceania)
YellowFever.Oceania.list<-list(A.aegypti_oceania, A.africanus_oceania, A.furcifer_oceania, A.luteocephalus_oceania, A.metallicus_oceania, A.taylori_oceania, A.vittatus_oceania, H.janthinomys_oceania, H.leucocelaenus_oceania, H.spegazzinii_oceania, S.albiprivus_oceania, S.chloropterus_oceania)
names(YellowFever.Oceania.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.Oceania.list 
YellowFever.Oceania$disease<-"YellowFever"

#S_America, number 6
YellowFever.S_america<-rbind(A.aegypti_s.america, A.africanus_s.america, A.furcifer_s.america, A.luteocephalus_s.america, A.metallicus_s.america, A.taylori_s.america, A.vittatus_s.america, H.janthinomys_s.america, H.leucocelaenus_s.america, H.spegazzinii_s.america, S.albiprivus_s.america, S.chloropterus_s.america)
YellowFever.S_america.list<-list(A.aegypti_s.america, A.africanus_s.america, A.furcifer_s.america, A.luteocephalus_s.america, A.metallicus_s.america, A.taylori_s.america, A.vittatus_s.america, H.janthinomys_s.america, H.leucocelaenus_s.america, H.spegazzinii_s.america, S.albiprivus_s.america, S.chloropterus_s.america)
names(YellowFever.S_america.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.S_america.list 
YellowFever.S_america$disease<-"YellowFever"

#Europe, number 8
YellowFever.Europe<-rbind(A.aegypti_europe, A.africanus_europe, A.furcifer_europe, A.luteocephalus_europe, A.metallicus_europe, A.taylori_europe, A.vittatus_europe, H.janthinomys_europe, H.leucocelaenus_europe, H.spegazzinii_europe, S.albiprivus_europe, S.chloropterus_europe)
YellowFever.Europe.list<-list(A.aegypti_europe, A.africanus_europe, A.furcifer_europe, A.luteocephalus_europe, A.metallicus_europe, A.taylori_europe, A.vittatus_europe, H.janthinomys_europe, H.leucocelaenus_europe, H.spegazzinii_europe, S.albiprivus_europe, S.chloropterus_europe)
names(YellowFever.Europe.list)<-c("A_aegypti", "A_africanus", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_taylori", "A_vittatus", "H_janthinomys", "H_leucocelaenus", "H_spegazzinii", "S_albiprivus", "S_chloropterus")
YellowFever.Europe.list 
YellowFever.Europe$disease<-"YellowFever"

YellowFever.Eurasia<-rbind(YellowFever.Europe, YellowFever.Asia)

YellowFever.Oceania.c<-rbind(YellowFever.Oceania, YellowFever.Australia)

###############################################################

#Zika
Zika<-rbind(A_aegypti_continents, A_africanus_continents, A_albopictus_continents, A_dalzieli_continents, A_fowleri_continents, A_furcifer_continents, A_luteocephalus_continents, A_metallicus_continents, A_neoafricanus_continents, A_opok_continents, A_polynesiensis_continents, A_unilineatus_continents, A_vittatus_continents, An_gambiae_continents, An_coustani_continents, C_perfuscus_continents, M_uniformis_continents)
Zika
Zika.list<-list(A_aegypti_continents, A_africanus_continents, A_albopictus_continents, A_dalzieli_continents, A_fowleri_continents, A_furcifer_continents, A_luteocephalus_continents, A_metallicus_continents, A_neoafricanus_continents, A_opok_continents, A_polynesiensis_continents, A_unilineatus_continents, A_vittatus_continents, An_gambiae_continents, An_coustani_continents, C_perfuscus_continents, M_uniformis_continents)
Zika.list
names(Zika.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.list

#africa - 1
Zika.africa<-rbind(A.aegypti_africa, A.africanus_africa, A.albopictus_africa, A.dalzieli_africa, A.fowleri_africa, A.furcifer_africa, A.luteocephalus_africa, A.metallicus_africa, A.neoafricanus_africa, A.opok_africa, A.polynesiensis_africa, A.unilineatus_africa, A.vittatus_africa, An.gambiae_africa, An.coustani_africa, C.perfuscus_africa, M.uniformis_africa)
Zika.africa.list<-list(A.aegypti_africa, A.africanus_africa, A.albopictus_africa, A.dalzieli_africa, A.fowleri_africa, A.furcifer_africa, A.luteocephalus_africa, A.metallicus_africa, A.neoafricanus_africa, A.opok_africa, A.polynesiensis_africa, A.unilineatus_africa, A.vittatus_africa, An.gambiae_africa, An.coustani_africa, C.perfuscus_africa, M.uniformis_africa)
names(Zika.africa.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.africa.list
Zika.africa$disease<-"Zika"

#Asia - 2
Zika.Asia<-rbind(A.aegypti_asia, A.africanus_asia, A.albopictus_asia, A.dalzieli_asia, A.fowleri_asia, A.furcifer_asia, A.luteocephalus_asia, A.metallicus_asia, A.neoafricanus_asia, A.opok_asia, A.polynesiensis_asia, A.unilineatus_asia, A.vittatus_asia, An.gambiae_asia, An.coustani_asia, C.perfuscus_asia, M.uniformis_asia)
Zika.Asia.list<-list(A.aegypti_asia, A.africanus_asia, A.albopictus_asia, A.dalzieli_asia, A.fowleri_asia, A.furcifer_asia, A.luteocephalus_asia, A.metallicus_asia, A.neoafricanus_asia, A.opok_asia, A.polynesiensis_asia, A.unilineatus_asia, A.vittatus_asia, An.gambiae_asia, An.coustani_asia, C.perfuscus_asia, M.uniformis_asia)
names(Zika.Asia.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.Asia.list
Zika.Asia$disease<-"Zika"

#Australia - 3
Zika.Australia<-rbind(A.aegypti_australia, A.africanus_australia, A.albopictus_australia, A.dalzieli_australia, A.fowleri_australia, A.furcifer_australia, A.luteocephalus_australia, A.metallicus_australia, A.neoafricanus_australia, A.opok_australia, A.polynesiensis_australia, A.unilineatus_australia, A.vittatus_australia, An.gambiae_australia, An.coustani_australia, C.perfuscus_australia, M.uniformis_australia)
Zika.Australia.list<-list(A.aegypti_australia, A.africanus_australia, A.albopictus_australia, A.dalzieli_australia, A.fowleri_australia, A.furcifer_australia, A.luteocephalus_australia, A.metallicus_australia, A.neoafricanus_australia, A.opok_australia, A.polynesiensis_australia, A.unilineatus_australia, A.vittatus_australia, An.gambiae_australia, An.coustani_australia, C.perfuscus_australia, M.uniformis_australia)
names(Zika.Australia.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.Australia.list
Zika.Australia$disease<-"Zika"

#N_America - 4
Zika.N_America<-rbind(A.aegypti_n.america, A.africanus_n.america, A.albopictus_n.america, A.dalzieli_n.america, A.fowleri_n.america, A.furcifer_n.america, A.luteocephalus_n.america, A.metallicus_n.america, A.neoafricanus_n.america, A.opok_n.america, A.polynesiensis_n.america, A.unilineatus_n.america, A.vittatus_n.america, An.gambiae_n.america, An.coustani_n.america, C.perfuscus_n.america, M.uniformis_n.america)
Zika.N_America.list<-list(A.aegypti_n.america, A.africanus_n.america, A.albopictus_n.america, A.dalzieli_n.america, A.fowleri_n.america, A.furcifer_n.america, A.luteocephalus_n.america, A.metallicus_n.america, A.neoafricanus_n.america, A.opok_n.america, A.polynesiensis_n.america, A.unilineatus_n.america, A.vittatus_n.america, An.gambiae_n.america, An.coustani_n.america, C.perfuscus_n.america, M.uniformis_n.america)
names(Zika.N_America.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.N_America.list
Zika.N_America$disease<-"Zika"

#Oceania - 5
Zika.Oceania<-rbind(A.aegypti_oceania, A.africanus_oceania, A.albopictus_oceania, A.dalzieli_oceania, A.fowleri_oceania, A.furcifer_oceania, A.luteocephalus_oceania, A.metallicus_oceania, A.neoafricanus_oceania, A.opok_oceania, A.polynesiensis_oceania, A.unilineatus_oceania, A.vittatus_oceania, An.gambiae_oceania, An.coustani_oceania, C.perfuscus_oceania, M.uniformis_oceania)
Zika.Oceania.list<-list(A.aegypti_oceania, A.africanus_oceania, A.albopictus_oceania, A.dalzieli_oceania, A.fowleri_oceania, A.furcifer_oceania, A.luteocephalus_oceania, A.metallicus_oceania, A.neoafricanus_oceania, A.opok_oceania, A.polynesiensis_oceania, A.unilineatus_oceania, A.vittatus_oceania, An.gambiae_oceania, An.coustani_oceania, C.perfuscus_oceania, M.uniformis_oceania)
names(Zika.Oceania.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.Oceania.list
Zika.Oceania$disease<-"Zika"

#S_America - 6
Zika.S_America<-rbind(A.aegypti_s.america, A.africanus_s.america, A.albopictus_s.america, A.dalzieli_s.america, A.fowleri_s.america, A.furcifer_s.america, A.luteocephalus_s.america, A.metallicus_s.america, A.neoafricanus_s.america, A.opok_s.america, A.polynesiensis_s.america, A.unilineatus_s.america, A.vittatus_s.america, An.gambiae_s.america, An.coustani_s.america, C.perfuscus_s.america, M.uniformis_s.america)
Zika.S_America.list<-list(A.aegypti_s.america, A.africanus_s.america, A.albopictus_s.america, A.dalzieli_s.america, A.fowleri_s.america, A.furcifer_s.america, A.luteocephalus_s.america, A.metallicus_s.america, A.neoafricanus_s.america, A.opok_s.america, A.polynesiensis_s.america, A.unilineatus_s.america, A.vittatus_s.america, An.gambiae_s.america, An.coustani_s.america, C.perfuscus_s.america, M.uniformis_s.america)
names(Zika.S_America.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.S_America.list
Zika.S_America$disease<-"Zika"

#Europe - 8
Zika.Europe<-rbind(A.aegypti_europe, A.africanus_europe, A.albopictus_europe, A.dalzieli_europe, A.fowleri_europe, A.furcifer_europe, A.luteocephalus_europe, A.metallicus_europe, A.neoafricanus_europe, A.opok_europe, A.polynesiensis_europe, A.unilineatus_europe, A.vittatus_europe, An.gambiae_europe, An.coustani_europe, C.perfuscus_europe, M.uniformis_europe)
Zika.Europe.list<-list(A.aegypti_europe, A.africanuss_europe, A.albopictus_europe, A.dalzieli_europe, A.fowleri_europe, A.furcifer_europe, A.luteocephalus_europe, A.metallicus_europe, A.neoafricanus_europe, A.opok_europe, A.polynesiensis_europe, A.unilineatus_europe, A.vittatus_europe, An.gambiae_europe, An.coustani_europe, C.perfuscus_europe, M.uniformis_europe)
names(Zika.Europe.list)<-c("A_aegypti", "A_africanus", "A_albopictus", "A_dalzieli", "A_fowleri", "A_furcifer", "A_luteocephalus", "A_metallicus", "A_neoafricanus", "A_opok", "A_polynesiensis", "A_unilineatus", "A_vittatus", "An_gambiae", "An_coustani", "C_perfuscus", "M_uniformis")
Zika.Europe.list
Zika.Europe$disease<-"Zika"

Zika.Eurasia<-rbind(Zika.Europe, Zika.Asia)

Zika.Oceania.c<-rbind(Zika.Oceania, Zika.Australia)

############################################################

#Malaria
Malaria<-rbind(An_aconitus_continents, An_albimanus_continents, An_albitarsis_continents, An_annularis_continents, An_aquasalis_continents, An_arabiensis_continents, An_atroparvus_continents, An_barbirostris_continents, An_braziliensis_continents, An_culicifacies_continents, An_darlingi_continents, An_dirus_continents, An_farauti_continents, An_fluviatilis_continents, An_freeborni_continents, An_funestus_continents, An_gambiae_continents, An_koliensis_continents, An_lesteri_continents, An_leucosphyrus_continents, An_maculatus_continents, An_marajoara_continents, An_melas_continents, An_merus_continents, An_messeae_continents, An_minimus_continents, An_moucheti_continents, An_nili_continents, An_nuneztovari_continents, An_pseudopunctipennis_continents, An_punctulatus_continents, An_quadrimaculatus_continents, An_sacharovi_continents, An_sinensis_continents, An_stephensi_continents, An_subpictus_continents, An_sundaicus_continents, An_superpictus_continents, C_quinquefasciatus_continents)
Malaria.list<-list(An_aconitus_continents, An_albimanus_continents, An_albitarsis_continents, An_annularis_continents, An_aquasalis_continents, An_arabiensis_continents, An_atroparvus_continents, An_barbirostris_continents, An_braziliensis_continents, An_culicifacies_continents, An_darlingi_continents, An_dirus_continents, An_farauti_continents, An_fluviatilis_continents, An_freeborni_continents, An_funestus_continents, An_gambiae_continents, An_koliensis_continents, An_lesteri_continents, An_leucosphyrus_continents, An_maculatus_continents, An_marajoara_continents, An_melas_continents, An_merus_continents, An_messeae_continents, An_minimus_continents, An_moucheti_continents, An_nili_continents, An_nuneztovari_continents, An_pseudopunctipennis_continents, An_punctulatus_continents, An_quadrimaculatus_continents, An_sacharovi_continents, An_sinensis_continents, An_stephensi_continents, An_subpictus_continents, An_sundaicus_continents, An_superpictus_continents, C_quinquefasciatus_continents)
names(Malaria.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")

#africa
Malaria.africa<-rbind(An.aconitus_africa, An.albimanus_africa, An.albitarsis_africa, An.annularis_africa, An.aquasalis_africa, An.arabiensis_africa, An.atroparvus_africa, An.barbirostris_africa, An.braziliensis_africa, An.culicifacies_africa, An.darlingi_africa, An.dirus_africa, An.farauti_africa, An.fluviatilis_africa, An.freeborni_africa, An.funestus_africa, An.gambiae_africa, An.koliensis_africa, An.lesteri_africa, An.leucosphyrus_africa, An.maculatus_africa, An.marajoara_africa, An.melas_africa, An.merus_africa, An.messeae_africa, An.minimus_africa, An.moucheti_africa, An.nili_africa, An.nuneztovari_africa, An.pseudopunctipennis_africa, An.punctulatus_africa, An.quadrimaculatus_africa, An.sacharovi_africa, An.sinensis_africa, An.stephensi_africa, An.subpictus_africa, An.sundaicus_africa, An.superpictus_africa, C.quinquefasciatus_africa)
Malaria.list<-list(An.aconitus_africa, An.albimanus_africa, An.albitarsis_africa, An.annularis_africa, An.aquasalis_africa, An.arabiensis_africa, An.atroparvus_africa, An.barbirostris_africa, An.braziliensis_africa, An.culicifacies_africa, An.darlingi_africa, An.dirus_africa, An.farauti_africa, An.fluviatilis_africa, An.freeborni_africa, An.funestus_africa, An.gambiae_africa, An.koliensis_africa, An.lesteri_africa, An.leucosphyrus_africa, An.maculatus_africa, An.marajoara_africa, An.melas_africa, An.merus_africa, An.messeae_africa, An.minimus_africa, An.moucheti_africa, An.nili_africa, An.nuneztovari_africa, An.pseudopunctipennis_africa, An.punctulatus_africa, An.quadrimaculatus_africa, An.sacharovi_africa, An.sinensis_africa, An.stephensi_africa, An.subpictus_africa, An.sundaicus_africa, An.superpictus_africa, C.quinquefasciatus_africa)
names(Malaria.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
class(Malaria.africa)
Malaria.africa$disease<-"Malaria"

#Asia
Malaria.Asia<-rbind(An.aconitus_asia, An.albimanus_asia, An.albitarsis_asia, An.annularis_asia, An.aquasalis_asia, An.arabiensis_asia, An.atroparvus_asia, An.barbirostris_asia, An.braziliensis_asia, An.culicifacies_asia, An.darlingi_asia, An.dirus_asia, An.farauti_asia, An.fluviatilis_asia, An.freeborni_asia, An.funestus_asia, An.gambiae_asia, An.koliensis_asia, An.lesteri_asia, An.leucosphyrus_asia, An.maculatus_asia, An.marajoara_asia, An.melas_asia, An.merus_asia, An.messeae_asia, An.minimus_asia, An.moucheti_asia, An.nili_asia, An.nuneztovari_asia, An.pseudopunctipennis_asia, An.punctulatus_asia, An.quadrimaculatus_asia, An.sacharovi_asia, An.sinensis_asia, An.stephensi_asia, An.subpictus_asia, An.sundaicus_asia, An.superpictus_asia, C.quinquefasciatus_asia)
Malaria.Asia.list<-list(An.aconitus_asia, An.albimanus_asia, An.albitarsis_asia, An.annularis_asia, An.aquasalis_asia, An.arabiensis_asia, An.atroparvus_asia, An.barbirostris_asia, An.braziliensis_asia, An.culicifacies_asia, An.darlingi_asia, An.dirus_asia, An.farauti_asia, An.fluviatilis_asia, An.freeborni_asia, An.funestus_asia, An.gambiae_asia, An.koliensis_asia, An.lesteri_asia, An.leucosphyrus_asia, An.maculatus_asia, An.marajoara_asia, An.melas_asia, An.merus_asia, An.messeae_asia, An.minimus_asia, An.moucheti_asia, An.nili_asia, An.nuneztovari_asia, An.pseudopunctipennis_asia, An.punctulatus_asia, An.quadrimaculatus_asia, An.sacharovi_asia, An.sinensis_asia, An.stephensi_asia, An.subpictus_asia, An.sundaicus_asia, An.superpictus_asia, C.quinquefasciatus_asia)
names(Malaria.Asia.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.Asia$disease<-"Malaria"

#Australia
Malaria.Australia<-rbind(An.aconitus_australia, An.albimanus_australia, An.albitarsis_australia, An.annularis_australia, An.aquasalis_australia, An.arabiensis_australia, An.atroparvus_australia, An.barbirostris_australia, An.braziliensis_australia, An.culicifacies_australia, An.darlingi_australia, An.dirus_australia, An.farauti_australia, An.fluviatilis_australia, An.freeborni_australia, An.funestus_australia, An.gambiae_australia, An.koliensis_australia, An.lesteri_australia, An.leucosphyrus_australia, An.maculatus_australia, An.marajoara_australia, An.melas_australia, An.merus_australia, An.messeae_australia, An.minimus_australia, An.moucheti_australia, An.nili_australia, An.nuneztovari_australia, An.pseudopunctipennis_australia, An.punctulatus_australia, An.quadrimaculatus_australia, An.sacharovi_australia, An.sinensis_australia, An.stephensi_australia, An.subpictus_australia, An.sundaicus_australia, An.superpictus_australia, C.quinquefasciatus_australia)
Malaria.Australia.list<-list(An.aconitus_australia, An.albimanus_australia, An.albitarsis_australia, An.annularis_australia, An.aquasalis_australia, An.arabiensis_australia, An.atroparvus_australia, An.barbirostris_australia, An.braziliensis_australia, An.culicifacies_australia, An.darlingi_australia, An.dirus_australia, An.farauti_australia, An.fluviatilis_australia, An.freeborni_australia, An.funestus_australia, An.gambiae_australia, An.koliensis_australia, An.lesteri_australia, An.leucosphyrus_australia, An.maculatus_australia, An.marajoara_australia, An.melas_australia, An.merus_australia, An.messeae_australia, An.minimus_australia, An.moucheti_australia, An.nili_australia, An.nuneztovari_australia, An.pseudopunctipennis_australia, An.punctulatus_australia, An.quadrimaculatus_australia, An.sacharovi_australia, An.sinensis_australia, An.stephensi_australia, An.subpictus_australia, An.sundaicus_australia, An.superpictus_australia, C.quinquefasciatus_australia)
names(Malaria.Australia.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.Australia$disease<-"Malaria"

#N_America
Malaria.N_America<-rbind(An.aconitus_n.america, An.albimanus_n.america, An.albitarsis_n.america, An.annularis_n.america, An.aquasalis_n.america, An.arabiensis_n.america, An.atroparvus_n.america, An.barbirostris_n.america, An.braziliensis_n.america, An.culicifacies_n.america, An.darlingi_n.america, An.dirus_n.america, An.farauti_n.america, An.fluviatilis_n.america, An.freeborni_n.america, An.funestus_n.america, An.gambiae_n.america, An.koliensis_n.america, An.lesteri_n.america, An.leucosphyrus_n.america, An.maculatus_n.america, An.marajoara_n.america, An.melas_n.america, An.merus_n.america, An.messeae_n.america, An.minimus_n.america, An.moucheti_n.america, An.nili_n.america, An.nuneztovari_n.america, An.pseudopunctipennis_n.america, An.punctulatus_n.america, An.quadrimaculatus_n.america, An.sacharovi_n.america, An.sinensis_n.america, An.stephensi_n.america, An.subpictus_n.america, An.sundaicus_n.america, An.superpictus_n.america, C.quinquefasciatus_n.america)
Malaria.N_America.list<-list(An.aconitus_n.america, An.albimanus_n.america, An.albitarsis_n.america, An.annularis_n.america, An.aquasalis_n.america, An.arabiensis_n.america, An.atroparvus_n.america, An.barbirostris_n.america, An.braziliensis_n.america, An.culicifacies_n.america, An.darlingi_n.america, An.dirus_n.america, An.farauti_n.america, An.fluviatilis_n.america, An.freeborni_n.america, An.funestus_n.america, An.gambiae_n.america, An.koliensis_n.america, An.lesteri_n.america, An.leucosphyrus_n.america, An.maculatus_n.america, An.marajoara_n.america, An.melas_n.america, An.merus_n.america, An.messeae_n.america, An.minimus_n.america, An.moucheti_n.america, An.nili_n.america, An.nuneztovari_n.america, An.pseudopunctipennis_n.america, An.punctulatus_n.america, An.quadrimaculatus_n.america, An.sacharovi_n.america, An.sinensis_n.america, An.stephensi_n.america, An.subpictus_n.america, An.sundaicus_n.america, An.superpictus_n.america, C.quinquefasciatus_n.america)
names(Malaria.N_America.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.N_America$disease<-"Malaria"

#Oceania
Malaria.Oceania<-rbind(An.aconitus_oceania, An.albimanus_oceania, An.albitarsis_oceania, An.annularis_oceania, An.aquasalis_oceania, An.arabiensis_oceania, An.atroparvus_oceania, An.barbirostris_oceania, An.braziliensis_oceania, An.culicifacies_oceania, An.darlingi_oceania, An.dirus_oceania, An.farauti_oceania, An.fluviatilis_oceania, An.freeborni_oceania, An.funestus_oceania, An.gambiae_oceania, An.koliensis_oceania, An.lesteri_oceania, An.leucosphyrus_oceania, An.maculatus_oceania, An.marajoara_oceania, An.melas_oceania, An.merus_oceania, An.messeae_oceania, An.minimus_oceania, An.moucheti_oceania, An.nili_oceania, An.nuneztovari_oceania, An.pseudopunctipennis_oceania, An.punctulatus_oceania, An.quadrimaculatus_oceania, An.sacharovi_oceania, An.sinensis_oceania, An.stephensi_oceania, An.subpictus_oceania, An.sundaicus_oceania, An.superpictus_oceania, C.quinquefasciatus_oceania)
Malaria.Oceania.list<-list(An.aconitus_oceania, An.albimanus_oceania, An.albitarsis_oceania, An.annularis_oceania, An.aquasalis_oceania, An.arabiensis_oceania, An.atroparvus_oceania, An.barbirostris_oceania, An.braziliensis_oceania, An.culicifacies_oceania, An.darlingi_oceania, An.dirus_oceania, An.farauti_oceania, An.fluviatilis_oceania, An.freeborni_oceania, An.funestus_oceania, An.gambiae_oceania, An.koliensis_oceania, An.lesteri_oceania, An.leucosphyrus_oceania, An.maculatus_oceania, An.marajoara_oceania, An.melas_oceania, An.merus_oceania, An.messeae_oceania, An.minimus_oceania, An.moucheti_oceania, An.nili_oceania, An.nuneztovari_oceania, An.pseudopunctipennis_oceania, An.punctulatus_oceania, An.quadrimaculatus_oceania, An.sacharovi_oceania, An.sinensis_oceania, An.stephensi_oceania, An.subpictus_oceania, An.sundaicus_oceania, An.superpictus_oceania, C.quinquefasciatus_oceania)
names(Malaria.Oceania.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.Oceania$disease<-"Malaria"

#S_America
Malaria.S_America<-rbind(An.aconitus_s.america, An.albimanus_s.america, An.albitarsis_s.america, An.annularis_s.america, An.aquasalis_s.america, An.arabiensis_s.america, An.atroparvus_s.america, An.barbirostris_s.america, An.braziliensis_s.america, An.culicifacies_s.america, An.darlingi_s.america, An.dirus_s.america, An.farauti_s.america, An.fluviatilis_s.america, An.freeborni_s.america, An.funestus_s.america, An.gambiae_s.america, An.koliensis_s.america, An.lesteri_s.america, An.leucosphyrus_s.america, An.maculatus_s.america, An.marajoara_s.america, An.melas_s.america, An.merus_s.america, An.messeae_s.america, An.minimus_s.america, An.moucheti_s.america, An.nili_s.america, An.nuneztovari_s.america, An.pseudopunctipennis_s.america, An.punctulatus_s.america, An.quadrimaculatus_s.america, An.sacharovi_s.america, An.sinensis_s.america, An.stephensi_s.america, An.subpictus_s.america, An.sundaicus_s.america, An.superpictus_s.america, C.quinquefasciatus_s.america)
Malaria.S_America.list<-list(An.aconitus_s.america, An.albimanus_s.america, An.albitarsis_s.america, An.annularis_s.america, An.aquasalis_s.america, An.arabiensis_s.america, An.atroparvus_s.america, An.barbirostris_s.america, An.braziliensis_s.america, An.culicifacies_s.america, An.darlingi_s.america, An.dirus_s.america, An.farauti_s.america, An.fluviatilis_s.america, An.freeborni_s.america, An.funestus_s.america, An.gambiae_s.america, An.koliensis_s.america, An.lesteri_s.america, An.leucosphyrus_s.america, An.maculatus_s.america, An.marajoara_s.america, An.melas_s.america, An.merus_s.america, An.messeae_s.america, An.minimus_s.america, An.moucheti_s.america, An.nili_s.america, An.nuneztovari_s.america, An.pseudopunctipennis_s.america, An.punctulatus_s.america, An.quadrimaculatus_s.america, An.sacharovi_s.america, An.sinensis_s.america, An.stephensi_s.america, An.subpictus_s.america, An.sundaicus_s.america, An.superpictus_s.america, C.quinquefasciatus_s.america)
names(Malaria.S_America.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.S_America$disease<-"Malaria"

#Europe
Malaria.Europe<-rbind(An.aconitus_europe, An.albimanus_europe, An.albitarsis_europe, An.annularis_europe, An.aquasalis_europe, An.arabiensis_europe, An.atroparvus_europe, An.barbirostris_europe, An.braziliensis_europe, An.culicifacies_europe, An.darlingi_europe, An.dirus_europe, An.farauti_europe, An.fluviatilis_europe, An.freeborni_europe, An.funestus_europe, An.gambiae_europe, An.koliensis_europe, An.lesteri_europe, An.leucosphyrus_europe, An.maculatus_europe, An.marajoara_europe, An.melas_europe, An.merus_europe, An.messeae_europe, An.minimus_europe, An.moucheti_europe, An.nili_europe, An.nuneztovari_europe, An.pseudopunctipennis_europe, An.punctulatus_europe, An.quadrimaculatus_europe, An.sacharovi_europe, An.sinensis_europe, An.stephensi_europe, An.subpictus_europe, An.sundaicus_europe, An.superpictus_europe, C.quinquefasciatus_europe)
Malaria.Europe.list<-list(An.aconitus_europe, An.albimanus_europe, An.albitarsis_europe, An.annularis_europe, An.aquasalis_europe, An.arabiensis_europe, An.atroparvus_europe, An.barbirostris_europe, An.braziliensis_europe, An.culicifacies_europe, An.darlingi_europe, An.dirus_europe, An.farauti_europe, An.fluviatilis_europe, An.freeborni_europe, An.funestus_europe, An.gambiae_europe, An.koliensis_europe, An.lesteri_europe, An.leucosphyrus_europe, An.maculatus_europe, An.marajoara_europe, An.melas_europe, An.merus_europe, An.messeae_europe, An.minimus_europe, An.moucheti_europe, An.nili_europe, An.nuneztovari_europe, An.pseudopunctipennis_europe, An.punctulatus_europe, An.quadrimaculatus_europe, An.sacharovi_europe, An.sinensis_europe, An.stephensi_europe, An.subpictus_europe, An.sundaicus_europe, An.superpictus_europe, C.quinquefasciatus_europe)
names(Malaria.Europe.list)<-c("An_aconitus", "An_albimanus", "An_albitarsis", "An_annularsis", "An_aquasalia", "An_arabiensis", "An_atroparvus", "An_barbirostris", "An_braziliensis", "An_culicifacies", "An_darlingi", "An_dirus", "An_farauti", "An_fluviatillis", "An_freeborni", "An_funestus", "An_gambiae", "An_koliensis", "An_lesteri", "An_leucosphyrus", "An_maculatus", "An_marajoara", "An_melas", "An_merus", "An_messeae", "An_minimus", "An_moucheti", "An_nili", "An_nuneztovari", "An_pseudopunctipennis", "An_punctulatus", "An_quadrimaculatus", "An_sacharovi", "An_sinensis", "An_stephensi", "An_subpictus", "An_sundaicus", "An_superpictus", "C_qiunquefasciatus")
Malaria.Europe$disease<-"Malaria"

Malaria.Eurasia<-rbind(Malaria.Europe, Malaria.Asia)

Malaria.Oceania.c<-rbind(Malaria.Oceania, Malaria.Australia)

#############

#Aedes squamiger
A.squamiger.df<-A.squamiger.data
A.squamiger.cont<-extract(continent, A.squamiger.df)
A.squamiger.cont
A.squamiger.df$cont<-A.squamiger.cont
A.squamiger.df.noNA<-A.squamiger.df[!is.na(A.squamiger.df$cont),]
A.squamiger.df.noNA
A.squamiger.df.noNA$species<-"A_squamiger"
A.squamiger.df.noNA<-A.squamiger.df.noNA[,c(4,3,1,2)]
A.squamiger.df.noNA
A_squamiger<-A.squamiger.df.noNA

A.squamiger_africa<-A_squamiger[A_squamiger$cont=="1",]
A.squamiger_asia<-A_squamiger[A_squamiger$cont=="2",]
A.squamiger_australia<-A_squamiger[A_squamiger$cont=="3",]
A.squamiger_n.america<-A_squamiger[A_squamiger$cont=="4",]
A.squamiger_oceania<-A_squamiger[A_squamiger$cont=="5",]
A.squamiger_s.america<-A_squamiger[A_squamiger$cont=="6",]
A.squamiger_europe<-A_squamiger[A_squamiger$cont=="8",]

A_squamiger_continents<-rbind(A.squamiger_africa, A.squamiger_asia, A.squamiger_australia, A.squamiger_n.america, A.squamiger_oceania, A.squamiger_s.america, A.squamiger_europe)
A_squamiger_continents
#in a list
A_squamiger_continents.list<-list(A.squamiger_africa, A.squamiger_asia, A.squamiger_australia, A.squamiger_n.america, A.squamiger_oceania, A.squamiger_s.america, A.squamiger_europe)
A_squamiger_continents.list

#Coquilettidia perturbans
Co.perturbans.df<-Co.perturbans.data
Co.perturbans.cont<-extract(continent, Co.perturbans.df)
Co.perturbans.cont
Co.perturbans.df$cont<-Co.perturbans.cont
Co.perturbans.df.noNA<-Co.perturbans.df[!is.na(Co.perturbans.df$cont),]
Co.perturbans.df.noNA
Co.perturbans.df.noNA$species<-"Co_perturbans"
Co.perturbans.df.noNA<-Co.perturbans.df.noNA[,c(4,3,1,2)]
Co.perturbans.df.noNA
Co_perturbans<-Co.perturbans.df.noNA

Co.perturbans_africa<-Co_perturbans[Co_perturbans$cont=="1",]
Co.perturbans_asia<-Co_perturbans[Co_perturbans$cont=="2",]
Co.perturbans_australia<-Co_perturbans[Co_perturbans$cont=="3",]
Co.perturbans_n.america<-Co_perturbans[Co_perturbans$cont=="4",]
Co.perturbans_oceania<-Co_perturbans[Co_perturbans$cont=="5",]
Co.perturbans_s.america<-Co_perturbans[Co_perturbans$cont=="6",]
Co.perturbans_europe<-Co_perturbans[Co_perturbans$cont=="8",]

Co_perturbans_continents<-rbind(Co.perturbans_africa, Co.perturbans_asia, Co.perturbans_australia, Co.perturbans_n.america, Co.perturbans_oceania, Co.perturbans_s.america, Co.perturbans_europe)
Co_perturbans_continents
#in a list
Co_perturbans_continents.list<-list(Co.perturbans_africa, Co.perturbans_asia, Co.perturbans_australia, Co.perturbans_n.america, Co.perturbans_oceania, Co.perturbans_s.america, Co.perturbans_europe)
Co_perturbans_continents.list

#Culex salinarius
C.salinarius.df<-C.salinarius.data
C.salinarius.cont<-extract(continent, C.salinarius.df)
C.salinarius.cont
C.salinarius.df$cont<-C.salinarius.cont
C.salinarius.df.noNA<-C.salinarius.df[!is.na(C.salinarius.df$cont),]
C.salinarius.df.noNA
C.salinarius.df.noNA$species<-"C_salinarius"
C.salinarius.df.noNA<-C.salinarius.df.noNA[,c(4,3,1,2)]
C.salinarius.df.noNA
C_salinarius<-C.salinarius.df.noNA

C.salinarius_africa<-C_salinarius[C_salinarius$cont=="1",]
C.salinarius_asia<-C_salinarius[C_salinarius$cont=="2",]
C.salinarius_australia<-C_salinarius[C_salinarius$cont=="3",]
C.salinarius_n.america<-C_salinarius[C_salinarius$cont=="4",]
C.salinarius_oceania<-C_salinarius[C_salinarius$cont=="5",]
C.salinarius_s.america<-C_salinarius[C_salinarius$cont=="6",]
C.salinarius_europe<-C_salinarius[C_salinarius$cont=="8",]

C_salinarius_continents<-rbind(C.salinarius_africa, C.salinarius_asia, C.salinarius_australia, C.salinarius_n.america, C.salinarius_oceania, C.salinarius_s.america, C.salinarius_europe)
C_salinarius_continents
#in a list
C_salinarius_continents.list<-list(C.salinarius_africa, C.salinarius_asia, C.salinarius_australia, C.salinarius_n.america, C.salinarius_oceania, C.salinarius_s.america, C.salinarius_europe)
C_salinarius_continents.list

#Culex stigmatosoma
C.stigmatosoma.df<-C.stigmatosoma.data
C.stigmatosoma.cont<-extract(continent, C.stigmatosoma.df)
C.stigmatosoma.cont
C.stigmatosoma.df$cont<-C.stigmatosoma.cont
C.stigmatosoma.df.noNA<-C.stigmatosoma.df[!is.na(C.stigmatosoma.df$cont),]
C.stigmatosoma.df.noNA
C.stigmatosoma.df.noNA$species<-"C_stigmatosoma"
C.stigmatosoma.df.noNA<-C.stigmatosoma.df.noNA[,c(4,3,1,2)]
C.stigmatosoma.df.noNA
C_stigmatosoma<-C.stigmatosoma.df.noNA

C.stigmatosoma_africa<-C_stigmatosoma[C_stigmatosoma$cont=="1",]
C.stigmatosoma_asia<-C_stigmatosoma[C_stigmatosoma$cont=="2",]
C.stigmatosoma_australia<-C_stigmatosoma[C_stigmatosoma$cont=="3",]
C.stigmatosoma_n.america<-C_stigmatosoma[C_stigmatosoma$cont=="4",]
C.stigmatosoma_oceania<-C_stigmatosoma[C_stigmatosoma$cont=="5",]
C.stigmatosoma_s.america<-C_stigmatosoma[C_stigmatosoma$cont=="6",]
C.stigmatosoma_europe<-C_stigmatosoma[C_stigmatosoma$cont=="8",]

C_stigmatosoma_continents<-rbind(C.stigmatosoma_africa, C.stigmatosoma_asia, C.stigmatosoma_australia, C.stigmatosoma_n.america, C.stigmatosoma_oceania, C.stigmatosoma_s.america, C.stigmatosoma_europe)
C_stigmatosoma_continents
#in a list
C_stigmatosoma_continents.list<-list(C.stigmatosoma_africa, C.stigmatosoma_asia, C.stigmatosoma_australia, C.stigmatosoma_n.america, C.stigmatosoma_oceania, C.stigmatosoma_s.america, C.stigmatosoma_europe)
C_stigmatosoma_continents.list

#Culex tarsalis
C.tarsalis.df<-C.tarsalis.data
C.tarsalis.cont<-extract(continent, C.tarsalis.df)
C.tarsalis.cont
C.tarsalis.df$cont<-C.tarsalis.cont
C.tarsalis.df.noNA<-C.tarsalis.df[!is.na(C.tarsalis.df$cont),]
C.tarsalis.df.noNA
C.tarsalis.df.noNA$species<-"C_tarsalis"
C.tarsalis.df.noNA<-C.tarsalis.df.noNA[,c(4,3,1,2)]
C.tarsalis.df.noNA
C_tarsalis<-C.tarsalis.df.noNA

C.tarsalis_africa<-C_tarsalis[C_tarsalis$cont=="1",]
C.tarsalis_asia<-C_tarsalis[C_tarsalis$cont=="2",]
C.tarsalis_australia<-C_tarsalis[C_tarsalis$cont=="3",]
C.tarsalis_n.america<-C_tarsalis[C_tarsalis$cont=="4",]
C.tarsalis_oceania<-C_tarsalis[C_tarsalis$cont=="5",]
C.tarsalis_s.america<-C_tarsalis[C_tarsalis$cont=="6",]
C.tarsalis_europe<-C_tarsalis[C_tarsalis$cont=="8",]

C_tarsalis_continents<-rbind(C.tarsalis_africa, C.tarsalis_asia, C.tarsalis_australia, C.tarsalis_n.america, C.tarsalis_oceania, C.tarsalis_s.america, C.tarsalis_europe)
C_tarsalis_continents
#in a list
C_tarsalis_continents.list<-list(C.tarsalis_africa, C.tarsalis_asia, C.tarsalis_australia, C.tarsalis_n.america, C.tarsalis_oceania, C.tarsalis_s.america, C.tarsalis_europe)
C_tarsalis_continents.list

#Culex territans
C.territans.df<-C.territans.data
C.territans.cont<-extract(continent, C.territans.df)
C.territans.cont
C.territans.df$cont<-C.territans.cont
C.territans.df.noNA<-C.territans.df[!is.na(C.territans.df$cont),]
C.territans.df.noNA
C.territans.df.noNA$species<-"C_territans"
C.territans.df.noNA<-C.territans.df.noNA[,c(4,3,1,2)]
C.territans.df.noNA
C_territans<-C.territans.df.noNA

C.territans_africa<-C_territans[C_territans$cont=="1",]
C.territans_asia<-C_territans[C_territans$cont=="2",]
C.territans_australia<-C_territans[C_territans$cont=="3",]
C.territans_n.america<-C_territans[C_territans$cont=="4",]
C.territans_oceania<-C_territans[C_territans$cont=="5",]
C.territans_s.america<-C_territans[C_territans$cont=="6",]
C.territans_europe<-C_territans[C_territans$cont=="8",]

C_territans_continents<-rbind(C.territans_africa, C.territans_asia, C.territans_australia, C.territans_n.america, C.territans_oceania, C.territans_s.america, C.territans_europe)
C_territans_continents
#in a list
C_territans_continents.list<-list(C.territans_africa, C.territans_asia, C.territans_australia, C.territans_n.america, C.territans_oceania, C.territans_s.america, C.territans_europe)
C_territans_continents.list

#Culex thriambus
C.thriambus.df<-C.thriambus.data
C.thriambus.cont<-extract(continent, C.thriambus.df)
C.thriambus.cont
C.thriambus.df$cont<-C.thriambus.cont
C.thriambus.df.noNA<-C.thriambus.df[!is.na(C.thriambus.df$cont),]
C.thriambus.df.noNA
C.thriambus.df.noNA$species<-"C_thriambus"
C.thriambus.df.noNA<-C.thriambus.df.noNA[,c(4,3,1,2)]
C.thriambus.df.noNA
C_thriambus<-C.thriambus.df.noNA

C.thriambus_africa<-C_thriambus[C_thriambus$cont=="1",]
C.thriambus_asia<-C_thriambus[C_thriambus$cont=="2",]
C.thriambus_australia<-C_thriambus[C_thriambus$cont=="3",]
C.thriambus_n.america<-C_thriambus[C_thriambus$cont=="4",]
C.thriambus_oceania<-C_thriambus[C_thriambus$cont=="5",]
C.thriambus_s.america<-C_thriambus[C_thriambus$cont=="6",]
C.thriambus_europe<-C_thriambus[C_thriambus$cont=="8",]

C_thriambus_continents<-rbind(C.thriambus_africa, C.thriambus_asia, C.thriambus_australia, C.thriambus_n.america, C.thriambus_oceania, C.thriambus_s.america, C.thriambus_europe)
C_thriambus_continents
#in a list
C_thriambus_continents.list<-list(C.thriambus_africa, C.thriambus_asia, C.thriambus_australia, C.thriambus_n.america, C.thriambus_oceania, C.thriambus_s.america, C.thriambus_europe)
C_thriambus_continents.list

#Culiseta incidens
Cu.incidens.df<-Cu.incidens.data
Cu.incidens.cont<-extract(continent, Cu.incidens.df)
Cu.incidens.cont
Cu.incidens.df$cont<-Cu.incidens.cont
Cu.incidens.df.noNA<-Cu.incidens.df[!is.na(Cu.incidens.df$cont),]
Cu.incidens.df.noNA
Cu.incidens.df.noNA$species<-"Cu_incidens"
Cu.incidens.df.noNA<-Cu.incidens.df.noNA[,c(4,3,1,2)]
Cu.incidens.df.noNA
Cu_incidens<-Cu.incidens.df.noNA

Cu.incidens_africa<-Cu_incidens[Cu_incidens$cont=="1",]
Cu.incidens_asia<-Cu_incidens[Cu_incidens$cont=="2",]
Cu.incidens_australia<-Cu_incidens[Cu_incidens$cont=="3",]
Cu.incidens_n.america<-Cu_incidens[Cu_incidens$cont=="4",]
Cu.incidens_oceania<-Cu_incidens[Cu_incidens$cont=="5",]
Cu.incidens_s.america<-Cu_incidens[Cu_incidens$cont=="6",]
Cu.incidens_europe<-Cu_incidens[Cu_incidens$cont=="8",]

Cu_incidens_continents<-rbind(Cu.incidens_africa, Cu.incidens_asia, Cu.incidens_australia, Cu.incidens_n.america, Cu.incidens_oceania, Cu.incidens_s.america, Cu.incidens_europe)
Cu_incidens_continents
#in a list
Cu_incidens_continents.list<-list(Cu.incidens_africa, Cu.incidens_asia, Cu.incidens_australia, Cu.incidens_n.america, Cu.incidens_oceania, Cu.incidens_s.america, Cu.incidens_europe)
Cu_incidens_continents.list

#Culiseta impatiens
Cu.impatiens.df<-Cu.impatiens.data
Cu.impatiens.cont<-extract(continent, Cu.impatiens.df)
Cu.impatiens.cont
Cu.impatiens.df$cont<-Cu.impatiens.cont
Cu.impatiens.df.noNA<-Cu.impatiens.df[!is.na(Cu.impatiens.df$cont),]
Cu.impatiens.df.noNA
Cu.impatiens.df.noNA$species<-"Cu_impatiens"
Cu.impatiens.df.noNA<-Cu.impatiens.df.noNA[,c(4,3,1,2)]
Cu.impatiens.df.noNA
Cu_impatiens<-Cu.impatiens.df.noNA

Cu.impatiens_africa<-Cu_impatiens[Cu_impatiens$cont=="1",]
Cu.impatiens_asia<-Cu_impatiens[Cu_impatiens$cont=="2",]
Cu.impatiens_australia<-Cu_impatiens[Cu_impatiens$cont=="3",]
Cu.impatiens_n.america<-Cu_impatiens[Cu_impatiens$cont=="4",]
Cu.impatiens_oceania<-Cu_impatiens[Cu_impatiens$cont=="5",]
Cu.impatiens_s.america<-Cu_impatiens[Cu_impatiens$cont=="6",]
Cu.impatiens_europe<-Cu_impatiens[Cu_impatiens$cont=="8",]

Cu_impatiens_continents<-rbind(Cu.impatiens_africa, Cu.impatiens_asia, Cu.impatiens_australia, Cu.impatiens_n.america, Cu.impatiens_oceania, Cu.impatiens_s.america, Cu.impatiens_europe)
Cu_impatiens_continents
#in a list
Cu_impatiens_continents.list<-list(Cu.impatiens_africa, Cu.impatiens_asia, Cu.impatiens_australia, Cu.impatiens_n.america, Cu.impatiens_oceania, Cu.impatiens_s.america, Cu.impatiens_europe)
Cu_impatiens_continents.list

#Culiseta inornata
Cu.inornata.df<-Cu.inornata.data
Cu.inornata.cont<-extract(continent, Cu.inornata.df)
Cu.inornata.cont
Cu.inornata.df$cont<-Cu.inornata.cont
Cu.inornata.df.noNA<-Cu.inornata.df[!is.na(Cu.inornata.df$cont),]
Cu.inornata.df.noNA
Cu.inornata.df.noNA$species<-"Cu_inornata"
Cu.inornata.df.noNA<-Cu.inornata.df.noNA[,c(4,3,1,2)]
Cu.inornata.df.noNA
Cu_inornata<-Cu.inornata.df.noNA

Cu.inornata_africa<-Cu_inornata[Cu_inornata$cont=="1",]
Cu.inornata_asia<-Cu_inornata[Cu_inornata$cont=="2",]
Cu.inornata_australia<-Cu_inornata[Cu_inornata$cont=="3",]
Cu.inornata_n.america<-Cu_inornata[Cu_inornata$cont=="4",]
Cu.inornata_oceania<-Cu_inornata[Cu_inornata$cont=="5",]
Cu.inornata_s.america<-Cu_inornata[Cu_inornata$cont=="6",]
Cu.inornata_europe<-Cu_inornata[Cu_inornata$cont=="8",]

Cu_inornata_continents<-rbind(Cu.inornata_africa, Cu.inornata_asia, Cu.inornata_australia, Cu.inornata_n.america, Cu.inornata_oceania, Cu.inornata_s.america, Cu.inornata_europe)
Cu_inornata_continents
#in a list
Cu_inornata_continents.list<-list(Cu.inornata_africa, Cu.inornata_asia, Cu.inornata_australia, Cu.inornata_n.america, Cu.inornata_oceania, Cu.inornata_s.america, Cu.inornata_europe)
Cu_inornata_continents.list

#Culiseta melanura
Cu.melanura.df<-Cu.melanura.data
Cu.melanura.cont<-extract(continent, Cu.melanura.df)
Cu.melanura.cont
Cu.melanura.df$cont<-Cu.melanura.cont
Cu.melanura.df.noNA<-Cu.melanura.df[!is.na(Cu.melanura.df$cont),]
Cu.melanura.df.noNA
Cu.melanura.df.noNA$species<-"Cu_melanura"
Cu.melanura.df.noNA<-Cu.melanura.df.noNA[,c(4,3,1,2)]
Cu.melanura.df.noNA
Cu_melanura<-Cu.melanura.df.noNA

Cu.melanura_africa<-Cu_melanura[Cu_melanura$cont=="1",]
Cu.melanura_asia<-Cu_melanura[Cu_melanura$cont=="2",]
Cu.melanura_australia<-Cu_melanura[Cu_melanura$cont=="3",]
Cu.melanura_n.america<-Cu_melanura[Cu_melanura$cont=="4",]
Cu.melanura_oceania<-Cu_melanura[Cu_melanura$cont=="5",]
Cu.melanura_s.america<-Cu_melanura[Cu_melanura$cont=="6",]
Cu.melanura_europe<-Cu_melanura[Cu_melanura$cont=="8",]

Cu_melanura_continents<-rbind(Cu.melanura_africa, Cu.melanura_asia, Cu.melanura_australia, Cu.melanura_n.america, Cu.melanura_oceania, Cu.melanura_s.america, Cu.melanura_europe)
Cu_melanura_continents
#in a list
Cu_melanura_continents.list<-list(Cu.melanura_africa, Cu.melanura_asia, Cu.melanura_australia, Cu.melanura_n.america, Cu.melanura_oceania, Cu.melanura_s.america, Cu.melanura_europe)
Cu_melanura_continents.list

#Culiseta morsitans
Cu.morsitans.df<-Cu.morsitans.data
Cu.morsitans.cont<-extract(continent, Cu.morsitans.df)
Cu.morsitans.cont
Cu.morsitans.df$cont<-Cu.morsitans.cont
Cu.morsitans.df.noNA<-Cu.morsitans.df[!is.na(Cu.morsitans.df$cont),]
Cu.morsitans.df.noNA
Cu.morsitans.df.noNA$species<-"Cu_morsitans"
Cu.morsitans.df.noNA<-Cu.morsitans.df.noNA[,c(4,3,1,2)]
Cu.morsitans.df.noNA
Cu_morsitans<-Cu.morsitans.df.noNA

Cu.morsitans_africa<-Cu_morsitans[Cu_morsitans$cont=="1",]
Cu.morsitans_asia<-Cu_morsitans[Cu_morsitans$cont=="2",]
Cu.morsitans_australia<-Cu_morsitans[Cu_morsitans$cont=="3",]
Cu.morsitans_n.america<-Cu_morsitans[Cu_morsitans$cont=="4",]
Cu.morsitans_oceania<-Cu_morsitans[Cu_morsitans$cont=="5",]
Cu.morsitans_s.america<-Cu_morsitans[Cu_morsitans$cont=="6",]
Cu.morsitans_europe<-Cu_morsitans[Cu_morsitans$cont=="8",]

Cu_morsitans_continents<-rbind(Cu.morsitans_africa, Cu.morsitans_asia, Cu.morsitans_australia, Cu.morsitans_n.america, Cu.morsitans_oceania, Cu.morsitans_s.america, Cu.morsitans_europe)
Cu_morsitans_continents
#in a list
Cu_morsitans_continents.list<-list(Cu.morsitans_africa, Cu.morsitans_asia, Cu.morsitans_australia, Cu.morsitans_n.america, Cu.morsitans_oceania, Cu.morsitans_s.america, Cu.morsitans_europe)
Cu_morsitans_continents.list

#Culiseta particeps
Cu.particeps.df<-Cu.particeps.data
Cu.particeps.cont<-extract(continent, Cu.particeps.df)
Cu.particeps.cont
Cu.particeps.df$cont<-Cu.particeps.cont
Cu.particeps.df.noNA<-Cu.particeps.df[!is.na(Cu.particeps.df$cont),]
Cu.particeps.df.noNA
Cu.particeps.df.noNA$species<-"Cu_particeps"
Cu.particeps.df.noNA<-Cu.particeps.df.noNA[,c(4,3,1,2)]
Cu.particeps.df.noNA
Cu_particeps<-Cu.particeps.df.noNA

Cu.particeps_africa<-Cu_particeps[Cu_particeps$cont=="1",]
Cu.particeps_asia<-Cu_particeps[Cu_particeps$cont=="2",]
Cu.particeps_australia<-Cu_particeps[Cu_particeps$cont=="3",]
Cu.particeps_n.america<-Cu_particeps[Cu_particeps$cont=="4",]
Cu.particeps_oceania<-Cu_particeps[Cu_particeps$cont=="5",]
Cu.particeps_s.america<-Cu_particeps[Cu_particeps$cont=="6",]
Cu.particeps_europe<-Cu_particeps[Cu_particeps$cont=="8",]

Cu_particeps_continents<-rbind(Cu.particeps_africa, Cu.particeps_asia, Cu.particeps_australia, Cu.particeps_n.america, Cu.particeps_oceania, Cu.particeps_s.america, Cu.particeps_europe)
Cu_particeps_continents
#in a list
Cu_particeps_continents.list<-list(Cu.particeps_africa, Cu.particeps_asia, Cu.particeps_australia, Cu.particeps_n.america, Cu.particeps_oceania, Cu.particeps_s.america, Cu.particeps_europe)
Cu_particeps_continents.list

#Mansonia titillans
M.titillans.df<-M.titillans.data
M.titillans.cont<-extract(continent, M.titillans.df)
M.titillans.cont
M.titillans.df$cont<-M.titillans.cont
M.titillans.df.noNA<-M.titillans.df[!is.na(M.titillans.df$cont),]
M.titillans.df.noNA
M.titillans.df.noNA$species<-"M_titillans"
M.titillans.df.noNA<-M.titillans.df.noNA[,c(4,3,1,2)]
M.titillans.df.noNA
M_titillans<-M.titillans.df.noNA

M.titillans_africa<-M_titillans[M_titillans$cont=="1",]
M.titillans_asia<-M_titillans[M_titillans$cont=="2",]
M.titillans_australia<-M_titillans[M_titillans$cont=="3",]
M.titillans_n.america<-M_titillans[M_titillans$cont=="4",]
M.titillans_oceania<-M_titillans[M_titillans$cont=="5",]
M.titillans_s.america<-M_titillans[M_titillans$cont=="6",]
M.titillans_europe<-M_titillans[M_titillans$cont=="8",]

M_titillans_continents<-rbind(M.titillans_africa, M.titillans_asia, M.titillans_australia, M.titillans_n.america, M.titillans_oceania, M.titillans_s.america, M.titillans_europe)
M_titillans_continents
#in a list
M_titillans_continents.list<-list(M.titillans_africa, M.titillans_asia, M.titillans_australia, M.titillans_n.america, M.titillans_oceania, M.titillans_s.america, M.titillans_europe)
M_titillans_continents.list

#Orthopodomyia signifera
O.signifera.df<-O.signifera.data
O.signifera.cont<-extract(continent, O.signifera.df)
O.signifera.cont
O.signifera.df$cont<-O.signifera.cont
O.signifera.df.noNA<-O.signifera.df[!is.na(O.signifera.df$cont),]
O.signifera.df.noNA
O.signifera.df.noNA$species<-"O_signifera"
O.signifera.df.noNA<-O.signifera.df.noNA[,c(4,3,1,2)]
O.signifera.df.noNA
O_signifera<-O.signifera.df.noNA

O.signifera_africa<-O_signifera[O_signifera$cont=="1",]
O.signifera_asia<-O_signifera[O_signifera$cont=="2",]
O.signifera_australia<-O_signifera[O_signifera$cont=="3",]
O.signifera_n.america<-O_signifera[O_signifera$cont=="4",]
O.signifera_oceania<-O_signifera[O_signifera$cont=="5",]
O.signifera_s.america<-O_signifera[O_signifera$cont=="6",]
O.signifera_europe<-O_signifera[O_signifera$cont=="8",]

O_signifera_continents<-rbind(O.signifera_africa, O.signifera_asia, O.signifera_australia, O.signifera_n.america, O.signifera_oceania, O.signifera_s.america, O.signifera_europe)
O_signifera_continents
#in a list
O_signifera_continents.list<-list(O.signifera_africa, O.signifera_asia, O.signifera_australia, O.signifera_n.america, O.signifera_oceania, O.signifera_s.america, O.signifera_europe)
O_signifera_continents.list

#Psorophora ciliata
P.ciliata.df<-P.ciliata.data
P.ciliata.cont<-extract(continent, P.ciliata.df)
P.ciliata.cont
P.ciliata.df$cont<-P.ciliata.cont
P.ciliata.df.noNA<-P.ciliata.df[!is.na(P.ciliata.df$cont),]
P.ciliata.df.noNA
P.ciliata.df.noNA$species<-"P_ciliata"
P.ciliata.df.noNA<-P.ciliata.df.noNA[,c(4,3,1,2)]
P.ciliata.df.noNA
P_ciliata<-P.ciliata.df.noNA

P.ciliata_africa<-P_ciliata[P_ciliata$cont=="1",]
P.ciliata_asia<-P_ciliata[P_ciliata$cont=="2",]
P.ciliata_australia<-P_ciliata[P_ciliata$cont=="3",]
P.ciliata_n.america<-P_ciliata[P_ciliata$cont=="4",]
P.ciliata_oceania<-P_ciliata[P_ciliata$cont=="5",]
P.ciliata_s.america<-P_ciliata[P_ciliata$cont=="6",]
P.ciliata_europe<-P_ciliata[P_ciliata$cont=="8",]

P_ciliata_continents<-rbind(P.ciliata_africa, P.ciliata_asia, P.ciliata_australia, P.ciliata_n.america, P.ciliata_oceania, P.ciliata_s.america, P.ciliata_europe)
P_ciliata_continents
#in a list
P_ciliata_continents.list<-list(P.ciliata_africa, P.ciliata_asia, P.ciliata_australia, P.ciliata_n.america, P.ciliata_oceania, P.ciliata_s.america, P.ciliata_europe)
P_ciliata_continents.list

#Psorophora ciliata
P.ciliata.df<-P.ciliata.data
P.ciliata.cont<-extract(continent, P.ciliata.df)
P.ciliata.cont
P.ciliata.df$cont<-P.ciliata.cont
P.ciliata.df.noNA<-P.ciliata.df[!is.na(P.ciliata.df$cont),]
P.ciliata.df.noNA
P.ciliata.df.noNA$species<-"P_ciliata"
P.ciliata.df.noNA<-P.ciliata.df.noNA[,c(4,3,1,2)]
P.ciliata.df.noNA
P_ciliata<-P.ciliata.df.noNA

P.ciliata_africa<-P_ciliata[P_ciliata$cont=="1",]
P.ciliata_asia<-P_ciliata[P_ciliata$cont=="2",]
P.ciliata_australia<-P_ciliata[P_ciliata$cont=="3",]
P.ciliata_n.america<-P_ciliata[P_ciliata$cont=="4",]
P.ciliata_oceania<-P_ciliata[P_ciliata$cont=="5",]
P.ciliata_s.america<-P_ciliata[P_ciliata$cont=="6",]
P.ciliata_europe<-P_ciliata[P_ciliata$cont=="8",]

P_ciliata_continents<-rbind(P.ciliata_africa, P.ciliata_asia, P.ciliata_australia, P.ciliata_n.america, P.ciliata_oceania, P.ciliata_s.america, P.ciliata_europe)
P_ciliata_continents
#in a list
P_ciliata_continents.list<-list(P.ciliata_africa, P.ciliata_asia, P.ciliata_australia, P.ciliata_n.america, P.ciliata_oceania, P.ciliata_s.america, P.ciliata_europe)
P_ciliata_continents.list

#Psorophora columbiae
P.columbiae.df<-P.columbiae.data
P.columbiae.cont<-extract(continent, P.columbiae.df)
P.columbiae.cont
P.columbiae.df$cont<-P.columbiae.cont
P.columbiae.df.noNA<-P.columbiae.df[!is.na(P.columbiae.df$cont),]
P.columbiae.df.noNA
P.columbiae.df.noNA$species<-"P_columbiae"
P.columbiae.df.noNA<-P.columbiae.df.noNA[,c(4,3,1,2)]
P.columbiae.df.noNA
P_columbiae<-P.columbiae.df.noNA

P.columbiae_africa<-P_columbiae[P_columbiae$cont=="1",]
P.columbiae_asia<-P_columbiae[P_columbiae$cont=="2",]
P.columbiae_australia<-P_columbiae[P_columbiae$cont=="3",]
P.columbiae_n.america<-P_columbiae[P_columbiae$cont=="4",]
P.columbiae_oceania<-P_columbiae[P_columbiae$cont=="5",]
P.columbiae_s.america<-P_columbiae[P_columbiae$cont=="6",]
P.columbiae_europe<-P_columbiae[P_columbiae$cont=="8",]

P_columbiae_continents<-rbind(P.columbiae_africa, P.columbiae_asia, P.columbiae_australia, P.columbiae_n.america, P.columbiae_oceania, P.columbiae_s.america, P.columbiae_europe)
P_columbiae_continents
#in a list
P_columbiae_continents.list<-list(P.columbiae_africa, P.columbiae_asia, P.columbiae_australia, P.columbiae_n.america, P.columbiae_oceania, P.columbiae_s.america, P.columbiae_europe)
P_columbiae_continents.list

#Psorophora ferox
P.ferox.df<-P.ferox.data
P.ferox.cont<-extract(continent, P.ferox.df)
P.ferox.cont
P.ferox.df$cont<-P.ferox.cont
P.ferox.df.noNA<-P.ferox.df[!is.na(P.ferox.df$cont),]
P.ferox.df.noNA
P.ferox.df.noNA$species<-"P_ferox"
P.ferox.df.noNA<-P.ferox.df.noNA[,c(4,3,1,2)]
P.ferox.df.noNA
P_ferox<-P.ferox.df.noNA

P.ferox_africa<-P_ferox[P_ferox$cont=="1",]
P.ferox_asia<-P_ferox[P_ferox$cont=="2",]
P.ferox_australia<-P_ferox[P_ferox$cont=="3",]
P.ferox_n.america<-P_ferox[P_ferox$cont=="4",]
P.ferox_oceania<-P_ferox[P_ferox$cont=="5",]
P.ferox_s.america<-P_ferox[P_ferox$cont=="6",]
P.ferox_europe<-P_ferox[P_ferox$cont=="8",]

P_ferox_continents<-rbind(P.ferox_africa, P.ferox_asia, P.ferox_australia, P.ferox_n.america, P.ferox_oceania, P.ferox_s.america, P.ferox_europe)
P_ferox_continents
#in a list
P_ferox_continents.list<-list(P.ferox_africa, P.ferox_asia, P.ferox_australia, P.ferox_n.america, P.ferox_oceania, P.ferox_s.america, P.ferox_europe)
P_ferox_continents.list

#Psorophora howardii
P.howardii.df<-P.howardii.data
P.howardii.cont<-extract(continent, P.howardii.df)
P.howardii.cont
P.howardii.df$cont<-P.howardii.cont
P.howardii.df.noNA<-P.howardii.df[!is.na(P.howardii.df$cont),]
P.howardii.df.noNA
P.howardii.df.noNA$species<-"P_howardii"
P.howardii.df.noNA<-P.howardii.df.noNA[,c(4,3,1,2)]
P.howardii.df.noNA
P_howardii<-P.howardii.df.noNA

P.howardii_africa<-P_howardii[P_howardii$cont=="1",]
P.howardii_asia<-P_howardii[P_howardii$cont=="2",]
P.howardii_australia<-P_howardii[P_howardii$cont=="3",]
P.howardii_n.america<-P_howardii[P_howardii$cont=="4",]
P.howardii_oceania<-P_howardii[P_howardii$cont=="5",]
P.howardii_s.america<-P_howardii[P_howardii$cont=="6",]
P.howardii_europe<-P_howardii[P_howardii$cont=="8",]

P_howardii_continents<-rbind(P.howardii_africa, P.howardii_asia, P.howardii_australia, P.howardii_n.america, P.howardii_oceania, P.howardii_s.america, P.howardii_europe)
P_howardii_continents
#in a list
P_howardii_continents.list<-list(P.howardii_africa, P.howardii_asia, P.howardii_australia, P.howardii_n.america, P.howardii_oceania, P.howardii_s.america, P.howardii_europe)
P_howardii_continents.list

#Uranotaenia sapphirina
U.sapphirina.df<-U.sapphirina.data
U.sapphirina.cont<-extract(continent, U.sapphirina.df)
U.sapphirina.cont
U.sapphirina.df$cont<-U.sapphirina.cont
U.sapphirina.df.noNA<-U.sapphirina.df[!is.na(U.sapphirina.df$cont),]
U.sapphirina.df.noNA
U.sapphirina.df.noNA$species<-"U_sapphirina"
U.sapphirina.df.noNA<-U.sapphirina.df.noNA[,c(4,3,1,2)]
U.sapphirina.df.noNA
U_sapphirina<-U.sapphirina.df.noNA

U.sapphirina_africa<-U_sapphirina[U_sapphirina$cont=="1",]
U.sapphirina_asia<-U_sapphirina[U_sapphirina$cont=="2",]
U.sapphirina_australia<-U_sapphirina[U_sapphirina$cont=="3",]
U.sapphirina_n.america<-U_sapphirina[U_sapphirina$cont=="4",]
U.sapphirina_oceania<-U_sapphirina[U_sapphirina$cont=="5",]
U.sapphirina_s.america<-U_sapphirina[U_sapphirina$cont=="6",]
U.sapphirina_europe<-U_sapphirina[U_sapphirina$cont=="8",]

U_sapphirina_continents<-rbind(U.sapphirina_africa, U.sapphirina_asia, U.sapphirina_australia, U.sapphirina_n.america, U.sapphirina_oceania, U.sapphirina_s.america, U.sapphirina_europe)
U_sapphirina_continents
#in a list
U_sapphirina_continents.list<-list(U.sapphirina_africa, U.sapphirina_asia, U.sapphirina_australia, U.sapphirina_n.america, U.sapphirina_oceania, U.sapphirina_s.america, U.sapphirina_europe)
U_sapphirina_continents.list

#Deinocerties Cancer
D.cancer.df<-D.cancer.data
D.cancer.cont<-extract(continent, D.cancer.df)
D.cancer.cont
D.cancer.df$cont<-D.cancer.cont
D.cancer.df.noNA<-D.cancer.df[!is.na(D.cancer.df$cont),]
D.cancer.df.noNA
D.cancer.df.noNA$species<-"D_cancer"
D.cancer.df.noNA<-D.cancer.df.noNA[,c(4,3,1,2)]
D.cancer.df.noNA
D_cancer<-D.cancer.df.noNA

D.cancer_africa<-D_cancer[D_cancer$cont=="1",]
D.cancer_asia<-D_cancer[D_cancer$cont=="2",]
D.cancer_australia<-D_cancer[D_cancer$cont=="3",]
D.cancer_n.america<-D_cancer[D_cancer$cont=="4",]
D.cancer_oceania<-D_cancer[D_cancer$cont=="5",]
D.cancer_s.america<-D_cancer[D_cancer$cont=="6",]
D.cancer_europe<-D_cancer[D_cancer$cont=="8",]

D_cancer_continents<-rbind(D.cancer_africa, D.cancer_asia, D.cancer_australia, D.cancer_n.america, D.cancer_oceania, D.cancer_s.america, D.cancer_europe)
D_cancer_continents
#in a list
D_cancer_continents.list<-list(D.cancer_africa, D.cancer_asia, D.cancer_australia, D.cancer_n.america, D.cancer_oceania, D.cancer_s.america, D.cancer_europe)
D_cancer_continents.list

#####################################

#WNV
WNV<-rbind(A_aegypti_continents, A_albopictus_continents, A_atlanticus_continents, A_atropalpus_continents, A_canadensis_continents, A_cantator_continents, A_cinereus_continents, A_condolescens_continents, A_dorsalis_continents, A_dupreei_continents, A_fitchii_continents, A_fulvus_continents, A_grossbecki_continents, A_infirmatus_continents,A_japonicus_continents, A_melanimon_continents, A_nigromaculis_continents, A_provocans_continents, A_sollicitans_continents, A_squamiger_continents, A_sticticus_continents, A_stimulans_continents, A_triseriatus_continents, A_trivittatus_continents, A_vexans_continents, An_atropos_continents, An_barberi_continents, An_bradleyi_continents, An_franciscanus_continents, An_freeborni_continents, An_punctipennis_continents, An_quadrimaculatus_continents, An_walkeri_continents, Co_perturbans_continents, C_apicalis_continents, C_bahamensis_continents, C_coronator_continents, C_erraticus_continents, C_erythrothorax_continents, C_nigripalpus_continents, C_pipiens_continents, C_quinquefasciatus_continents, C_restuans_continents, C_salinarius_continents, C_stigmatosoma_continents, C_tarsalis_continents, C_territans_continents, C_thriambus_continents, Cu_incidens_continents, Cu_impatiens_continents, Cu_inornata_continents, Cu_melanura_continents, Cu_morsitans_continents, Cu_particeps_continents, M_titillans_continents, O_signifera_continents, P_ciliata_continents, P_columbiae_continents, P_ferox_continents, P_howardii_continents, U_sapphirina_continents, D_cancer_continents)
WNV.list<-list(A_aegypti_continents, A_albopictus_continents, A_atlanticus_continents, A_atropalpus_continents, A_canadensis_continents, A_cantator_continents, A_cinereus_continents, A_condolescens_continents, A_dorsalis_continents, A_dupreei_continents, A_fitchii_continents, A_fulvus_continents, A_grossbecki_continents, A_infirmatus_continents,A_japonicus_continents, A_melanimon_continents, A_nigromaculis_continents, A_provocans_continents, A_sollicitans_continents, A_squamiger_continents, A_sticticus_continents, A_stimulans_continents, A_triseriatus_continents, A_trivittatus_continents, A_vexans_continents, An_atropos_continents, An_barberi_continents, An_bradleyi_continents, An_franciscanus_continents, An_freeborni_continents, An_punctipennis_continents, An_quadrimaculatus_continents, An_walkeri_continents, Co_perturbans_continents, C_apicalis_continents, C_bahamensis_continents, C_coronator_continents, C_erraticus_continents, C_erythrothorax_continents, C_nigripalpus_continents, C_pipiens_continents, C_quinquefasciatus_continents, C_restuans_continents, C_salinarius_continents, C_stigmatosoma_continents, C_tarsalis_continents, C_territans_continents, C_thriambus_continents, Cu_incidens_continents, Cu_impatiens_continents, Cu_inornata_continents, Cu_melanura_continents, Cu_morsitans_continents, Cu_particeps_continents, M_titillans_continents, O_signifera_continents, P_ciliata_continents, P_columbiae_continents, P_ferox_continents, P_howardii_continents, U_sapphirina_continents, D_cancer_continents)
names(WNV.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")

#africa
WNV.africa<-rbind(A.aegypti_africa, A.albopictus_africa, A.atlanticus_africa, A.atropalpus_africa, A.canadensis_africa, A.cantator_africa, A.cinereus_africa, A.condolescens_africa, A.dorsalis_africa, A.dupreei_africa, A.fitchii_africa, A.fulvus_africa, A.grossbecki_africa, A.infirmatus_africa,A.japonicus_africa, A.melanimon_africa, A.nigromaculis_africa, A.provocans_africa, A.sollicitans_africa, A.squamiger_africa, A.sticticus_africa, A.stimulans_africa, A.triseriatus_africa, A.trivittatus_africa, A.vexans_africa, An.atropos_africa, An.barberi_africa, An.bradleyi_africa, An.franciscanus_africa, An.freeborni_africa, An.punctipennis_africa, An.quadrimaculatus_africa, An.walkeri_africa, Co.perturbans_africa, C.apicalis_africa, C.bahamensis_africa, C.coronator_africa, C.erraticus_africa, C.erythrothorax_africa, C.nigripalpus_africa, C.pipiens_africa, C.quinquefasciatus_africa, C.restuans_africa, C.salinarius_africa, C.stigmatosoma_africa, C.tarsalis_africa, C.territans_africa, C.thriambus_africa, Cu.incidens_africa, Cu.impatiens_africa, Cu.inornata_africa, Cu.melanura_africa, Cu.morsitans_africa, Cu.particeps_africa, M.titillans_africa, O.signifera_africa, P.ciliata_africa, P.columbiae_africa, P.ferox_africa, P.howardii_africa, U.sapphirina_africa, D.cancer_africa)
WNV.africa.list<-list(A.aegypti_africa, A.albopictus_africa, A.atlanticus_africa, A.atropalpus_africa, A.canadensis_africa, A.cantator_africa, A.cinereus_africa, A.condolescens_africa, A.dorsalis_africa, A.dupreei_africa, A.fitchii_africa, A.fulvus_africa, A.grossbecki_africa, A.infirmatus_africa,A.japonicus_africa, A.melanimon_africa, A.nigromaculis_africa, A.provocans_africa, A.sollicitans_africa, A.squamiger_africa, A.sticticus_africa, A.stimulans_africa, A.triseriatus_africa, A.trivittatus_africa, A.vexans_africa, An.atropos_africa, An.barberi_africa, An.bradleyi_africa, An.franciscanus_africa, An.freeborni_africa, An.punctipennis_africa, An.quadrimaculatus_africa, An.walkeri_africa, Co.perturbans_africa, C.apicalis_africa, C.bahamensis_africa, C.coronator_africa, C.erraticus_africa, C.erythrothorax_africa, C.nigripalpus_africa, C.pipiens_africa, C.quinquefasciatus_africa, C.restuans_africa, C.salinarius_africa, C.stigmatosoma_africa, C.tarsalis_africa, C.territans_africa, C.thriambus_africa, Cu.incidens_africa, Cu.impatiens_africa, Cu.inornata_africa, Cu.melanura_africa, Cu.morsitans_africa, Cu.particeps_africa, M.titillans_africa, O.signifera_africa, P.ciliata_africa, P.columbiae_africa, P.ferox_africa, P.howardii_africa, U.sapphirina_africa, D.cancer_africa)
names(WNV.africa.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
##########
WNV.africa$disease<-"WNV"
###########
#Asia
WNV.asia<-rbind(A.aegypti_asia, A.albopictus_asia, A.atlanticus_asia, A.atropalpus_asia, A.canadensis_asia, A.cantator_asia, A.cinereus_asia, A.condolescens_asia, A.dorsalis_asia, A.dupreei_asia, A.fitchii_asia, A.fulvus_asia, A.grossbecki_asia, A.infirmatus_asia,A.japonicus_asia, A.melanimon_asia, A.nigromaculis_asia, A.provocans_asia, A.sollicitans_asia, A.squamiger_asia, A.sticticus_asia, A.stimulans_asia, A.triseriatus_asia, A.trivittatus_asia, A.vexans_asia, An.atropos_asia, An.barberi_asia, An.bradleyi_asia, An.franciscanus_asia, An.freeborni_asia, An.punctipennis_asia, An.quadrimaculatus_asia, An.walkeri_asia, Co.perturbans_asia, C.apicalis_asia, C.bahamensis_asia, C.coronator_asia, C.erraticus_asia, C.erythrothorax_asia, C.nigripalpus_asia, C.pipiens_asia, C.quinquefasciatus_asia, C.restuans_asia, C.salinarius_asia, C.stigmatosoma_asia, C.tarsalis_asia, C.territans_asia, C.thriambus_asia, Cu.incidens_asia, Cu.impatiens_asia, Cu.inornata_asia, Cu.melanura_asia, Cu.morsitans_asia, Cu.particeps_asia, M.titillans_asia, O.signifera_asia, P.ciliata_asia, P.columbiae_asia, P.ferox_asia, P.howardii_asia, U.sapphirina_asia, D.cancer_asia)
WNV.asia.list<-list(A.aegypti_asia, A.albopictus_asia, A.atlanticus_asia, A.atropalpus_asia, A.canadensis_asia, A.cantator_asia, A.cinereus_asia, A.condolescens_asia, A.dorsalis_asia, A.dupreei_asia, A.fitchii_asia, A.fulvus_asia, A.grossbecki_asia, A.infirmatus_asia,A.japonicus_asia, A.melanimon_asia, A.nigromaculis_asia, A.provocans_asia, A.sollicitans_asia, A.squamiger_asia, A.sticticus_asia, A.stimulans_asia, A.triseriatus_asia, A.trivittatus_asia, A.vexans_asia, An.atropos_asia, An.barberi_asia, An.bradleyi_asia, An.franciscanus_asia, An.freeborni_asia, An.punctipennis_asia, An.quadrimaculatus_asia, An.walkeri_asia, Co.perturbans_asia, C.apicalis_asia, C.bahamensis_asia, C.coronator_asia, C.erraticus_asia, C.erythrothorax_asia, C.nigripalpus_asia, C.pipiens_asia, C.quinquefasciatus_asia, C.restuans_asia, C.salinarius_asia, C.stigmatosoma_asia, C.tarsalis_asia, C.territans_asia, C.thriambus_asia, Cu.incidens_asia, Cu.impatiens_asia, Cu.inornata_asia, Cu.melanura_asia, Cu.morsitans_asia, Cu.particeps_asia, M.titillans_asia, O.signifera_asia, P.ciliata_asia, P.columbiae_asia, P.ferox_asia, P.howardii_asia, U.sapphirina_asia, D.cancer_asia)
names(WNV.asia.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.asia$disease<-"WNV"

#Australia
WNV.Australia<-rbind(A.aegypti_australia, A.albopictus_australia, A.atlanticus_australia, A.atropalpus_australia, A.canadensis_australia, A.cantator_australia, A.cinereus_australia, A.condolescens_australia, A.dorsalis_australia, A.dupreei_australia, A.fitchii_australia, A.fulvus_australia, A.grossbecki_australia, A.infirmatus_australia,A.japonicus_australia, A.melanimon_australia, A.nigromaculis_australia, A.provocans_australia, A.sollicitans_australia, A.squamiger_australia, A.sticticus_australia, A.stimulans_australia, A.triseriatus_australia, A.trivittatus_australia, A.vexans_australia, An.atropos_australia, An.barberi_australia, An.bradleyi_australia, An.franciscanus_australia, An.freeborni_australia, An.punctipennis_australia, An.quadrimaculatus_australia, An.walkeri_australia, Co.perturbans_australia, C.apicalis_australia, C.bahamensis_australia, C.coronator_australia, C.erraticus_australia, C.erythrothorax_australia, C.nigripalpus_australia, C.pipiens_australia, C.quinquefasciatus_australia, C.restuans_australia, C.salinarius_australia, C.stigmatosoma_australia, C.tarsalis_australia, C.territans_australia, C.thriambus_australia, Cu.incidens_australia, Cu.impatiens_australia, Cu.inornata_australia, Cu.melanura_australia, Cu.morsitans_australia, Cu.particeps_australia, M.titillans_australia, O.signifera_australia, P.ciliata_australia, P.columbiae_australia, P.ferox_australia, P.howardii_australia, U.sapphirina_australia, D.cancer_australia)
WNV.Australia.list<-list(A.aegypti_australia, A.albopictus_australia, A.atlanticus_australia, A.atropalpus_australia, A.canadensis_australia, A.cantator_australia, A.cinereus_australia, A.condolescens_australia, A.dorsalis_australia, A.dupreei_australia, A.fitchii_australia, A.fulvus_australia, A.grossbecki_australia, A.infirmatus_australia,A.japonicus_australia, A.melanimon_australia, A.nigromaculis_australia, A.provocans_australia, A.sollicitans_australia, A.squamiger_australia, A.sticticus_australia, A.stimulans_australia, A.triseriatus_australia, A.trivittatus_australia, A.vexans_australia, An.atropos_australia, An.barberi_australia, An.bradleyi_australia, An.franciscanus_australia, An.freeborni_australia, An.punctipennis_australia, An.quadrimaculatus_australia, An.walkeri_australia, Co.perturbans_australia, C.apicalis_australia, C.bahamensis_australia, C.coronator_australia, C.erraticus_australia, C.erythrothorax_australia, C.nigripalpus_australia, C.pipiens_australia, C.quinquefasciatus_australia, C.restuans_australia, C.salinarius_australia, C.stigmatosoma_australia, C.tarsalis_australia, C.territans_australia, C.thriambus_australia, Cu.incidens_australia, Cu.impatiens_australia, Cu.inornata_australia, Cu.melanura_australia, Cu.morsitans_australia, Cu.particeps_australia, M.titillans_australia, O.signifera_australia, P.ciliata_australia, P.columbiae_australia, P.ferox_australia, P.howardii_australia, U.sapphirina_australia, D.cancer_australia)
names(WNV.Australia.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.Australia$disease<-"WNV"

#N_America
WNV.N_America<-rbind(A.aegypti_n.america, A.albopictus_n.america, A.atlanticus_n.america, A.atropalpus_n.america, A.canadensis_n.america, A.cantator_n.america, A.cinereus_n.america, A.condolescens_n.america, A.dorsalis_n.america, A.dupreei_n.america, A.fitchii_n.america, A.fulvus_n.america, A.grossbecki_n.america, A.infirmatus_n.america,A.japonicus_n.america, A.melanimon_n.america, A.nigromaculis_n.america, A.provocans_n.america, A.sollicitans_n.america, A.squamiger_n.america, A.sticticus_n.america, A.stimulans_n.america, A.triseriatus_n.america, A.trivittatus_n.america, A.vexans_n.america, An.atropos_n.america, An.barberi_n.america, An.bradleyi_n.america, An.franciscanus_n.america, An.freeborni_n.america, An.punctipennis_n.america, An.quadrimaculatus_n.america, An.walkeri_n.america, Co.perturbans_n.america, C.apicalis_n.america, C.bahamensis_n.america, C.coronator_n.america, C.erraticus_n.america, C.erythrothorax_n.america, C.nigripalpus_n.america, C.pipiens_n.america, C.quinquefasciatus_n.america, C.restuans_n.america, C.salinarius_n.america, C.stigmatosoma_n.america, C.tarsalis_n.america, C.territans_n.america, C.thriambus_n.america, Cu.incidens_n.america, Cu.impatiens_n.america, Cu.inornata_n.america, Cu.melanura_n.america, Cu.morsitans_n.america, Cu.particeps_n.america, M.titillans_n.america, O.signifera_n.america, P.ciliata_n.america, P.columbiae_n.america, P.ferox_n.america, P.howardii_n.america, U.sapphirina_n.america, D.cancer_n.america)
WNV.N_America.list<-list(A.aegypti_n.america, A.albopictus_n.america, A.atlanticus_n.america, A.atropalpus_n.america, A.canadensis_n.america, A.cantator_n.america, A.cinereus_n.america, A.condolescens_n.america, A.dorsalis_n.america, A.dupreei_n.america, A.fitchii_n.america, A.fulvus_n.america, A.grossbecki_n.america, A.infirmatus_n.america,A.japonicus_n.america, A.melanimon_n.america, A.nigromaculis_n.america, A.provocans_n.america, A.sollicitans_n.america, A.squamiger_n.america, A.sticticus_n.america, A.stimulans_n.america, A.triseriatus_n.america, A.trivittatus_n.america, A.vexans_n.america, An.atropos_n.america, An.barberi_n.america, An.bradleyi_n.america, An.franciscanus_n.america, An.freeborni_n.america, An.punctipennis_n.america, An.quadrimaculatus_n.america, An.walkeri_n.america, Co.perturbans_n.america, C.apicalis_n.america, C.bahamensis_n.america, C.coronator_n.america, C.erraticus_n.america, C.erythrothorax_n.america, C.nigripalpus_n.america, C.pipiens_n.america, C.quinquefasciatus_n.america, C.restuans_n.america, C.salinarius_n.america, C.stigmatosoma_n.america, C.tarsalis_n.america, C.territans_n.america, C.thriambus_n.america, Cu.incidens_n.america, Cu.impatiens_n.america, Cu.inornata_n.america, Cu.melanura_n.america, Cu.morsitans_n.america, Cu.particeps_n.america, M.titillans_n.america, O.signifera_n.america, P.ciliata_n.america, P.columbiae_n.america, P.ferox_n.america, P.howardii_n.america, U.sapphirina_n.america, D.cancer_n.america)
names(WNV.N_America.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.N_America$disease<-"WNV"

#Oceania
WNV.Oceania<-rbind(A.aegypti_oceania, A.albopictus_oceania, A.atlanticus_oceania, A.atropalpus_oceania, A.canadensis_oceania, A.cantator_oceania, A.cinereus_oceania, A.condolescens_oceania, A.dorsalis_oceania, A.dupreei_oceania, A.fitchii_oceania, A.fulvus_oceania, A.grossbecki_oceania, A.infirmatus_oceania,A.japonicus_oceania, A.melanimon_oceania, A.nigromaculis_oceania, A.provocans_oceania, A.sollicitans_oceania, A.squamiger_oceania, A.sticticus_oceania, A.stimulans_oceania, A.triseriatus_oceania, A.trivittatus_oceania, A.vexans_oceania, An.atropos_oceania, An.barberi_oceania, An.bradleyi_oceania, An.franciscanus_oceania, An.freeborni_oceania, An.punctipennis_oceania, An.quadrimaculatus_oceania, An.walkeri_oceania, Co.perturbans_oceania, C.apicalis_oceania, C.bahamensis_oceania, C.coronator_oceania, C.erraticus_oceania, C.erythrothorax_oceania, C.nigripalpus_oceania, C.pipiens_oceania, C.quinquefasciatus_oceania, C.restuans_oceania, C.salinarius_oceania, C.stigmatosoma_oceania, C.tarsalis_oceania, C.territans_oceania, C.thriambus_oceania, Cu.incidens_oceania, Cu.impatiens_oceania, Cu.inornata_oceania, Cu.melanura_oceania, Cu.morsitans_oceania, Cu.particeps_oceania, M.titillans_oceania, O.signifera_oceania, P.ciliata_oceania, P.columbiae_oceania, P.ferox_oceania, P.howardii_oceania, U.sapphirina_oceania, D.cancer_oceania)
WNV.Oceania.list<-list(A.aegypti_oceania, A.albopictus_oceania, A.atlanticus_oceania, A.atropalpus_oceania, A.canadensis_oceania, A.cantator_oceania, A.cinereus_oceania, A.condolescens_oceania, A.dorsalis_oceania, A.dupreei_oceania, A.fitchii_oceania, A.fulvus_oceania, A.grossbecki_oceania, A.infirmatus_oceania,A.japonicus_oceania, A.melanimon_oceania, A.nigromaculis_oceania, A.provocans_oceania, A.sollicitans_oceania, A.squamiger_oceania, A.sticticus_oceania, A.stimulans_oceania, A.triseriatus_oceania, A.trivittatus_oceania, A.vexans_oceania, An.atropos_oceania, An.barberi_oceania, An.bradleyi_oceania, An.franciscanus_oceania, An.freeborni_oceania, An.punctipennis_oceania, An.quadrimaculatus_oceania, An.walkeri_oceania, Co.perturbans_oceania, C.apicalis_oceania, C.bahamensis_oceania, C.coronator_oceania, C.erraticus_oceania, C.erythrothorax_oceania, C.nigripalpus_oceania, C.pipiens_oceania, C.quinquefasciatus_oceania, C.restuans_oceania, C.salinarius_oceania, C.stigmatosoma_oceania, C.tarsalis_oceania, C.territans_oceania, C.thriambus_oceania, Cu.incidens_oceania, Cu.impatiens_oceania, Cu.inornata_oceania, Cu.melanura_oceania, Cu.morsitans_oceania, Cu.particeps_oceania, M.titillans_oceania, O.signifera_oceania, P.ciliata_oceania, P.columbiae_oceania, P.ferox_oceania, P.howardii_oceania, U.sapphirina_oceania, D.cancer_oceania)
names(WNV.Oceania.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.Oceania$disease<-"WNV"

#S_America
WNV.S_America<-rbind(A.aegypti_s.america, A.albopictus_s.america, A.atlanticus_s.america, A.atropalpus_s.america, A.canadensis_s.america, A.cantator_s.america, A.cinereus_s.america, A.condolescens_s.america, A.dorsalis_s.america, A.dupreei_s.america, A.fitchii_s.america, A.fulvus_s.america, A.grossbecki_s.america, A.infirmatus_s.america,A.japonicus_s.america, A.melanimon_s.america, A.nigromaculis_s.america, A.provocans_s.america, A.sollicitans_s.america, A.squamiger_s.america, A.sticticus_s.america, A.stimulans_s.america, A.triseriatus_s.america, A.trivittatus_s.america, A.vexans_s.america, An.atropos_s.america, An.barberi_s.america, An.bradleyi_s.america, An.franciscanus_s.america, An.freeborni_s.america, An.punctipennis_s.america, An.quadrimaculatus_s.america, An.walkeri_s.america, Co.perturbans_s.america, C.apicalis_s.america, C.bahamensis_s.america, C.coronator_s.america, C.erraticus_s.america, C.erythrothorax_s.america, C.nigripalpus_s.america, C.pipiens_s.america, C.quinquefasciatus_s.america, C.restuans_s.america, C.salinarius_s.america, C.stigmatosoma_s.america, C.tarsalis_s.america, C.territans_s.america, C.thriambus_s.america, Cu.incidens_s.america, Cu.impatiens_s.america, Cu.inornata_s.america, Cu.melanura_s.america, Cu.morsitans_s.america, Cu.particeps_s.america, M.titillans_s.america, O.signifera_s.america, P.ciliata_s.america, P.columbiae_s.america, P.ferox_s.america, P.howardii_s.america, U.sapphirina_s.america, D.cancer_s.america)
WNV.S_America.list<-list(A.aegypti_s.america, A.albopictus_s.america, A.atlanticus_s.america, A.atropalpus_s.america, A.canadensis_s.america, A.cantator_s.america, A.cinereus_s.america, A.condolescens_s.america, A.dorsalis_s.america, A.dupreei_s.america, A.fitchii_s.america, A.fulvus_s.america, A.grossbecki_s.america, A.infirmatus_s.america,A.japonicus_s.america, A.melanimon_s.america, A.nigromaculis_s.america, A.provocans_s.america, A.sollicitans_s.america, A.squamiger_s.america, A.sticticus_s.america, A.stimulans_s.america, A.triseriatus_s.america, A.trivittatus_s.america, A.vexans_s.america, An.atropos_s.america, An.barberi_s.america, An.bradleyi_s.america, An.franciscanus_s.america, An.freeborni_s.america, An.punctipennis_s.america, An.quadrimaculatus_s.america, An.walkeri_s.america, Co.perturbans_s.america, C.apicalis_s.america, C.bahamensis_s.america, C.coronator_s.america, C.erraticus_s.america, C.erythrothorax_s.america, C.nigripalpus_s.america, C.pipiens_s.america, C.quinquefasciatus_s.america, C.restuans_s.america, C.salinarius_s.america, C.stigmatosoma_s.america, C.tarsalis_s.america, C.territans_s.america, C.thriambus_s.america, Cu.incidens_s.america, Cu.impatiens_s.america, Cu.inornata_s.america, Cu.melanura_s.america, Cu.morsitans_s.america, Cu.particeps_s.america, M.titillans_s.america, O.signifera_s.america, P.ciliata_s.america, P.columbiae_s.america, P.ferox_s.america, P.howardii_s.america, U.sapphirina_s.america, D.cancer_s.america)
names(WNV.S_America.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.S_America$disease<-"WNV"

#Europe
WNV.europe<-rbind(A.aegypti_europe, A.albopictus_europe, A.atlanticus_europe, A.atropalpus_europe, A.canadensis_europe, A.cantator_europe, A.cinereus_europe, A.condolescens_europe, A.dorsalis_europe, A.dupreei_europe, A.fitchii_europe, A.fulvus_europe, A.grossbecki_europe, A.infirmatus_europe,A.japonicus_europe, A.melanimon_europe, A.nigromaculis_europe, A.provocans_europe, A.sollicitans_europe, A.squamiger_europe, A.sticticus_europe, A.stimulans_europe, A.triseriatus_europe, A.trivittatus_europe, A.vexans_europe, An.atropos_europe, An.barberi_europe, An.bradleyi_europe, An.franciscanus_europe, An.freeborni_europe, An.punctipennis_europe, An.quadrimaculatus_europe, An.walkeri_europe, Co.perturbans_europe, C.apicalis_europe, C.bahamensis_europe, C.coronator_europe, C.erraticus_europe, C.erythrothorax_europe, C.nigripalpus_europe, C.pipiens_europe, C.quinquefasciatus_europe, C.restuans_europe, C.salinarius_europe, C.stigmatosoma_europe, C.tarsalis_europe, C.territans_europe, C.thriambus_europe, Cu.incidens_europe, Cu.impatiens_europe, Cu.inornata_europe, Cu.melanura_europe, Cu.morsitans_europe, Cu.particeps_europe, M.titillans_europe, O.signifera_europe, P.ciliata_europe, P.columbiae_europe, P.ferox_europe, P.howardii_europe, U.sapphirina_europe, D.cancer_europe)
WNV.europe.list<-list(A.aegypti_europe, A.albopictus_europe, A.atlanticus_europe, A.atropalpus_europe, A.canadensis_europe, A.cantator_europe, A.cinereus_europe, A.condolescens_europe, A.dorsalis_europe, A.dupreei_europe, A.fitchii_europe, A.fulvus_europe, A.grossbecki_europe, A.infirmatus_europe,A.japonicus_europe, A.melanimon_europe, A.nigromaculis_europe, A.provocans_europe, A.sollicitans_europe, A.squamiger_europe, A.sticticus_europe, A.stimulans_europe, A.triseriatus_europe, A.trivittatus_europe, A.vexans_europe, An.atropos_europe, An.barberi_europe, An.bradleyi_europe, An.franciscanus_europe, An.freeborni_europe, An.punctipennis_europe, An.quadrimaculatus_europe, An.walkeri_europe, Co.perturbans_europe, C.apicalis_europe, C.bahamensis_europe, C.coronator_europe, C.erraticus_europe, C.erythrothorax_europe, C.nigripalpus_europe, C.pipiens_europe, C.quinquefasciatus_europe, C.restuans_europe, C.salinarius_europe, C.stigmatosoma_europe, C.tarsalis_europe, C.territans_europe, C.thriambus_europe, Cu.incidens_europe, Cu.impatiens_europe, Cu.inornata_europe, Cu.melanura_europe, Cu.morsitans_europe, Cu.particeps_europe, M.titillans_europe, O.signifera_europe, P.ciliata_europe, P.columbiae_europe, P.ferox_europe, P.howardii_europe, U.sapphirina_europe, D.cancer_europe)
names(WNV.europe.list)<-c("A_aegypti", "A_albopictus", "A_atlanticus", "A_atropalpus", "A_canadensis", "A_cantator", "A_cinereus", "A_condolescens", "A_dorsalis", "A_dupreei", "A_fitchii", "A_fulvus", "A_grossbecki", "A_infirmatus", "A_japonicus", "A_melanimon", "A_nigromaculis", "A_provocans", "A_solicitans", "A_squamiger", "A_sticticus", "A_stimulans", "A_triseriatus", "A_trivittatus", "A_vexans", "An_atropos", "An_barberi", "An_bradleyi", "An_franciscanus", "An_freeborni", "An_punctipennis", "An_quadrimatculatus", "An_walkeri", "Co_perturbans", "C_apicalis", "C_bahamensis", "C_coronator", "C_erraticus", "C_erythrothorax", "C_nigripalpus", "C_pipiens", "C_quinquefasciatus", "C_restuans", "C_salinarius", "C_stigmatosoma", "C_tarsalis", "C_territans", "C_thriambus", "Cu_incidens", "Cu_impatiens", "Cu_inornata", "Cu_melanura", "Cu_morsitans", "Cu_particeps", "M_titillans", "O_signifera", "P_ciliata", "P_columbiae", "P_ferox","P_howardii", "U_sapphirina", "D_cancer")
WNV.europe$disease<-"WNV"

WNV.Eurasia<-rbind(WNV.europe, WNV.asia)
WNV.Eurasia  

WNV.Oceania.c<-rbind(WNV.Oceania, WNV.Australia)
WNV.Oceania.c
#

WNV.africa

#saves the environment.
save.image("species+continets.RData")

thin(WNV.africa,lat.col="decimalLatitude",long.col="decimalLongitude",spec.col="disease",thin.par=50,reps=1,write.files=T,out.dir=getwd(),out.base="thintest", verbose=T,write.log.file=F)

Zika.africa




