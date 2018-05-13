#if(!file.exists("data")){
#  dir.create("data")
#}
#URL<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
#download.file(URL,destfile = "./data/camaras.csv")
#camData<-read.table("./data/camaras.csv",sep = ',',header = TRUE)

#podemos utilizar ahorrandonos parametros read.csv('ruta')

##Leer archivo y crear columna con datos normalizados
camData<-read.csv("./data/camaras.csv")
camData<-cbind(camData,rnorm(80))
names(camData)[7]<-'rnorm()'
camData<-camData[order(camData$rnorm,decreasing = T),]

#mostrando determinada cantidad de datos
head(camData,5)
#mostrando un resumen de los datos
summary(camData)

#mostrarando la frecuencia de valores
table(camData$direction)

#Cargaremos otro paquete de datos

adm<-as.data.frame(UCBAdmissions)
summary(adm)
#ahora generaremos tabuladores de analisis
tab<-xtabs(Freq~Gender+Admit,data=adm)
