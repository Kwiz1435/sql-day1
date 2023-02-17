/*first query, we will select all the records from the actor table*/
select * from actor;

/*query for first_name and last_name in the actr table*/
select first_name, last_name
from actor;

/*query for a first_name that euals Nick using the Where clause*/
select first_name, last_name
from actor 
where first_name like 'Nick';

/*query for all first_name data that starts with a J using LIKE and WHERE clauses and a wildcard (%) = return any amount of after the letter*/
select first_name,actor_id
from actor 
where first_name like 'J%';

/*quety for all first_name data that starts with K and has 2 letters after the k, using like and where clauses and the underscore(__)*/
select first_name, actor_id
from actor 
where first_name like 'k__';

/*query for all first_name data that starts with a K and end with TH*/
/*we will use the like and where clauses using both wildcard snd the underscore*/
select first_name,last_name, actor_id
from actor 
where first_name like 'K__%th';


/*comparing operators*/
/* >, <, >=, <=, <>*/

/*Explore data with select all query so that we can change into a new table */
select * from payment;


/*query for data that shows customers who paid an amount greater than $2*/
select customer_id, amount
from payment 
where amount > 2.00;

/*query for data that shows customers who paid an amount less than 7.99*/
select customer_id, amount
from payment
where amount < 7.99;

/*query for less than or equal to 7.99*/
select customer_id, amount
from payment
where amount <= 7.99;


/*query for greater than of equal to 7.99*/
select customer_id, amount
from payment
where amount >= 7.99;

/*query for data that shows customers who paid an amount not equal to $0.00 ordered in DESCENDING ORDER */
select customer_id,amount
from payment 
where amount <> 0.00
order by amount desc;

/*SQL aggregate functions! sum, avg, count, min, max*/
/* query to display the sum of amounts paid that are greater than 5.99*/
select sum(amount)
from payment  
where amount > 5.99;

/*query to display the avg of amount paid greater then 5.99*/
select avg(amount)
from payment 
where amount > 5.99;

/* query to display the count of amounts paid greater than 5.99*/
select count(amount) from payment where amount > 5.99;

/*query to display the count of DISTINCT amounts paid greater than 5.99 */
select count(distinct amount)
from payment where amount > 5.99;

/*query to display min amount greater than 7.99*/
select min(amount) as min_num_payments
from payment 
where amount > 7.99;

/*query to display max amount greater than 7.99*/
select max(amount) as max_num_payments
from payment 
where amount > 7.99;

/*demo of groupby*/
select amount
from payment 
where amount = 7.99;

/*query to display different amounts grouped together */
/*and count the amounts*/
select amount, count(amount)
from payment
group by amount 
order by amount;

/*query to display customer ids with the summed amounts for each customer id*/
select customer_id, sum(amount)
from payment 
group by customer_id 
order by customer_id desc;

/*query to display */


