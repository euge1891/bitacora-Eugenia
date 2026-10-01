# Ejercicio encuesta - Cantina de la facultad

library(tibble)

datos <- tibble(
  
  id = c(1, 2, 3, 4, 5),
  
  frecuencia = c(
    "4 a 8 veces",
    "+ 8 veces",
    "nunca",
    "4 a 8 veces",
    "1 a 3 veces"
  ),
  
  prod_cafe = c(0, 0, NA, 0, 1),
  
  prod_comida = c(1, 1, NA, 1, 1),
  
  prod_frias = c(1, 0, NA, 1, 0),
  
  prod_otros = c(1, 1, NA, 1, 0),
  
  atencion = c(3, 5, NA, 5, 2),
  
  pago_efectivo = c(0, 0, NA, 0, 1),
  
  pago_tarjeta = c(1, 1, NA, 0, 0),
  
  pago_transferencia = c(0, 0, NA, 1, 0),
  
  fechanac = as.Date(
    c(
      "11/12/2005",
      "07/09/2016",
      "26/01/2006",
      "29/08/2005",
      "28/09/1891"
    ),
    format = "%d/%m/%Y"
  ),
  
  mejora = c(
    "nada",
    "tiempo de espera",
    "no sabe no responde",
    "menos condimentos",
    "mala relacion calidad - precio"
  )
)

datos

datos$frecuencia <- factor(
  datos$frecuencia,
  levels = c(
    "nunca",
    "1 a 3 veces",
    "4 a 8 veces",
    "+ 8 veces"
  ),
  ordered = TRUE
)
