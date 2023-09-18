--For all movies rated “NC_17” list the number of rentals.

SELECT inventory.film_id, COUNT(inventory.film_id)
FROM rental JOIN inventory
ON rental.inventory_id=inventory.inventory_id
JOIN film
ON inventory.film_id=film.film_id
WHERE rating='NC-17'
GROUP BY inventory.film_id
ORDER BY inventory.film_id;