-- EJERCICIO 1. CREACIÓN DE UNA BASE DE DATOS DE PELÍCULAS EXTRAÍDAS DE UN API

-- FASE 4: CONSULTAS SOBRE LA BASE DE DATOS pelis

USE pelis;

-- ¿Cuántas películas tienen una duración superior a 120 minutos?
SELECT COUNT(*) AS pelis_con_mas_de_120_mins 
FROM pelis 
WHERE duracion > 120 
ORDER BY duracion DESC;

-- ¿Cuántas películas incluyen subtítulos en español?
SELECT COUNT(*) AS pelis_con_subtitulos_en_español 
FROM pelis 
WHERE subtitulos LIKE "%es%";

-- ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(*) AS pelis_contenido_adulto 
FROM pelis 
WHERE adultos = 1;

-- ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo AS peli_mas_antigua , MIN(año) AS año
FROM pelis;

-- Muestra el promedio de duración de las películas agrupado por género.
SELECT genero, ROUND(AVG(duracion), 0) AS promedio_duracion_por_genero 
FROM pelis 
GROUP BY genero;

-- ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT año, COUNT(*) AS pelis_por_año
FROM pelis
GROUP BY año
ORDER BY pelis_por_año desc;

-- ¿Cuál es el año con más películas en la base de datos
SELECT año AS año_con_mas_pelis, COUNT(*) AS año
FROM pelis
GROUP BY año
ORDER BY año desc
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(*) AS cantidad_pelis
FROM pelis
GROUP BY genero
ORDER BY cantidad_pelis DESC;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra).
SELECT * 
FROM pelis
WHERE titulo LIKE "%Godfather%";



