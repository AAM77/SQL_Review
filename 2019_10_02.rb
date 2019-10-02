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



--------------------------------------

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%y';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%er%';

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%';

SELECT first_name, last_name
FROM customer
WHERE first_name NOT LIKE 'Jen%';


--------------------------------------------------------

SELECT COUNT(amount)
FROM payment
WHERE amount > 5;

--------------------------------------------------------

SELECT COUNT(first_name)
FROM actor
WHERE first_name LIKE 'P%' OR first_name LIKE 'p%';

--------------------------------------------------------

SELECT COUNT(DISTINCT district) from address;

--------------------------------------------------------

SELECT DISTINCT district from address
ORDER BY district;

--------------------------------------------------------

SELECT COUNT(*)
FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

---------------------------------------------------------


SELECT title
FROM film
WHERE
title LIKE 'Truman%'
OR
title LIKE 'truman%'
OR
title LIKE '%Truman'
OR
title LIKE '%truman'
OR
title LIKE '%Truman%'
OR
title LIKE '%truman%';


-------------------SAME AS--------------------------------------

SELECT COUNT(title)
FROM film
WHERE
title LIKE '%Truman%'
OR
title LIKE '%truman%';


--- ROUND & AVG ----------------------------
SELECT ROUND(AVG(amount),2) FROM payment;

--- MIN ------------------------------------
SELECT MIN(amount) FROM payment;

--- MAX ------------------------------------
SELECT MAX(amount) FROM payment;

--- SUM ------------------------------------
SELECT SUM(amount) FROM payment;

--- ROUND ----------------------------------
SELECT ROUND(SUM(amount), 1) FROM payment;

---- GROUP BY ------------------------------
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id;


SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;


SELECT rental_duration, COUNT(rental_duration)
FROM film
GROUP BY rental_duration;
