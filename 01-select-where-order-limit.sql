USE sakila;

SELECT first_name, last_name
FROM customer
WHERE active = 1
ORDER BY last_name ASC
LIMIT 10;

-- Filtros úteis no WHERE:
WHERE amount > 5
WHERE title LIKE 'A%'              -- começa com A
WHERE rating IN ('PG', 'G')
WHERE rental_rate BETWEEN 1 AND 3
WHERE return_date IS NULL          -- NULL usa IS, nunca "= NULL"
WHERE rating = 'PG' AND length > 100