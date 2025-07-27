# Exploración y Consultas SQL en Base de Datos de Alquiler de Películas

Este repositorio documenta el análisis de la base de datos "dvdrental", utilizada para gestionar un sistema de alquiler de películas. El proyecto incluye:

- Inspección de estructura y relaciones entre tablas
- Validación de integridad de datos
- Consultas SQL aplicadas a casos reales del negocio

## Objetivo

Comprender el modelo relacional de dvdrental y realizar consultas que permitan extraer información valiosa para la gestión del negocio, incluyendo rentas, ventas, popularidad de películas y comportamiento de clientes.

## Tablas clave

- `actor`, `film`, `customer`, `rental`, `payment`, `inventory`, `store`, `staff`, `category`, `language`, entre otras.

## Integridad de datos

- Se verificaron valores nulos en todas las tablas.
- Resultado: **0 valores nulos**, lo que indica alta calidad y confiabilidad de los datos.

## Consultas SQL desarrolladas

1. Lista completa de actores (nombres y apellidos)
2. Nombre completo de actores en una sola columna
3. Actores cuyo nombre empieza con "D"
4. Actores duplicados por nombre
5. Costo máximo de renta de películas
6. Películas con el costo máximo de renta
7. Número de películas por tipo de audiencia (`rating`)
8. Películas excluyendo clasificación "R" y "NC-17"
9. Clientes por tienda (`store_id`)
10. Película más rentada del catálogo
11. Películas que nunca han sido rentadas
12. Clientes que nunca han rentado (ninguno)
13. Actores que han actuado en más de 30 películas
14. Ventas totales por tienda (suma de `amount`)
15. Clientes que rentaron una misma película más de una vez

## Herramientas utilizadas

- SQL Server  
- Management Studio  
- Exploración manual + pantallas adjuntas  
- Modelo de datos relacional `dvdrental`

## Conclusión

La base de datos `dvdrental` es un excelente escenario para aplicar SQL práctico con propósito analítico. Las consultas implementadas permiten:

- Identificar tendencias de popularidad
- Evaluar el rendimiento comercial por tienda
- Detectar oportunidades de mejora en el catálogo
- Comprender hábitos de clientes y patrones de renta
