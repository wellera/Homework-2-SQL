Use sakila; 

/*Task 1*/
SELECT name AS 'Category Name', film.title AS 'Film Title', film.description AS 'Film Description', film.release_year AS 'Release Year'
FROM film JOIN film_category JOIN category ON film_category.film_id = film.film_id AND film_category.category_id = category.category_id
WHERE ucase(film.description) LIKE '%DRAMA%';

/*Task 2*/
SELECT film.title AS 'Title', concat_ws(', ',last_name, first_name) AS 'Actor Name'
FROM film JOIN film_actor JOIN actor ON film.film_id = film_actor.film_id AND film_actor.actor_id = actor.actor_id
WHERE ucase(actor.first_name)='JULIA' AND ucase(actor.last_name)='MCQUEEN';

/*Task 3*/
SELECT film.title AS 'Title', concat_ws(', ',last_name, first_name) AS 'Actor Name'
FROM film JOIN film_actor JOIN actor ON film.film_id = film_actor.film_id AND film_actor.actor_id = actor.actor_id
WHERE ucase(film.Title)='AMADEUS HOLY';

/*Task 4*/
SELECT *
FROM customer JOIN rental JOIN inventory JOIN film 
ON customer.customer_id = rental.customer_id AND rental.inventory_id = inventory.inventory_id AND inventory.film_id = film.film_id
WHERE ucase(customer.first_name)='KATHLEEN' AND ucase(customer.last_name)='ADAMS';

