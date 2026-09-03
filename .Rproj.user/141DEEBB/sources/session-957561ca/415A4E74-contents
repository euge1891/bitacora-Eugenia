library(here)
library(readr)

# 1. Construir la ruta relativa hacia el archivo CSV
# Estructura esperada: tu_proyecto/data/raw/datos.csv
archivo <- "rotulado_de_alimentos_2026.csv"
ruta_csv <- here("datos", archivo)

# 2. Verificar que el archivo exista
if (!file.exists(ruta_csv)) {
  stop(paste("No se encontró el archivo en:", ruta_csv))
}

# 3. Cargar el archivo CSV
df <- read_csv(ruta_csv)

# 4. Inspección inicial de los datos
cat("--- Archivo cargado exitosamente desde:", basename(ruta_csv), "---\n")
print(spec(df))  # Muestra el tipo de dato asignado a cada columna
head(df)

# 5. Conocer el tipo de datos
str(df)

# 6. Identificar la unidad de observacion
length(unique(df$muestra))

# 7. Identificamos datos faltantes
sum(is.na(df))

# 8. Identificamos datos duplicados
sum(duplicated(df$muestra))
sum(duplicated(df))

