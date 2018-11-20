### MESS analysis using Modeva ###
install.packages("modEvA")
library(modEvA)

##### AFRICA #####
#Load environmental variables and stack
Af_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio2.tif")
Af_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio4.tif")
Af_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio8.tif")
Af_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio9.tif")
Af_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio15.tif")
Af_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio16.tif")
Af_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio17.tif")
Af_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio18.tif")
Af_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/bio19.tif")
Af_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/flood.tif")
Af_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/farm.tif")
Af_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/africa/urban.tif")

africa.stack<-stack(Af_chik_bio1,Af_chik_bio2,Af_chik_bio3,Af_chik_bio4,Af_chik_bio5,Af_chik_bio6,Af_chik_bio7,Af_chik_bio8,Af_chik_bio9,Af_chik_lc3,Af_chik_lc2,Af_chik_lc1)

#Make the stack a data frame
xx<-as.data.frame(rasterToPoints(Af_chik_bio1))
xx$bio2<-NULL # df of just xy coordinates

#extract enivronmental data from each environmental layer
extracted.data<-list()
for (i in 1:nlayers(africa.stack)){
  extracted.data[[i]]<-extract(africa.stack[[i]],xx)
  
}

#One dataframe containing all extracted data for each environmental layer within Africa
africa.data<-data.frame(extracted.data[[1]],extracted.data[[2]],extracted.data[[3]],extracted.data[[4]],extracted.data[[5]],extracted.data[[6]],extracted.data[[7]],extracted.data[[8]],extracted.data[[9]],extracted.data[[10]],extracted.data[[11]],extracted.data[[12]])

#### EURASIA #####

Eur_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio2.tif")
Eur_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio4.tif")
Eur_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio8.tif")
Eur_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio9.tif")
Eur_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio15.tif")
Eur_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio16.tif")
Eur_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio17.tif")
Eur_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio18.tif")
Eur_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/bio19.tif")
Eur_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/flood.tif")
Eur_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/farm.tif")
Eur_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/eurasia/urban.tif")

eurasia.stack<-stack(Eur_chik_bio1, Eur_chik_bio2, Eur_chik_bio3, Eur_chik_bio4, Eur_chik_bio5, Eur_chik_bio6, Eur_chik_bio7, Eur_chik_bio8, Eur_chik_bio9, Eur_chik_lc3, Eur_chik_lc2, Eur_chik_lc1)

xx1<-as.data.frame(rasterToPoints(Eur_chik_bio1))
xx1$bio2<-NULL # this creates a df of just xy coordinates

extracted.data<-list()
for (i in 1:nlayers(eurasia.stack)){
  extracted.data[[i]]<-extract(eurasia.stack[[i]],xx1)
  
}

asia.data<-data.frame(extracted.data[[1]],extracted.data[[2]],extracted.data[[3]],extracted.data[[4]],extracted.data[[5]],extracted.data[[6]],extracted.data[[7]],extracted.data[[8]],extracted.data[[9]],extracted.data[[10]],extracted.data[[11]],extracted.data[[12]])

### Americas ###

Am_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio2.tif")
Am_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio4.tif")
Am_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio8.tif")
Am_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio9.tif")
Am_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio15.tif")
Am_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio16.tif")
Am_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio17.tif")
Am_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio18.tif")
Am_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/bio19.tif")
Am_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/flood.tif")
Am_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/farm.tif")
Am_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/americas/urban.tif")

environmentlayersAm_chik<-stack(Am_chik_bio1, Am_chik_bio2, Am_chik_bio3, Am_chik_bio4, Am_chik_bio5, Am_chik_bio6, Am_chik_bio7, Am_chik_bio8, Am_chik_bio9, Am_chik_lc3, Am_chik_lc2, Am_chik_lc1)

xx_a<-as.data.frame(rasterToPoints(Am_chik_bio1))
xx_a$bio2<-NULL # this creates a df of just xy coordinates

extracted.data<-list()
for (i in 1:nlayers(environmentlayersAm_chik)){
  extracted.data[[i]]<-extract(environmentlayersAm_chik[[i]],xx_a)
  
}

americas.data<-data.frame(extracted.data[[1]],extracted.data[[2]],extracted.data[[3]],extracted.data[[4]],extracted.data[[5]],extracted.data[[6]],extracted.data[[7]],extracted.data[[8]],extracted.data[[9]],extracted.data[[10]],extracted.data[[11]],extracted.data[[12]])


### Oceania ###

O_chik_bio1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio2.tif")
O_chik_bio2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio4.tif")
O_chik_bio3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio8.tif")
O_chik_bio4<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio9.tif")
O_chik_bio5<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio15.tif")
O_chik_bio6<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio16.tif")
O_chik_bio7<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio17.tif")
O_chik_bio8<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio18.tif")
O_chik_bio9<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/bio19.tif")
O_chik_lc3<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/flood.tif")
O_chik_lc2<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/farm.tif")
O_chik_lc1<-raster("E:/ENMs/Climate Data/Chikungunya/chik/oceania/oceania/urban.tif")

environmentlayersO_chik<-stack(O_chik_bio1, O_chik_bio2, O_chik_bio3, O_chik_bio4, O_chik_bio5, O_chik_bio6, O_chik_bio7, O_chik_bio8, O_chik_bio9, O_chik_lc3, O_chik_lc2, O_chik_lc1)

xx_o<-as.data.frame(rasterToPoints(O_chik_bio1))
xx_o$bio2<-NULL # this creates a df of just xy coordinates

extracted.data<-list()
for (i in 1:nlayers(environmentlayersO_chik)){
  extracted.data[[i]]<-extract(environmentlayersO_chik[[i]],xx_o)
  
}

oceania.data<-data.frame(extracted.data[[1]],extracted.data[[2]],extracted.data[[3]],extracted.data[[4]],extracted.data[[5]],extracted.data[[6]],extracted.data[[7]],extracted.data[[8]],extracted.data[[9]],extracted.data[[10]],extracted.data[[11]],extracted.data[[12]])



## MESS ### (X, V, full=False, filename='')

### I had a note to myself here to ask if you have to do both ways i.e. Africa - Oceania and Oceania - Africa.
## When i looked at the outputs they looked the same initially, i don't think i ever checked the americas as they took so long to run.

africa_eurasia_mess<-MESS(africa.data,asia.data)  #DONE

africa_americas_mess<-MESS(africa.data,americas.data) #DONE

africa_oceaania_mess<-MESS(africa.data,oceania.data)   #DONE

eurasia_americas_mess<-MESS(asia.data,americas.data) #Done

eurasia_oceania_mess<-MESS(asia.data,oceania.data) #DONE

eurasia_africa_mess<-MESS(asia.data,africa.data) 






xx<-which(xx$TOTAL <0)
xx.clean<-xx[-c(xx),]



##### Extract TOTAL mess value, projected value and fitted value ##################

#boxplots of MESS Value #

### TOTAL mess value.

#africa/oceania
africa_oceaania_mess$TOTAL  #take oceania mess and isolate TOTAL values.
oceania_africa_total_mess<-africa_oceaania_mess$TOTAL
boxplot(oceania_africa_total_mess, ylab = "Total mess value", main="Boxplot Oceania and Africa MESS")
mean(oceania_africa_total_mess)

#eurasia/oceania
eurasia_oceania_mess$TOTAL
oceania_eurasia_total_mess<-eurasia_oceania_mess$TOTAL
boxplot(oceania_eurasia_total_mess, ylab = "Total MESS Value", main ="Boxplot Oceania and Eurasia MESS")
mean(oceania_eurasia_total_mess)

#americas/oceania 
americas_oceania_mess$Total #### not sure why but this one returns the value null where all others work.### MESS appeared to complete okay but takes my laptop a day to re-run the analysis.
oceania_americas_total_mess<-americas_oceania_mess$TOTAL
boxplot(oceania_americas_total_mess, ylab = "Total MESS Value", main="Boxplot Oceania and Americas MESS")
mean(oceania_americas_total_mess)

#africa/eurasia
africa_eurasia_mess$TOTAL
africa_eurasia_total_mess<-africa_eurasia_mess$TOTAL
boxplot(africa_eurasia_total_mess, ylab = " Total MESS Value", main = "Boxplot Africa and Eurasia MESS")
mean(africa_eurasia_total_mess)

#africa/americas
africa_americas_mess$TOTAL
africa_americas_total_mess<-africa_americas_mess$TOTAL
boxplot(africa_americas_total_mess, ylab = "Total MESS Value", main = "Boxplot Africa and Americas MESS")
mean(africa_americas_total_mess)

#Eurasia/Americas
eurasia_americas_mess$TOTAL
eurasia_americas_total_mess<-eurasia_americas_mess$TOTAL
boxplot(eurasia_americas_total_mess, ylab = "Total MESS Value", main= "Boxplot Eurasia and Americas")
mean(eurasia_americas_total_mess)

#Eurasia/Africa
eurasia_africa_mess$TOTAL
eurasia_africa_total_mess<-eurasia_africa_mess$TOTAL
boxplot(eurasia_africa_total_mess, ylab = "Total MESS Value", main= "Boxplot Eurasia and Africa")
mean(eurasia_africa_total_mess)


##################### Kruskal- Wallis Test
data <- read.csv("E:/ENMs/Tables and Figures for disso/Kruskal_data.csv")

kruskal.test(Ealuation ~ Disease, data = data)
kruskal.test(Eval_region ~ Region, data = data)

