/*1. How many actors are there with the last name ‘Wahlberg’?*/
select last_name 
from actor 
where last_name like 'Wahlberg'

/*2. How many payments were made between $3.99 and $5.99?*/
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;

/*What film does the store have the most of? (search in inventory)*/
select * from inventory

select film_id, count(film_id) 
from inventory 
group by film_id 
order by count(film_id) desc;

/*4. How many customers have the last name ‘William’?*/
select * from customer 

select count(last_name)
from customer 
where last_name = 'William'

/*5. What store employee (get the id) sold the most rentals?*/
select count(rental_id)
from rental
group by staff_id
order by staff_id ASC;

/*6. How many different district names are there?*/
select count(DISTINCT(district))
from address;

/*7. What film has the most actors in it? (use film_actor table and get film_id)*/
select film_id
from film_actor
group by film_id
order by count(actor_id) desc;

/*8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)*/
select count(last_name)
from customer
where store_id = 1 and last_name like '%es';

/*9.How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)*/
SELECT amount, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;

/*9. Within the film table, how many rating categories are there? And what rating has the most
movies total?*/
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;