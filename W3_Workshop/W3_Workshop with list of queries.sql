SELECT UPPER(CONCAT(first_name, ' ',last_name)) AS 'Actor Name' FROM actor;

SELECT UPPER(CONCAT(first_name, ' ',last_name)) AS 'Actor Name' FROM actor
ORDER BY last_name;

SELECT actor_id, first_name, last_name FROM actor
WHERE first_name = 'Joe';

SELECT a.actor_id, f.film_id, f.title FROM actor a
JOIN film_actor fa ON fa.actor_id = a.actor_id
JOIN film f ON f.film_id = fa.film_id
WHERE a.first_name = 'JOE';

SELECT actor_id, first_name, last_name FROM actor a
WHERE last_name LIKE '%GEN%';

SELECT actor_id, first_name, last_name from actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

SELECT a.actor_id, a.first_name, a.last_name, COUNT(f.film_id) AS 'Total Number of Movies' FROM actor a
JOIN film_actor f ON a.actor_id = f.actor_id
WHERE a.last_name LIKE '%LI%'
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY a.last_name, a.first_name;

SELECT last_name, COUNT(last_name) AS 'Actor Count' FROM actor
GROUP BY last_name
HAVING COUNT(last_name) >=2;

UPDATE actor
SET first_name = 'HARPO', last_name = 'WILLIAMS'
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';

SELECT actor_id, first_name, last_name FROM actor -- USED TO CHECK THAT THE ABOVE QUERY MADE THE CORRECT UPDATE
WHERE first_name = 'HARPO' AND last_name = 'WILLIAMS';

UPDATE actor
SET first_name = 'GROUCHO'
WHERE first_name = 'HARPO' AND last_name = 'WILLIAMS';

SELECT actor_id, first_name, last_name FROM Actor -- USED TO CHECK THAT THE ABOVE QUERY MADE THE CORRECT UPDATE
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';

SELECT s.staff_id, s.first_name, s.last_name, SUM(p.amount) AS 'Total Amount Month of August' FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
WHERE p.payment_date >= '2005-08-01' AND p.payment_date < '2005-09-01'
GROUP BY s.staff_id, s.first_name, s.last_name;

SELECT title, COUNT(fa.actor_id) AS 'Total Amount of Actors' FROM film f
JOIN film_actor fa ON f.film_id = f.film_id
GROUP BY f.film_id, f.title;

SELECT title, COUNT(i.inventory_id) AS 'Number of Copies' FROM film f
JOIN inventory i ON f.film_id = i.film_id
WHERE f.title = 'HUNCHBACK IMPOSSIBLE';

SELECT f.title FROM film f
WHERE (f.title LIKE 'K%' OR f.title LIKE 'Q%') AND f.language_id = (
SELECT l.language_id FROM language l
WHERE l.name = 'English');

SELECT F.Title FROM film F
WHERE (F.title LIKE 'K%' OR F.Title LIKE 'Q%') AND F.language_id = (
SELECT L.language_id FROM language L
WHERE L.Name = 'English');

SELECT customer_id from customer -- 1
where first_name = 'mary' and last_name = 'smith';

SELECT film_id FROM film -- 1
WHERE title = 'Academy Dinosaur';

SELECT inventory_id FROM inventory -- 1
WHERE film_id = (SELECT film_id FROM film
WHERE title = 'Academy Dinosaur') AND Store_id = 1
LIMIT 1;

SELECT staff_id FROM staff -- 1
WHERE first_name = 'Mike' AND last_name = 'Hillyer';

INSERT INTO rental (rental_date, inventory_id,customer_id,return_date,staff_id)
VALUES (CURRENT_TIMESTAMP, 1 , 1, NULL, 1);

SELECT * FROM rental -- It worked :)
WHERE inventory_id = 1 AND customer_id = 1 AND staff_id = 1
ORDER BY rental_date DESC
LIMIT 1;