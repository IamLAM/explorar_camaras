if(!file.exists("data")){
  dir.create("data")
}

URL<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"

download.file(URL,destfile = "./data/camaras.csv")

camData<-read.table("./data/camaras.csv",sep = ',',header = TRUE)

#podemos utilizar ahorrandonos parametros read.csv('ruta')