projAUC<-function(test.coords, proj.rast, bg.n=10000, return.bg=F, return.curve=F ) {
#This function uses the AUC package to calculate the AUC of the ROC of a maxent model projected into a new domain using known occurrences in that domain.
#Arguments
#test.coords is the known occurrences in the testing domain. It should be a two column matrix or df of longitude (x) in column 1 and latitude (y) in column 2
#proj.rast is the raster of the projected model in the target area
#bg.n is the number of background points to use, defaults to 1000
#return.bg is whether to return the coordinates of the background pts, defaults to false
#return.curve is a logical determining whether just to return the AUC, or the false and true positive rates across thresholds so that the ROC curve can be calculated. Defaults to false

#Value
#Returns the AUC if return.curve is FALSE
#If return.curve is true, returns a list with the folloiwng elements:
#auc = the AUC of the ROC
#auc.curve = a two column vector with false positive rate (fpr, or 1-specificity) in column 1 and true positive rate (tpr or sensitivity) in column 2. plotting tpr as a function of fpr gives the ROC curve. You can use the plot.auc.roc function to create a quick plot

require(AUC)



#select background points and the values at them
bg.pts<-sampleRandom(proj.rast, bg.n, xy=T)
#extract proj values at presences
pres.pts<-extract(proj.rast,test.coords)

pts<-c(pres.pts,bg.pts[,3])
pt.ind<-as.factor(c(rep(1,length(pres.pts)),rep(0,nrow(bg.pts))))

pred.asdf<-roc(pts,pt.ind)

if (return.curve==T) {
	return(list("auc"=auc(pred.asdf),"auc.curve"=cbind(pred.asdf$fpr,pred.asdf$tpr)))	
} else return(auc(pred.asdf))


}


plot.auc.roc<-function(auc.list=NULL, fpr=NULL,tpr=NULL,auc.col="black",auc.lwd=2,ref.col="grey70",ref.lwd=1,plot.ref=T) {
	#function plots the Roc curve for a list arising from projAUC, or fpr (1-specificty) and tpr (sensitivity) values
	#auc.list = list ouput of projAUC
	#fpr = vector of false positive rates (1-specificity) if auc.list not supplied
	#tpr = vecture of true positive rates (sensitivity) if auc.list not supplied
	#The other parameters control the colour, width  of the ROC line an ref (1:1) line.
	if (class(auc.list)=="list") {
		
		if (names(auc.list)[2]=="auc.curve") {
			fpr<-auc.list$auc.curve[,1]
			tpr<-auc.list$auc.curve[,2]
		} else stop("auc.list is incorrect format")
	} 
	plot(fpr,tpr,type="l",xlab="1-Specificity",ylab="Sensitivity")
	if (plot.ref==T) lines(c(0,1),c(0,1),col=ref.col,lwd=ref.lwd)
	
	
	
}
