SELECT rating, COUNT(*) AS total
FROM film
GROUP BY rating
HAVING COUNT(*) > 200
ORDER BY total DESC;

-- Lembre: WHERE filtra linhas antes de agrupar. HAVING filtra grupos depois.