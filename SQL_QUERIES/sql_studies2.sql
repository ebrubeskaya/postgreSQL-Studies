--From the movie table, list the 6 longest movies starting with 
--the character 'M' and the lowest replacement_cost.

SELECT title, length, replacement_cost
FROM film
WHERE title LIKE 'M%'
ORDER BY length DESC, replacement_cost
LIMIT 6;
