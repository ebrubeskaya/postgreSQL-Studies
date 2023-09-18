--What is the name of the customer who makes 
--the most purchases in the customer table?

SELECT SUM(amount), customer.firsT_name, customer.last_name
FROM payment
JOIN customer ON customer.customer_id=payment.customer_id
GROUP BY payment.customer_id,customer.firsT_name, customer.last_name
ORDER BY SUM(amount) DESC 
LIMIT 1;