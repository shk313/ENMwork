install.packages("rgbif")
library(rgbif)

######################################################
##### in comparison with 'mosquitoes data set Rsript' this script pulls only coordinates
########################################################

#Aedes aegypti, changed fields to just have a data frame with coordinates
key1<-name_suggest(q='Aedes aegypti', rank = "species") $key[1]
A.aegypti<-occ_search(taxonKey=key1, limit = 34200, hasCoordinate = T, hasGeospatialIssue = F, fields =  c( 'decimalLatitude', 'decimalLongitude'))
A.aegypti.data<-as.data.frame(A.aegypti$data)

save(A.aegypti.1.data, file= "A_aegypti_data.RData")

#Aedes africanus
key2<-name_suggest(q= 'Aedes africanus', rank = "species") $key[1]
A.africanus<-occ_search(taxonKey = key2, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields =c( 'decimalLatitude', 'decimalLongitude'))
A.africanus.data<-as.data.frame(A.africanus$data)


#Aedes albopictus 
key3<-name_suggest(q='Aedes albopictus', rank = "species") $key[1]
A.albopictus<-occ_search(taxonKey=key3, limit = 26000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.albopictus.data<-as.data.frame(A.albopictus$data)

#Aedes albothorax
key4<-name_suggest(q='Aedes albothorax', rank = "species") $key[1]
A.albothorax<-occ_search(taxonKey=key4, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.albothorax.data<-as.data.frame(A.albothorax$data)

############################
#Aedes apicorgenteus - NOT YET WORKINGGGGGGGGGG
key5<-name_suggest(q='Aedes apicorgenteus', rank = "species") $key[1]
A.apicorgenteus<-occ_search(taxonKey=key5, limit = 5000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.apicorgenteus.data<-as.data.frame(A.apicorgenteus$data)
###########################

#Aedes atlanticus
key6<-name_suggest(q='Aedes atlanticus', rank = "species") $key[1]
A.atlanticus<-occ_search(taxonKey=key6, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.atlanticus.data<-as.data.frame(A.atlanticus$data)

#Aedes atropalpus
key7<-name_suggest(q='Aedes atropalpus', rank = "species") $key[1]
A.atropalpus<-occ_search(taxonKey=key7, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.atropalpus.data<-as.data.frame(A.atropalpus$data)

#Aedes canadensis
key8<-name_suggest(q='Aedes canadensis', rank = "species") $key[1]
A.canadensis<-occ_search(taxonKey=key8, limit = 1500, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.canadensis.data<-as.data.frame(A.canadensis$data)

#Aedes cantans
key9<-name_suggest(q='Aedes cantans', rank = "species") $key[1]
A.cantans<-occ_search(taxonKey=key9, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.cantans.data<-as.data.frame(A.cantans$data)

#Aedes cantator
key10<-name_suggest(q='Aedes cantator', rank = "species") $key[1]
A.cantator<-occ_search(taxonKey=key10, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.cantator.data<-as.data.frame(A.cantator$data)

#Aedes cinereus
key11<-name_suggest(q='Aedes cinereus', rank = "species") $key[1]
A.cinereus<-occ_search(taxonKey=key11, limit = 1500, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.cinereus.data<-as.data.frame(A.cinereus$data)

#Aedes condolescens
key12<-name_suggest(q='Aedes condolescens', rank = "species") $key[1]
A.condolescens<-occ_search(taxonKey=key12, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.condolescens.data<-as.data.frame(A.condolescens$data)

#Aedes dalzieli
key13<-name_suggest(q='Aedes dalzieli', rank = "species") $key[1]
A.dalzieli<-occ_search(taxonKey = key13, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.dalzieli.data<-as.data.frame(A.dalzieli$data)

#Aedes dorsalis
key14<-name_suggest(q='Aedes dorsalis', rank = "species") $key[1]
A.dorsalis<-occ_search(taxonKey = key14, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.dorsalis.data<-as.data.frame(A.dorsalis$data)

#Aedes dupreei
key15<-name_suggest(q='Aedes dupreei', rank = "species") $key[1]
A.dupreei<-occ_search(taxonKey = key15, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.dupreei.data<-as.data.frame(A.dupreei$data)

#Aedes excrucians
key16<-name_suggest(q='Aedes excrucians', rank = "species") $key[1]
A.excrucians<-occ_search(taxonKey = key16, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.excrucians.data<-as.data.frame(A.excrucians$data)

#Aedes fitchii
key17<-name_suggest(q='Aedes fitchii', rank = "species") $key[1]
A.fitchii<-occ_search(taxonKey = key17, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.fitchii.data<-as.data.frame(A.fitchii$data)

#Aedes fowleri
key18<-name_suggest(q='Aedes fowleri', rank = "species") $key[1]
A.fowleri<-occ_search(taxonKey = key18, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.fowleri.data<-as.data.frame(A.fowleri$data)

#Aedes fulvus
key19<-name_suggest(q='Aedes fulvus', rank = "species") $key[1]
A.fulvus<-occ_search(taxonKey = key19, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.fulvus.data<-as.data.frame(A.fulvus$data)

#Aedes furcifer
key20<-name_suggest(q= 'Aedes furcifer', rank = "species") $key[1]
A.furcifer<-occ_search(taxonKey = key20, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.furcifer.data<-as.data.frame(A.furcifer$data)

#Aedes grossbecki
key21<-name_suggest(q= 'Aedes grossbecki', rank = "species") $key[1]
A.grossbecki<-occ_search(taxonKey = key21, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.grossbecki.data<-as.data.frame(A.grossbecki$data)

#Aedes hensilli
key22<-name_suggest(q='Aedes hensilli', rank = "species") $key[1]
A.hensilli<-occ_search(taxonKey = key22, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.hensilli.data<-as.data.frame(A.hensilli$data)

#Aedes hirustus
key23<-name_suggest(q= 'Aedes hirustus', rank = "species") $key[1]
A.hirustus<-occ_search(taxonKey = key23, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.hirustus.data<-as.data.frame(A.hirustus$data)

#Aedes infirmatus
key24<-name_suggest(q= 'Aedes infirmatus', rank = "species") $key[1]
A.infirmatus<-occ_search(taxonKey = key24, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.infirmatus.data<-as.data.frame(A.infirmatus$data)

#Aedes japonicus
key25<-name_suggest(q= 'Aedes japonicus', rank = "species") $key[1]
A.japonicus<-occ_search(taxonKey = key25, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.japonicus.data<-as.data.frame(A.japonicus$data)

#Aedes luteocephalus
key26<-name_suggest(q= 'Aedes luteocephalus', rank = "species") $key[1]
A.luteocephalus<-occ_search(taxonKey = key26, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.luteocephalus.data<-as.data.frame(A.luteocephalus$data)

#Aedes melanimon
key27<-name_suggest(q= 'Aedes melanimon', rank = "species") $key[1]
A.melanimon<-occ_search(taxonKey = key27, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.melanimon.data<-as.data.frame(A.melanimon$data)
View(A.melanimon.data)
#Aedes metallicus
key28<-name_suggest(q= 'Aedes metallicus', rank = "species") $key[1]
A.metallicus<-occ_search(taxonKey = key28, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.metallicus.data<-as.data.frame(A.metallicus$data)

#Aedes minutus
key29<-name_suggest(q= 'Aedes minutus', rank = "species") $key[1]
A.minutus<-occ_search(taxonKey = key29, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.minutus.data<-as.data.frame(A.minutus$data)

#Aedes neoafricanus
key30<-name_suggest(q= 'Aedes neoafricanus', rank = "species") $key[1]
A.neoafricanus<-occ_search(taxonKey= key30, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.neoafricanus.data<-as.data.frame(A.neoafricanus$data)

#Aedes nigromaculis
key31<-name_suggest(q= 'Aedes nigromaculis', rank = "species") $key[1]
A.nigromaculis<-occ_search(taxonKey= key31, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.nigromaculis.data<-as.data.frame(A.nigromaculis$data)

#Aedes opok
key32<-name_suggest(q= 'Aedes opok', rank = "species") $key[1]
A.opok<-occ_search(taxonKey = key32, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.opok.data<-as.data.frame(A.opok$data)

#Aedes polynesiensis
key33<-name_suggest(q='Aedes polynesiensis', rank = "species") $key[1]
A.polynesiensis<-occ_search(taxonKey=key33, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.polynesiensis.data<-as.data.frame(A.polynesiensis$data)

#Aedes provocans
key34<-name_suggest(q='Aedes provocans', rank = "species") $key[1]
A.provocans<-occ_search(taxonKey=key34, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.provocans.data<-as.data.frame(A.provocans$data)

#Aedes scutellaris
key35<-name_suggest(q='Aedes scutellaris', rank = "species") $key[1]
A.scutellaris<-occ_search(taxonKey=key35, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.scutellaris.data<-as.data.frame(A.scutellaris$data)

#Aedes sollicitans
key36<-name_suggest(q='Aedes sollicitans', rank = "species") $key[1]
A.sollicitans<-occ_search(taxonKey=key36, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.sollicitans.data<-as.data.frame(A.sollicitans$data)

#Aedes sticticus
key37<-name_suggest(q='Aedes sticticus', rank = "species") $key[1]
A.sticticus<-occ_search(taxonKey=key37, limit = 2900, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.sticticus.data<-as.data.frame(A.sticticus$data)

#Aedes stimulans
key38<-name_suggest(q='Aedes stimulans', rank = "species") $key[1]
A.stimulans<-occ_search(taxonKey=key38, limit = 2000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.stimulans.data<-as.data.frame(A.stimulans$data)

##############################
#Aedes taenirohynchus
key39<-name_suggest(q='Aedes taenirohynchus', rank = "species") $key[1]
A.taenirohynchus<-occ_search(taxonKey=key39, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.taenirohynchus.data<-as.data.frame(A.taenirohynchus$data)
###############################

#Aedes taylori
key40<-name_suggest(q= 'Aedes taylori', rank = "species") $key[1]
A.taylori<-occ_search(taxonKey = key40, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.taylori.data<-as.data.frame(A.taylori$data)

#Aedes triseriatus
key41<-name_suggest(q= 'Aedes triseriatus', rank = "species") $key[1]
A.triseriatus<-occ_search(taxonKey = key41, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.triseriatus.data<-as.data.frame(A.triseriatus$data)

#Aedes trivittatus
key42<-name_suggest(q= 'Aedes trivittatus', rank = "species") $key[1]
A.trivittatus<-occ_search(taxonKey = key42, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.trivittatus.data<-as.data.frame(A.trivittatus$data)

#Aedes unilineatus
key43<-name_suggest(q= 'Aedes unilineatus', rank = "species") $key[1]
A.unilineatus<-occ_search(taxonKey = key43, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.unilineatus.data<-as.data.frame(A.unilineatus$data)

#Aedes vexans
key44<-name_suggest(q= 'Aedes vexans', rank = "species") $key[1]
A.vexans<-occ_search(taxonKey = key44, limit = 4300, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.vexans.data<-as.data.frame(A.vexans$data)

#Aedes vittatus
key45<-name_suggest(q= 'Aedes vittatus', rank = "species") $key[1]
A.vittatus<-occ_search(taxonKey = key45, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
A.vittatus.data<-as.data.frame(A.vittatus$data)

#Anopheles aconitus
key46<-name_suggest(q= 'Anopheles aconitus', rank = "species") $key[1]
An.aconitus<-occ_search(taxonKey = key46, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.aconitus.data<-as.data.frame(An.aconitus$data)

#Anopheles albimanus
key47<-name_suggest(q= 'Anopheles albimanus', rank = "species") $key[1]
An.albimanus<-occ_search(taxonKey = key47, limit = 2400, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.albimanus.data<-as.data.frame(An.albimanus$data)

#Anopheles albitarsis
key48<-name_suggest(q= 'Anopheles albitarsis', rank = "species") $key[1]
An.albitarsis<-occ_search(taxonKey = key48, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.albitarsis.data<-as.data.frame(An.albitarsis$data)

#Anopheles annularis
key49<-name_suggest(q= 'Anopheles annularis', rank = "species") $key[1]
An.annularis<-occ_search(taxonKey = key49, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.annularis.data<-as.data.frame(An.annularis$data)

#Anopheles aquasalis
key50<-name_suggest(q= 'Anopheles aquasalis', rank = "species") $key[1]
An.aquasalis<-occ_search(taxonKey = key50, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.aquasalis.data<-as.data.frame(An.aquasalis$data)

#Anopheles arabiensis
key51<-name_suggest(q= 'Anopheles arabiensis', rank = "species") $key[1]
An.arabiensis<-occ_search(taxonKey = key51, limit = 3000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.arabiensis.data<-as.data.frame(An.arabiensis$data)

#Anopheles atroparvus
key52<-name_suggest(q= 'Anopheles atroparvus', rank = "species") $key[1]
An.atroparvus<-occ_search(taxonKey = key52, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.atroparvus.data<-as.data.frame(An.atroparvus$data)

#Anopheles atropos
key53<-name_suggest(q= 'Anopheles atropos', rank = "species") $key[1]
An.atropos<-occ_search(taxonKey = key53, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.atropos.data<-as.data.frame(An.atropos$data)

#Anopheles barberi
key54<-name_suggest(q= 'Anopheles barberi', rank = "species") $key[1]
An.barberi<-occ_search(taxonKey = key54, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.barberi.data<-as.data.frame(An.barberi$data)

#Anopheles barbirostris
key55<-name_suggest(q= 'Anopheles barbirostris', rank = "species") $key[1]
An.barbirostris<-occ_search(taxonKey = key55, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.barbirostris.data<-as.data.frame(An.barbirostris$data)

#Anopheles bradleyi
key56<-name_suggest(q= 'Anopheles bradleyi', rank = "species") $key[1]
An.bradleyi<-occ_search(taxonKey = key56, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.bradleyi.data<-as.data.frame(An.bradleyi$data)

#Anopheles braziliensis
key57<-name_suggest(q= 'Anopheles braziliensis', rank = "species") $key[1]
An.braziliensis<-occ_search(taxonKey = key57, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.braziliensis.data<-as.data.frame(An.braziliensis$data)

#Anopheles brunnipes
key58<-name_suggest(q= 'Anopheles brunnipes', rank = "species") $key[1]
An.brunnipes<-occ_search(taxonKey = key58, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.brunnipes.data<-as.data.frame(An.brunnipes$data)

#Anopheles coustani
key59<-name_suggest(q= 'Anopheles coustani', rank = "species") $key[1]
An.coustani<-occ_search(taxonKey = key59, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.coustani.data<-as.data.frame(An.coustani$data)

#Anopheles crucians
key60<-name_suggest(q= 'Anopheles crucians', rank = "species") $key[1]
An.crucians<-occ_search(taxonKey = key60, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.crucians.data<-as.data.frame(An.crucians$data)

#Anopheles culicifacies
key61<-name_suggest(q= 'Anopheles culicifacies', rank = "species") $key[1]
An.culicifacies<-occ_search(taxonKey = key61, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.culicifacies.data<-as.data.frame(An.culicifacies$data)
library(rgbif)
#Anopheles darlingi
key62<-name_suggest(q= 'Anopheles darlingi', rank = "species") $key[1]
An.darlingi<-occ_search(taxonKey = key62, limit = 2400, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.darlingi.data<-as.data.frame(An.darlingi$data)

#Anopheles dirus
key63<-name_suggest(q= 'Anopheles dirus', rank = "species") $key[1]
An.dirus<-occ_search(taxonKey = key63, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.dirus.data<-as.data.frame(An.dirus$data)

#Anopheles farauti
key64<-name_suggest(q= 'Anopheles farauti', rank = "species") $key[1]
An.farauti<-occ_search(taxonKey = key64, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.farauti.data<-as.data.frame(An.farauti$data)

#Anopheles fluviatilis
key65<-name_suggest(q= 'Anopheles fluviatilis', rank = "species") $key[1]
An.fluviatilis<-occ_search(taxonKey = key65, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.fluviatilis.data<-as.data.frame(An.fluviatilis$data)

#Anopheles franciscanus
key66<-name_suggest(q= 'Anopheles franciscanus', rank = "species") $key[1]
An.franciscanus<-occ_search(taxonKey = key66, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.franciscanus.data<-as.data.frame(An.franciscanus$data)

#Anopheles freeborni
key67<-name_suggest(q= 'Anopheles freeborni', rank = "species") $key[1]
An.freeborni<-occ_search(taxonKey = key67, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.freeborni.data<-as.data.frame(An.freeborni$data)

#Anopheles funestus
key68<-name_suggest(q= 'Anopheles funestus', rank = "species") $key[1]
An.funestus<-occ_search(taxonKey = key68, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.funestus.data<-as.data.frame(An.funestus$data)

#Anopheles gambiae
key69<-name_suggest(q= 'Anopheles gambiae', rank = "species") $key[1]
An.gambiae<-occ_search(taxonKey = key69, limit = 3500, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.gambiae.data<-as.data.frame(An.gambiae$data)

#Anopheles hyrcanus
key70<-name_suggest(q= 'Anopheles hyrcanus', rank = "species") $key[1]
An.hyrcanus<-occ_search(taxonKey = key70, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.hyrcanus.data<-as.data.frame(An.hyrcanus$data)

#Anopheles koliensis
key71<-name_suggest(q= 'Anopheles koliensis', rank = "species") $key[1]
An.koliensis<-occ_search(taxonKey = key71, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.koliensis.data<-as.data.frame(An.koliensis$data)

#Anopheles iabranchiae
key72<-name_suggest(q= 'Anopheles iabranchiae', rank = "species") $key[1]
An.iabranchiae<-occ_search(taxonKey = key72, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.iabranchiae.data<-as.data.frame(An.iabranchiae$data)

#Anopheles lesteri
key73<-name_suggest(q= 'Anopheles lesteri', rank = "species") $key[1]
An.lesteri<-occ_search(taxonKey = key73, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.lesteri.data<-as.data.frame(An.lesteri$data)

#Anopheles leucosphyrus
key74<-name_suggest(q= 'Anopheles leucosphyrus', rank = "species") $key[1]
An.leucosphyrus<-occ_search(taxonKey = key74, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.leucosphyrus.data<-as.data.frame(An.leucosphyrus$data)

#Anopheles maculatus
key75<-name_suggest(q= 'Anopheles maculatus', rank = "species") $key[1]
An.maculatus<-occ_search(taxonKey = key75, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.maculatus.data<-as.data.frame(An.maculatus$data)

#Anopheles maculipennis
key76<-name_suggest(q= 'Anopheles maculipennis', rank = "species") $key[1]
An.maculipennis<-occ_search(taxonKey = key76, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.maculipennis.data<-as.data.frame(An.maculipennis$data)

#Anopheles marajoara
key77<-name_suggest(q= 'Anopheles marajoara', rank = "species") $key[1]
An.marajoara<-occ_search(taxonKey = key77, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.marajoara.data<-as.data.frame(An.marajoara$data)

#Anopheles melas
key78<-name_suggest(q= 'Anopheles melas', rank = "species") $key[1]
An.melas<-occ_search(taxonKey = key78, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.melas.data<-as.data.frame(An.melas$data)

#Anopheles merus
key79<-name_suggest(q= 'Anopheles merus', rank = "species") $key[1]
An.merus<-occ_search(taxonKey = key79, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.merus.data<-as.data.frame(An.merus$data)

#Anopheles messeae
key80<-name_suggest(q= 'Anopheles messeae', rank = "species") $key[1]
An.messeae<-occ_search(taxonKey = key80, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.messeae.data<-as.data.frame(An.messeae$data)

#Anopheles minimus
key81<-name_suggest(q= 'Anopheles minimus', rank = "species") $key[1]
An.minimus<-occ_search(taxonKey = key81, limit = 2000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.minimus.data<-as.data.frame(An.minimus$data)

#Anopheles moucheti
key82<-name_suggest(q= 'Anopheles moucheti', rank = "species") $key[1]
An.moucheti<-occ_search(taxonKey = key82, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.moucheti.data<-as.data.frame(An.moucheti$data)

#Anopheles nili
key83<-name_suggest(q= 'Anopheles nili', rank = "species") $key[1]
An.nili<-occ_search(taxonKey = key83, limit = 52000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.nili.data<-as.data.frame(An.nili$data)

#Anopheles nuneztovari
key84<-name_suggest(q= 'Anopheles nuneztovari', rank = "species") $key[1]
An.nuneztovari<-occ_search(taxonKey = key84, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.nuneztovari.data<-as.data.frame(An.nuneztovari$data)

#Anopheles pseudopunctipennis
key85<-name_suggest(q= 'Anopheles pseudopunctipennis', rank = "species") $key[1]
An.pseudopunctipennis<-occ_search(taxonKey = key85, limit = 3000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.pseudopunctipennis.data<-as.data.frame(An.pseudopunctipennis$data)

#Anopheles punctipennis
key86<-name_suggest(q= 'Anopheles punctipennis', rank = "species") $key[1]
An.punctipennis<-occ_search(taxonKey = key86, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.punctipennis.data<-as.data.frame(An.punctipennis$data)

#Anopheles punctulatus
key87<-name_suggest(q= 'Anopheles punctulatus', rank = "species") $key[1]
An.punctulatus<-occ_search(taxonKey = key87, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.punctulatus.data<-as.data.frame(An.punctulatus$data)

#Anopheles quadrimaculatus
key88<-name_suggest(q= 'Anopheles quadrimaculatus', rank = "species") $key[1]
An.quadrimaculatus<-occ_search(taxonKey = key88, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.quadrimaculatus.data<-as.data.frame(An.quadrimaculatus$data)

#Anopheles sacharovi
key89<-name_suggest(q= 'Anopheles sacharovi', rank = "species") $key[1]
An.sacharovi<-occ_search(taxonKey = key89, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.sacharovi.data<-as.data.frame(An.sacharovi$data)

#Anopheles sinensis
key90<-name_suggest(q= 'Anopheles sinensis', rank = "species") $key[1]
An.sinensis<-occ_search(taxonKey = key90, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.sinensis.data<-as.data.frame(An.sinensis$data)

#Anopheles stephensi
key91<-name_suggest(q= 'Anopheles stephensi', rank = "species") $key[1]
An.stephensi<-occ_search(taxonKey = key91, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.stephensi.data<-as.data.frame(An.stephensi$data)

#Anopheles subpictus
key92<-name_suggest(q= 'Anopheles subpictus', rank = "species") $key[1]
An.subpictus<-occ_search(taxonKey = key92, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.subpictus.data<-as.data.frame(An.subpictus$data)

#Anopheles sundaicus
key93<-name_suggest(q= 'Anopheles sundaicus', rank = "species") $key[1]
An.sundaicus<-occ_search(taxonKey = key93, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.sundaicus.data<-as.data.frame(An.sundaicus$data)

#Anopheles superpictus
key94<-name_suggest(q= 'Anopheles superpictus', rank = "species") $key[1]
An.superpictus<-occ_search(taxonKey = key94, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.superpictus.data<-as.data.frame(An.superpictus$data)

#Anopheles walkeri
key95<-name_suggest(q= 'Anopheles walkeri', rank = "species") $key[1]
An.walkeri<-occ_search(taxonKey = key95, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
An.walkeri.data<-as.data.frame(An.walkeri$data)

#Culex antennatus
key96<-name_suggest(q= 'Culex antennatus', rank = "species") $key[1]
C.antennatus<-occ_search(taxonKey = key96, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.antennatus.data<-as.data.frame(C.antennatus$data)

#Culex apicalis
key97<-name_suggest(q= 'Culex apicalis', rank = "species") $key[1]
C.apicalis<-occ_search(taxonKey = key97, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.apicalis.data<-as.data.frame(C.apicalis$data)

#Culex bahamensis
key98<-name_suggest(q= 'Culex bahamensis', rank = "species") $key[1]
C.bahamensis<-occ_search(taxonKey = key98, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.bahamensis.data<-as.data.frame(C.bahamensis$data)

#Culex coronator
key99<-name_suggest(q= 'Culex coronator', rank = "species") $key[1]
C.coronator<-occ_search(taxonKey = key99, limit = 5000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.coronator.data<-as.data.frame(C.coronator$data)
View(C.coronator.data)
#Culex erraticus
key100<-name_suggest(q= 'Culex erraticus', rank = "species") $key[1]
C.erraticus<-occ_search(taxonKey = key100, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.erraticus.data<-as.data.frame(C.erraticus$data)

#Culex erythrothorax
key101<-name_suggest(q= 'Culex erythrothorax', rank = "species") $key[1]
C.erythrothorax<-occ_search(taxonKey = key101, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.erythrothorax.data<-as.data.frame(C.erythrothorax$data)

#Culex guiarti
key102<-name_suggest(q= 'Culex guiarti', rank = "species") $key[1]
C.guiarti<-occ_search(taxonKey = key102, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.guiarti.data<-as.data.frame(C.guiarti$data)

#Culex modestus
key103<-name_suggest(q= 'Culex modestus', rank = "species") $key[1]
C.modestus<-occ_search(taxonKey = key103, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.modestus.data<-as.data.frame(C.modestus$data)

#Culex nigripalpus
key104<-name_suggest(q= 'Culex nigripalpus', rank = "species") $key[1]
C.nigripalpus<-occ_search(taxonKey = key104, limit = 2000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.nigripalpus.data<-as.data.frame(C.nigripalpus$data)

#Culex perexigus
key105<-name_suggest(q= 'Culex perexigus', rank = "species") $key[1]
C.perexigus<-occ_search(taxonKey = key105, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.perexigus.data<-as.data.frame(C.perexigus$data)

#Culex perfuscus
key106<-name_suggest(q= 'Culex perfuscus', rank = "species") $key[1]
C.perfuscus<-occ_search(taxonKey = key106, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.perfuscus.data<-as.data.frame(C.perfuscus$data)

#Culex pipiens
key107<-name_suggest(q= 'Culex pipiens', rank = "species") $key[1]
C.pipiens<-occ_search(taxonKey = key107, limit = 6100, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.pipiens.data<-as.data.frame(C.pipiens$data)

#Culex quinquefasciatus
key108<-name_suggest(q= 'Culex quinquefasciatus', rank = "species") $key[1]
C.quinquefasciatus<-occ_search(taxonKey = key108, limit = 13000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.quinquefasciatus.data<-as.data.frame(C.quinquefasciatus$data)

#Culex restuans
key109<-name_suggest(q= 'Culex restuans', rank = "species") $key[1]
C.restuans<-occ_search(taxonKey = key109, limit = 1300, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
C.restuans.data<-as.data.frame(C.restuans$data)

#Haemagogus janthinomys
key110<-name_suggest(q= 'Haemagogus janthinomys', rank = "species") $key[1]
H.janthinomys<-occ_search(taxonKey = key110, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
H.janthinomys.data<-as.data.frame(H.janthinomys$data)

#Haemagogus leucocelaenus
key111<-name_suggest(q= 'Haemagogus leucocelaenus', rank = "species") $key[1]
H.leucocelaenus<-occ_search(taxonKey = key111, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
H.leucocelaenus.data<-as.data.frame(H.leucocelaenus$data)

#Haemagogus spegazzinii
key112<-name_suggest(q= 'Haemagogus spegazzinii', rank ="species") $key[1]
H.spegazzinii<-occ_search(taxonKey = key112, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
H.spegazzinii.data<-as.data.frame(H.spegazzinii$data)

#Mansonia uniformis
key113<-name_suggest(q='Mansonia uniformis',rank = "species") $key[1]
M.uniformis<-occ_search(taxonKey = key113, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
M.uniformis.data<-as.data.frame(M.uniformis$data)
View(M.uniformis.data)

#Sabethes albiprivus
key114<-name_suggest(q='Sabethes albiprivus', rank = "species") $key[1]
S.albiprivus<-occ_search(taxonKey =key114, limit= 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
S.albiprivus.data<-as.data.frame(S.albiprivus$data)

#Sabethes chloropterus
key115<-name_suggest(q='Sabethes chloropterus', rank = "species") $key[1]
S.chloropterus<-occ_search(taxonKey=key115, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c( 'decimalLatitude', 'decimalLongitude'))
S.chloropterus.data<-as.data.frame(S.chloropterus$data)
View(S.chloropterus.data)

library(rgbif)

################ check limits #####################

#Aedes squamiger
key116<-name_suggest(q='Aedes squamiger', rank = "species") $key[1]
A.squamiger<-occ_search(taxonKey = key116, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
A.squamiger.data<-as.data.frame(A.squamiger$data)
View(A.squamiger.data)

#Coquilettidia perturbans
key117<-name_suggest(q='Coquilettidia perturbans', rank = "species") $key[1]
Co.perturbans<-occ_search(taxonKey = key117, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Co.perturbans.data<-as.data.frame(Co.perturbans$data)
View(Co.perturbans.data)

#Culex salinarius
key118<-name_suggest(q='Culex salinarius', rank = "species") $key[1]
C.salinarius<-occ_search(taxonKey = key118, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
C.salinarius.data<-as.data.frame(C.salinarius$data)
View(C.salinarius.data)

#Culex stigmatosoma
key119<-name_suggest(q='Culex stigmatosoma', rank = "species") $key[1]
C.stigmatosoma<-occ_search(taxonKey = key119, limit = 6000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
C.stigmatosoma.data<-as.data.frame(C.stigmatosoma$data)
View(C.stigmatosoma.data)

#Culex tarsalis
key120<-name_suggest(q='Culex tarsalis', rank = "species") $key[1]
C.tarsalis<-occ_search(taxonKey = key120, limit = 1500, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
C.tarsalis.data<-as.data.frame(C.tarsalis$data)
View(C.tarsalis.data)

#Culex territans
key121<-name_suggest(q='Culex territans', rank = "species") $key[1]
C.territans<-occ_search(taxonKey = key121, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
C.territans.data<-as.data.frame(C.territans$data)
View(C.territans.data)

#Culex thriambus
key122<-name_suggest(q='Culex thriambus', rank = "species") $key[1]
C.thriambus<-occ_search(taxonKey = key122, limit = 2500, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
C.thriambus.data<-as.data.frame(C.thriambus$data)
View(C.thriambus.data)

#Culiseta incidens
key123<-name_suggest(q='Culiseta incidens', rank = "species") $key[1]
Cu.incidens<-occ_search(taxonKey = key123, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.incidens.data<-as.data.frame(Cu.incidens$data)
View(Cu.incidens.data)

#Culiseta impatiens
key124<-name_suggest(q='Culiseta impatiens', rank = "species") $key[1]
Cu.impatiens<-occ_search(taxonKey = key124, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.impatiens.data<-as.data.frame(Cu.impatiens$data)
View(Cu.impatiens.data)

#Culiseta inornata
key125<-name_suggest(q='Culiseta inornata', rank = "species") $key[1]
Cu.inornata<-occ_search(taxonKey = key125, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.inornata.data<-as.data.frame(Cu.inornata$data)
View(Cu.inornata.data)

#Culiseta melanura
key126<-name_suggest(q='Culiseta melanura', rank = "species") $key[1]
Cu.melanura<-occ_search(taxonKey = key126, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.melanura.data<-as.data.frame(Cu.melanura$data)
View(Cu.melanura.data)

#Culiseta morsitans
key127<-name_suggest(q='Culiseta morsitans', rank = "species") $key[1]
Cu.morsitans<-occ_search(taxonKey = key127, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.morsitans.data<-as.data.frame(Cu.morsitans$data)
View(Cu.morsitans.data)

#Culiseta particeps
key128<-name_suggest(q='Culiseta particeps', rank = "species") $key[1]
Cu.particeps<-occ_search(taxonKey = key128, limit = 1600, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
Cu.particeps.data<-as.data.frame(Cu.particeps$data)
View(Cu.particeps.data)

#Mansonia titillans
key129<-name_suggest(q='Mansonia titillans', rank = "species") $key[1]
M.titillans<-occ_search(taxonKey = key129, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
M.titillans.data<-as.data.frame(M.titillans$data)
View(M.titillans.data)

#Orthopodomyia signifera
key130<-name_suggest(q='Orthopodomyia signifera', rank = "species") $key[1]
O.signifera<-occ_search(taxonKey = key130, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
O.signifera.data<-as.data.frame(O.signifera$data)
View(O.signifera.data)

#Psorophora ciliata
key131<-name_suggest(q='Psorophora ciliata', rank = "species") $key[1]
P.ciliata<-occ_search(taxonKey = key131, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
P.ciliata.data<-as.data.frame(P.ciliata$data)
View(P.ciliata.data)

#Psorophora columbiae
key132<-name_suggest(q='Psorophora columbiae', rank = "species") $key[1]
P.columbiae<-occ_search(taxonKey = key132, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
P.columbiae.data<-as.data.frame(P.columbiae$data)
View(P.columbiae.data)

#Psorophora ferox
key133<-name_suggest(q='Psorophora ferox', rank = "species") $key[1]
P.ferox<-occ_search(taxonKey = key133, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
P.ferox.data<-as.data.frame(P.ferox$data)
View(P.ferox.data)

#Psorophora howardii
key134<-name_suggest(q='Psorophora howardii', rank = "species") $key[1]
P.howardii<-occ_search(taxonKey = key134, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
P.howardii.data<-as.data.frame(P.howardii$data)
View(P.howardii.data)

#Uranotaenia sapphirina
key135<-name_suggest(q='Uranotaenia sapphirina', rank = "species") $key[1]
U.sapphirina<-occ_search(taxonKey = key135, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
U.sapphirina.data<-as.data.frame(U.sapphirina$data)
View(U.sapphirina.data)

install.packages("rgbif")
library(rgbif)
#Deinocerites Cancer
key136<-name_suggest(q='Deinocerites Cancer', rank = "species") $key[1]
D.cancer<-occ_search(taxonKey = key136, limit = 1000, hasCoordinate = T, hasGeospatialIssue = F, fields = c('decimalLatitude', 'decimalLongitude'))
D.cancer.data<-as.data.frame(D.cancer$data)
View(D.cancer.data)




