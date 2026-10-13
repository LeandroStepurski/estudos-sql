-- INNER JOIN: só o que existe nas duas tabelas
SELECT c.first_name, r.rental_date
FROM customer c
INNER JOIN rental r ON r.customer_id = c.customer_id;

-- LEFT JOIN: tudo da esquerda, mesmo sem par na direita
SELECT f.title, i.inventory_id
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id;

-- Achar quem NÃO tem par (filmes sem estoque)
SELECT f.title
FROM film f
LEFT JOIN inventory i ON i.film_id = f.film_id
WHERE i.inventory_id IS NULL;


-- JOIN + GROUP BY + HAVING + ORDER BY juntos
SELECT cat.name AS categoria, COUNT(*) AS total_alugueis
FROM rental r
INNER JOIN inventory i      ON i.inventory_id = r.inventory_id
INNER JOIN film_category fc ON fc.film_id = i.film_id
INNER JOIN category cat     ON cat.category_id = fc.category_id
GROUP BY cat.category_id, cat.name
HAVING COUNT(*) > 1000
ORDER BY total_alugueis DESC
LIMIT 5;