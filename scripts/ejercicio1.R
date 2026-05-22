cat("---- Ejercicio 1: Hidrología del Río Magdalena ----\n")

# 1. Colección de estaciones
estaciones <- c(
  "Honda",
  "Puerto Berrío",
  "Barrancabermeja",
  "Puerto Wilches",
  "Calamar"
)

# 2. Colección paralela de caudales en m3/s
caudales_m3s <- c(1500, 2100, 2800, 3200, 4500)

# 3. Estadísticos básicos
caudal_maximo <- max(caudales_m3s)
caudal_promedio <- mean(caudales_m3s)

cat("Caudal máximo registrado:", caudal_maximo, "m3/s\n")
cat("Caudal promedio:", caudal_promedio, "m3/s\n")

# 4. Vectorización: conversión a litros por segundo
caudales_ls <- caudales_m3s * 1000

# 5. Imprimir resultado
cat("Caudales en litros por segundo:\n")
print(caudales_ls)