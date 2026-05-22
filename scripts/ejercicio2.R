cat("---- Ejercicio 2: Calidad del Aire en Bogotá ----\n")

# 1. Crear DataFrame
df_aire <- data.frame(
  estacion = c("Carvajal", "Kennedy", "Fontibón", "Suba", "Usaquén"),
  pm25 = c(55, 42, 38, 15, 12)
)

# 2. Resumen descriptivo/técnico
cat("Estructura del DataFrame:\n")
str(df_aire)

# 3. Filtrar estaciones con PM2.5 > 15
df_alerta <- df_aire[df_aire$pm25 > 15, ]

# 4. Crear nueva columna
df_alerta$estado <- "Crítico"

cat("\nEstaciones en alerta:\n")
print(df_alerta)

# 5. Gráfico de barras
barplot(
  df_aire$pm25,
  names.arg = df_aire$estacion,
  main = "PM2.5 promedio diario en Bogotá",
  xlab = "Estación",
  ylab = "PM2.5 (µg/m3)",
  las = 2
)