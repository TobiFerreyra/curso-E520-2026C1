#Ejercicio 1:

#Se espera que la relación sea:
dep_time = sched_dep_time + dep_delay

Sin embargo, hay un detalle técnico en este dataset: dep_time y sched_dep_time no son números continuos, sino que están en formato HHMM (ej. 1709 para las 17:09). Para poder trabajar matemáticamente con ellos, habría que convertirlos a una modalidad horaria.

#Ejercicio 2:

# Por nombre directo
flights |> select(dep_time, dep_delay, arr_time, arr_delay)

# Usando rangos
flights |> select(dep_time:arr_delay)

# Por coincidencia de texto
flights |> select(starts_with("dep"), starts_with("arr"))

# Por terminación
flights |> select(ends_with("time"), ends_with("delay"), -contains("sched"), -air_time)

#Ejercicio 3:

Si especifico el nombre de la misma variable varias veces, select() simplemente la va a ignorar tras la primera aparición. No duplica la columna en el resultado final; la mantiene una sola vez en la posición donde fue llamada por primera vez.

#Ejercicio 4:

La función any_of() permite seleccionar columnas basándose en un vector de caracteres, incluso si algunos nombres del vector no existen en el dataframe.
Es útil porque evita que el codigo se "rompa" si falta una variable. Es lo opuesto a all_of

#Ejercicio 5: 

El resultado de flights |> select(contains("TIME")) selecciona las columnas aunque estén en minúsculas.

Lo bueno de los select helpers como contains(), starts_with() y ends_with() es que ignoran las mayúsculas/minúsculas (ignore.case = TRUE).

Para cambiar el default: Debes agregar el argumento ignore.case = FALSE.

#Ejercicio 6:

flights |> 
  relocate(air_time_min = air_time)

#Ejercicio 7

Al ejecutar select(tailnum), se crea un nuevo dataframe que solo contiene una columna. Cuando el código llega a arrange(arr_delay), la columna arr_delay ya no existe en la corrida de datos. Para arreglarlo, debería incluir arr_delay en el select() o hacer el arrange() antes del select().

