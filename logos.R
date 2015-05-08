#LOGO
setwd("/Users/iMac6/opendatabolivia.github.io/assets/img")
png("logo.png",width=400,height=300,bg = "transparent")
par(mai=c(0,0,0,0))
curve(dnorm(x, mean = 0, sd = 1),axes=F,xlim=c(-3,3),ylim=c(0,0.7),xlab="",ylab="",lwd=2)
curve(dnorm(x, mean = 0.5, sd = 1.5),add=T,col="green",lwd=2)
curve(dnorm(x, mean = -0.5, sd = 0.7),add=T,col="red",lwd=2)
dev.off()

setwd("/Users/iMac6/opendatabolivia.github.io/assets/img/project")
#Proyectos
##############
###1 CENSO
p1 <- hist(rnorm(500,4),breaks=50) # centered at 4 
p2 <- hist(rnorm(500,6),breaks=50) # centered at 6 
p3 <- hist(rnorm(200,5,1.5),breaks=60) # centered at 6 
png("censo.png",width=600,height=450,bg = "#eae9dc")
par(mai=c(0,0,0,0))
plot( p1, col="#51748a", xlim=c(1,9),main="",axes=F,xlab="",ylab="") # first histogram 
plot( p2, col="#8a8451", xlim=c(1,9), add=T) # second
plot( p3, col="#84518a", xlim=c(1,9), add=T) # second
text(5,20,"CENSOS DE",cex=4.5,col="#00004e",font=2)
text(5,15,"POBLACION",cex=4.5,col="#00004e",font=2)
text(5,10,"Y VIVIENDA",cex=4.5,col="#00004e",font=2)
box()
dev.off()

##############
###2 Encuestas de hogares
attach(mtcars)
png("hogares.png",width=600,height=450,bg = "#e1eef8")
par(mai=c(0,0,0,0))
par(mfrow=c(2,2))
boxplot(data.frame(matrix(rnorm(100),10,5)),col=c("gold","darkgreen"),axes=F,notch=TRUE)
box()
plot(sort(rnorm(100)),sort(rnorm(100)),col="blue",axes=F,ylab="",xlab="")
box()
curve(dnorm(x, mean = 0, sd = 1),axes=F,xlim=c(-3,3),ylim=c(0,0.7),xlab="",ylab="",lwd=2)
curve(dnorm(x, mean = 0.5, sd = 1.5),add=T,col="green",lwd=2)
curve(dnorm(x, mean = -0.5, sd = 0.7),add=T,col="red",lwd=2)
box()
plot(0,type="n",axes=F,xlim=c(0,10),ylim=c(0,50))
text(5,40,"ENCUESTAS",cex=4.5,col="#00004e",font=2)
text(5,25,"DE HOGARES",cex=4.5,col="#00004e",font=2)
text(5,10,"1999 - 2013",cex=4.5,col="#00004e",font=2)
box()
dev.off()

p1 <- hist(rnorm(500,4),breaks=50) # centered at 4 
p2 <- hist(rnorm(500,6),breaks=50) # centered at 6 
p3 <- hist(rnorm(200,5,1.5),breaks=60) # centered at 6 

plot( p1, col="#51748a", xlim=c(1,9),main="",axes=F,xlab="",ylab="") # first histogram 
plot( p2, col="#8a8451", xlim=c(1,9), add=T) # second
plot( p3, col="#84518a", xlim=c(1,9), add=T) # second
text(5,20,"ENCUESTAS",cex=4.5,col="#00004e",font=2)
text(5,15,"DE HOGARES",cex=4.5,col="#00004e",font=2)
text(5,10,"1999 - 2013",cex=4.5,col="#00004e",font=2)
box()
dev.off()

##############
###3 Registros Administrativos
require(grDevices)
png("registros.png",width=600,height=450,bg = "#f7f7f7")
par(mai=c(0,0,0,0))
pie(pie.sales,label="",) # default colours
text(-1.3,0.8,"REGISTROS",cex=4.5,col="#00004e",font=2,pos=4)
text(-1.3,0.4,"ADMINISTRATIVOS",cex=4.5,col="#00004e",font=2,pos=4)
box()
dev.off()
##############
##4 Encuesta nacional de Demografia y Salud
#install.packages("plotrix")
png("endsa.png",width=600,height=450,bg = "#fdeaef")
par(mai=c(0,0,0,0))
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"))
text(0,65,"ENCUESTA NACIONAL",cex=4.5,col="#00004e",font=2,pos=4)
text(0,55,"DE DEMOGRAFÍA",cex=4.5,col="#00004e",font=2,pos=4)
text(0,45,"Y SALUD",cex=4.5,col="#00004e",font=2,pos=4)
text(12,10,"1989 - 2008",cex=4.5,col="#00004e",font=2,pos=4)
box()
dev.off()

##5 Latinobarometro
install.packages("aplpack")
library(aplpack)

p1 <- hist(rnorm(500,4),breaks=50) # centered at 4 
p2 <- hist(rnorm(500,6),breaks=50) # centered at 6 
p3 <- hist(rnorm(200,5,1.5),breaks=60) # centered at 6 
png("latinobarometro.png",width=600,height=450,bg = "#e1f8f7")
par(mai=c(0,0,0,0))
faces(matrix(rnorm(90),9,10),labels="")
text(5,120,"LATINOBAROMETRO",cex=4.5,col="#00004e",font=2)
text(5,50,"1999 - 2012",cex=3,col="#00004e",font=2)
box()
dev.off()

