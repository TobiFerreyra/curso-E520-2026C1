#Ejercicio único:
  
#Código funcionando.
    
  flights |>
  filter(dest == "IAH") |>
  group_by(year, month, day) |>
  summarize(
    n = n(),
    delay = mean(arr_delay, na.rm = TRUE)
  ) |>
  filter(n > 10)
  
  
#Código 2:
  
  flights |>
    filter(
      carrier == "UA",
      dest %in% c("IAH", "HOU"),
      sched_dep_time > 0900,
      sched_arr_time < 2000
    ) |>
    group_by(flight) |>
    summarize(
      delay = mean(arr_delay, na.rm = TRUE),
      cancelled = sum(is.na(arr_delay)),
      n = n()
    ) |>
    filter(n > 10)
  
#19 Joins
  
  #En el primer bloque de código, dplyr fusiona las columnas key de ambas tablas en una sola.
  
  #Si el valor existe en la tabla X, lo usa. Si no existe en X pero sí en Y (como el caso del 4), "rellena" el hueco.
  
  #Es útil porque te da una columna limpia y unificada que representa el identificador único para todos los datos. No te importa de qué tabla vino el número, solo que el número 4 existe en el universo de tus datos.
  
  #El comportamiento con keep = TRUE
  #Al usar esta opción, le estoy pidiendo a R que conserve la procedencia de cada llave.
  
  #¿Qué hace?: Mantiene la columna key de la tabla X (key.x) y la de la tabla Y (key.y) por separado.
  
  #Entonces llega el problema:    
    #En la fila 3, el key.y es NA porque el valor 3 solo existía en X.
  
  #En la fila 4, el key.x es NA porque el valor 4 solo existía en Y.
  
  # Es fundamental cuando se necesita revisar los datos para ver exactamente qué registros faltan en qué tabla. Te permite ver donde está el "hueco" donde la unión no encontró pareja.
    
  