## Autores: Luis Parra, Javier Fontalvo, Diego Reyes
install.packages("dplyr")
install.packages("ggplot2")
install.packages("hrbrthemes")
library(readxl)
library(dplyr)
library(ggplot2)
library(hrbrthemes)
#Luis Parra- Se cargan los datos del dataset montado en la carpeta local del usuario
Remisiones_del_hospital <- read_excel("C:/Users/pluis/OneDrive - UNIVERSIDAD AUTONOMA DEL CARIBE/Remisiones del hospital.xlsx")
View(Remisiones_del_hospital)

#Se transforma a un dataframe para manejar los datos.
Remisiones_del_hospital <- as.data.frame(Remisiones_del_hospital)

#Luis Parra - Como la pregunta de investigación es ver la cantidad de remisiones 
#que tuvo cada eps, lo primero que se hace es crear un nuevo objeto que almacena 
#las eps que son de tipo String, luego convertirlo a factor, reemplazar los valores 
#del dataframe original por los ya procesados y aplicar un summary a la columna de 
#eps y muestra las cantidades que tiene cada eps.

glimpse(Remisiones_del_hospital)
str(Remisiones_del_hospital)
summary(Remisiones_del_hospital)
E.P.S <- Remisiones_del_hospital$E.P.S
E.P.S <- as.factor(E.P.S)
Remisiones_del_hospital$E.P.S <- E.P.S
summary(Remisiones_del_hospital$E.P.S)

#Luis Parra - Graficar las eps 
barplot(table(Remisiones_del_hospital$E.P.S),
        main="Frecuencia de Remisiones",
        xlab="E.P.S",
        ylab="Remisiones",
        col="blue",
        density=20)

##