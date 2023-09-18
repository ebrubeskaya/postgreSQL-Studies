--Which rating category has the highest number
--of movies in the film table?

SELECT COUNT(*) rating FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;
