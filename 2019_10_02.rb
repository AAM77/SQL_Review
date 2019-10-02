-- SELECT customer_id, amount FROM payment
-- WHERE amount NOT BETWEEN 8 AND 9;

-- SELECT amount, payment_date FROM payment
-- WHERE payment_date BETWEEN '2007-02-07' AND '2007-02-15';

-- SELECT amount, payment_date FROM payment
-- WHERE payment_date NOT BETWEEN '2007-02-07' AND '2007-02-15';


SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id IN (7, 10, 13)
ORDER BY return_date DESC;

-- similar to --

SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id = 7
OR customer_id = 13
OR customer_id = 10
ORDER BY return_date DESC;

-- other examples:
SELECT * FROM payment
WHERE amount IN (7.99, 8.99);
