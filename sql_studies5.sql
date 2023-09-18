--Show over 200 top selling customers.

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount)>200
ORDER BY SUM(amount) DESC 
LIMIT 1;
