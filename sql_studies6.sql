--List the actors names and 
--the amount of screenings in each year from the actor table.

SELECT CONCAT(b.first_name,' ',b.last_name) actor_name,
COUNT(z.release_year) year_wise_film
FROM actor b
JOIN film_actor d ON d.actor_id = b.actor_id
JOIN film z ON z.film_id = d.film_id
GROUP BY actor_name
ORDER BY COUNT(z.release_year);