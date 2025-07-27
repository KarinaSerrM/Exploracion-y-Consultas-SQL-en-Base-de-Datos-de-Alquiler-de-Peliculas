-- Exploración de las tablas en la BD dvdrental
SELECT TOP 10 * FROM dbo.actor;
SELECT TOP 10 * FROM dbo.address;
SELECT TOP 10 * FROM dbo.category;
SELECT TOP 10 * FROM dbo.city;
SELECT TOP 10 * FROM dbo.country;
SELECT TOP 10 * FROM dbo.customer;
SELECT TOP 10 * FROM dbo.film;
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'film' AND TABLE_SCHEMA = 'dbo';
SELECT TOP 10 * FROM dbo.film_actor;
SELECT TOP 10 *FROM dbo.film_category;
SELECT TOP 10 * FROM dbo.inventory;
SELECT TOP 10 * FROM dbo.language;
SELECT TOP 10 * FROM dbo.payment;
SELECT TOP 10 * FROM dbo.rental;
SELECT TOP 10 * FROM dbo.staff;
SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'staff' AND TABLE_SCHEMA = 'dbo';
SELECT TOP 10 * FROM dbo.store;


--Verificación de valores NULOS en las tablas
-- Verificar si hay valores NULOS en 'dbo.actor'
SELECT
    SUM(CASE WHEN actor_id IS NULL THEN 1 ELSE 0 END) AS Nulos_actor_id,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS Nulos_first_name,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS Nulos_last_name,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS Nulos_last_update
FROM dbo.actor;

-- Verificar si hay valores NULOS en 'dbo.address'
SELECT COUNT(*) AS TotalFilas,
    SUM(CASE WHEN address_id IS NULL THEN 1 ELSE 0 END) AS Nulos_address_id,
    SUM(CASE WHEN address IS NULL THEN 1 ELSE 0 END) AS Nulos_address,
    SUM(CASE WHEN address2 IS NULL THEN 1 ELSE 0 END) AS Nulos_address2,
    SUM(CASE WHEN district IS NULL THEN 1 ELSE 0 END) AS Nulos_district,
    SUM(CASE WHEN city_id IS NULL THEN 1 ELSE 0 END) AS Nulos_city_id,
    SUM(CASE WHEN postal_code IS NULL THEN 1 ELSE 0 END) AS Nulos_postal_code,
    SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS Nulos_phone,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS Nulos_last_update
FROM dbo.address;

-- Verificar si hay valores NULOS en 'dbo.category'
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN category_id IS NULL THEN 1 ELSE 0 END) AS category_id_null_count,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS name_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.category;

-- Verificar si hay valores NULOS en 'dbo.city'
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN city_id IS NULL THEN 1 ELSE 0 END) AS city_id_null_count,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS city_null_count,
    SUM(CASE WHEN country_id IS NULL THEN 1 ELSE 0 END) AS country_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.city;

-- Verificar si hay valores NULOS en 'dbo.country'
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN country_id IS NULL THEN 1 ELSE 0 END) AS country_id_null_count,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.country;

-- Verificar si hay valores NULOS en 'dbo.customer'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_null_count,
    SUM(CASE WHEN store_id IS NULL THEN 1 ELSE 0 END) AS store_id_null_count,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS first_name_null_count,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS last_name_null_count,
    SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS email_null_count,
    SUM(CASE WHEN address_id IS NULL THEN 1 ELSE 0 END) AS address_id_null_count,
    SUM(CASE WHEN activebool IS NULL THEN 1 ELSE 0 END) AS activebool_null_count,
    SUM(CASE WHEN create_date IS NULL THEN 1 ELSE 0 END) AS create_date_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count,
    SUM(CASE WHEN active IS NULL THEN 1 ELSE 0 END) AS active_null_count
FROM dbo.customer;

-- Verificar si hay valores NULOS en 'dbo.film'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN film_id IS NULL THEN 1 ELSE 0 END) AS film_id_null_count,
    SUM(CASE WHEN title IS NULL THEN 1 ELSE 0 END) AS title_null_count,
    SUM(CASE WHEN description IS NULL THEN 1 ELSE 0 END) AS description_null_count,
    SUM(CASE WHEN release_year IS NULL THEN 1 ELSE 0 END) AS release_year_null_count,
    SUM(CASE WHEN language_id IS NULL THEN 1 ELSE 0 END) AS language_id_null_count,
    SUM(CASE WHEN rental_duration IS NULL THEN 1 ELSE 0 END) AS rental_duration_null_count,
    SUM(CASE WHEN rental_rate IS NULL THEN 1 ELSE 0 END) AS rental_rate_null_count,
    SUM(CASE WHEN length IS NULL THEN 1 ELSE 0 END) AS length_null_count,
    SUM(CASE WHEN replacement_cost IS NULL THEN 1 ELSE 0 END) AS replacement_cost_null_count,
    SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS rating_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count,
    SUM(CASE WHEN special_features IS NULL THEN 1 ELSE 0 END) AS special_features_null_count,
    SUM(CASE WHEN fulltext IS NULL THEN 1 ELSE 0 END) AS fulltext_null_count
FROM dbo.film;

-- Verificar si hay valores NULOS en 'dbo.film_actor'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN actor_id IS NULL THEN 1 ELSE 0 END) AS actor_id_null_count,
    SUM(CASE WHEN film_id IS NULL THEN 1 ELSE 0 END) AS film_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.film_actor;

-- Verificar si hay valores NULOS en 'dbo.film_category'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN film_id IS NULL THEN 1 ELSE 0 END) AS film_id_null_count,
    SUM(CASE WHEN category_id IS NULL THEN 1 ELSE 0 END) AS category_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.film_category;

-- Verificar si hay valores NULOS en 'dbo.inventory'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN inventory_id IS NULL THEN 1 ELSE 0 END) AS inventory_id_null_count,
    SUM(CASE WHEN film_id IS NULL THEN 1 ELSE 0 END) AS film_id_null_count,
    SUM(CASE WHEN store_id IS NULL THEN 1 ELSE 0 END) AS store_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.inventory;

-- Verificar si hay valores NULOS en 'dbo.language'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN language_id IS NULL THEN 1 ELSE 0 END) AS language_id_null_count,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS name_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.language;

-- Verificar si hay valores NULOS en 'dbo.payment'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN payment_id IS NULL THEN 1 ELSE 0 END) AS payment_id_null_count,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_null_count,
    SUM(CASE WHEN staff_id IS NULL THEN 1 ELSE 0 END) AS staff_id_null_count,
    SUM(CASE WHEN rental_id IS NULL THEN 1 ELSE 0 END) AS rental_id_null_count,
    SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS amount_null_count,
    SUM(CASE WHEN payment_date IS NULL THEN 1 ELSE 0 END) AS payment_date_null_count
FROM dbo.payment;

-- Verificar si hay valores NULOS en 'dbo.rental'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN rental_id IS NULL THEN 1 ELSE 0 END) AS rental_id_null_count,
    SUM(CASE WHEN rental_date IS NULL THEN 1 ELSE 0 END) AS rental_date_null_count,
    SUM(CASE WHEN inventory_id IS NULL THEN 1 ELSE 0 END) AS inventory_id_null_count,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_null_count,
    SUM(CASE WHEN return_date IS NULL THEN 1 ELSE 0 END) AS return_date_null_count,
    SUM(CASE WHEN staff_id IS NULL THEN 1 ELSE 0 END) AS staff_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.rental;

-- Verificar si hay valores NULOS en 'dbo.staff'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN staff_id IS NULL THEN 1 ELSE 0 END) AS staff_id_null_count,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS first_name_null_count,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS last_name_null_count,
    SUM(CASE WHEN address_id IS NULL THEN 1 ELSE 0 END) AS address_id_null_count,
    SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS email_null_count,
    SUM(CASE WHEN store_id IS NULL THEN 1 ELSE 0 END) AS store_id_null_count,
    SUM(CASE WHEN active IS NULL THEN 1 ELSE 0 END) AS active_null_count,
    SUM(CASE WHEN username IS NULL THEN 1 ELSE 0 END) AS username_null_count,
    SUM(CASE WHEN password IS NULL THEN 1 ELSE 0 END) AS password_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count,
    SUM(CASE WHEN picture IS NULL THEN 1 ELSE 0 END) AS picture_null_count
FROM dbo.staff;

-- Verificar si hay valores NULOS en 'dbo.store'
SELECT COUNT(*) AS total_rows,
    SUM(CASE WHEN store_id IS NULL THEN 1 ELSE 0 END) AS store_id_null_count,
    SUM(CASE WHEN manager_staff_id IS NULL THEN 1 ELSE 0 END) AS manager_staff_id_null_count,
    SUM(CASE WHEN address_id IS NULL THEN 1 ELSE 0 END) AS address_id_null_count,
    SUM(CASE WHEN last_update IS NULL THEN 1 ELSE 0 END) AS last_update_null_count
FROM dbo.store;

-- Consultas SQL para la Base de Datos de Alquiler de Películas
-- Seleccionar el nombre y apellido de los actores
SELECT first_name, last_name 
FROM dbo.actor;

--Seleccionar el nombre completo del actor en una sola columna
SELECT CONCAT(first_name, ' ', last_name) 
AS full_name 
FROM dbo.actor;

--Seleccionar los actores que su nombre empieza con "D"
SELECT first_name, last_name 
FROM dbo.actor 
WHERE first_name LIKE 'D%';

--¿Tenemos algún actor con el mismo nombre?
SELECT first_name, last_name, 
COUNT(*) AS name_count 
FROM dbo.actor 
GROUP BY first_name, last_name 
HAVING COUNT(*) > 1;

--¿Cuál es el costo máximo de renta de una película?
SELECT MAX(rental_rate) 
AS max_rental_cost 
FROM dbo.film;

--¿Cuáles son las películas que fueron rentadas con ese costo?
SELECT title, rental_rate 
FROM dbo.film 
WHERE rental_rate = (SELECT MAX(rental_rate) 
FROM dbo.film);

--¿Cuántas películas hay por el tipo de audiencia (rating)?
SELECT rating, 
COUNT(film_id) 
AS movie_count 
FROM dbo.film GROUP BY rating;

--Selecciona las películas que no tienen un rating R o NC-17
SELECT title, rating 
FROM dbo.film 
WHERE rating NOT IN ('R', 'NC-17');

--¿Cuántos clientes hay en cada tienda?
SELECT store_id, 
COUNT(customer_id) AS customer_count 
FROM dbo.customer 
GROUP BY store_id;

-- ¿Cuál es la película que más veces se rentó?
SELECT TOP 1 f.title, COUNT(*) AS veces_rentada
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY f.film_id, f.title
ORDER BY veces_rentada DESC;

--¿Qué películas no se han rentado?
SELECT f.title
FROM dbo.film AS f
LEFT JOIN dbo.inventory AS i ON f.film_id = i.film_id
LEFT JOIN dbo.rental AS r ON i.inventory_id = r.inventory_id
WHERE r.rental_id IS NULL;

--¿Qué clientes no han rentado ninguna película?
SELECT c.customer_id, c.first_name, c.last_name
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
WHERE r.rental_id IS NULL;

--¿Qué actores han actuado en más de 30 películas?
SELECT
    a.first_name, a.last_name,
    COUNT(fa.film_id) AS movie_count
FROM dbo.actor AS a
JOIN dbo.film_actor AS fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING COUNT(fa.film_id) > 30;

-- Muestra las ventas totales por tienda
SELECT s.store_id,
    SUM(CAST(p.amount AS decimal(10, 2))) AS total_sales
FROM dbo.payment p
JOIN dbo.staff s ON p.staff_id = s.staff_id
GROUP BY s.store_id;

--Muestra los clientes que rentaron una película más de una vez
SELECT c.first_name, c.last_name, f.title,
    COUNT(*) AS rental_count
FROM dbo.customer AS c
JOIN dbo.rental AS r ON c.customer_id = r.customer_id
JOIN dbo.inventory AS i ON r.inventory_id = i.inventory_id
JOIN dbo.film AS f ON i.film_id = f.film_id
GROUP BY c.customer_id, c.first_name, c.last_name, f.title
HAVING COUNT(*) > 1;