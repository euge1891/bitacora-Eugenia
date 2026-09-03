# Creamos vector temperaturas
temperaturas <- c(18,22,15,25,30)
temperaturas

# Creamos vector temperaturas filtrado 
temperaturas_filtrado <- c()
temperaturas_filtrado

# Recorremos temperaturas y agregamos las temperaturas mayores a 20°C
for (temp in temperaturas) {
  if (temp > 20){
    temperaturas_filtrado <- c(temperaturas_filtrado, temp)
  } 
}

temperaturas_filtrado
