--How many movies are there in the film table 
--with at least 3 'a' or 'A' characters in the title?

SELECT title
FROM film 
WHERE title ILIKE '%a%a%a%';