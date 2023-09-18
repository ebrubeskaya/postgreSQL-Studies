--Show the number of movies rented for each rating value.

SELECT film.rating, COUNT(inventory.film_id)
FROM rental JOIN inventory 
ON rental.inventory_id=inventory.inventory_id
RIGHT JOIN film
ON inventory.film_id=film.film_id
GROUP BY film.rating
ORDER BY COUNT(inventory.film_id) DESC;

