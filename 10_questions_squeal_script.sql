--SQL (Structured Query Language)

-- Data Query Lanaguage (DQL)
-- Getting data from the database

--Syntax: Select columns FROM Table

-- * Means All Columns
SELECT *
FROM actor;

-- CAn be one line: the semicolor is what ends a comand
SELECT * FROM film;

-- Query for sepcific columns - SELECT col_1,col_2,col_3,etc> FRom Table_name
SELECT title, description,release_year,length,rating
FROM film;

-- COlumns will come back in specified order
SELECT last_name,first_name
FROM actor;

-- Filter Rows - use WHERE clause - always comes after the FROM
SELECT *
FROM actor 
WHERE first_name = 'Dan';

SELECT film_id,title,release_year
FROM film 
WHERE film_id = 5;

-- use wildcards with the LIKE clause - % acts as a multiply-charachter wildcard
-- can be any number of charachters (0 -> infinity) - zero or many - r'[\w\s]*'
SELECT *
FROM actor 
WHERE first_name LIKE 'M%'; -- will look FOR 'M' followed BY ANY number OF
SELECT *
FROM actor
WHERE first_name LIKE = 'M%'; -- will literally look FOR "M%"

SELECT *
FROM actor 
WHERE last_name LIKE '%r%'; -- looks FOR r 

-- UNderscore (_) with LIKE clause - represents 1 and only 1 chrachter
SELECT *
FROM actor 
WHERE first_name LIKE '_i_'; -- LIKE RiP

SELECT *
FROM actor 
WHERE first_name LIKE '_i%'; --  Like Nick

-- using AND and OR in the WHERE clause
-- or- only one needs to be true








--question 1
SELECT count(*)
FROM actor 
WHERE last_name LIKE 'Wahlberg';
---2


--2
SELECT count(*)
FROM payment 
WHERE amount between 3.99 and 5.99;
---5,607


--3
select film_id, count(film_id)
from inventory
group by film_id 
having count(film_id) =7;


--4
SELECT COUNT(first_name)
from customer
where first_name like 'Willie';
---2



--5
SELECT count(staff_id)
from rental
group by staff_id
limit 1;
 --5 cont
select *
from staff
group by staff_id 
having staff_id = 1;
--mike


---6
select count(distinct district)
from address;
---378



---7
select film_id, count(*) as num
from film_actor
group by film_id
order by num desc 
limit 1;
---15

---8
select store_id , count(last_name)
from customer
where last_name like '%es'
group by store_id;
---21


---9
select count(*)
from payment
where customer_id between 380 and 430
group by amount 
having count(*) > 250;
--3


---10
select rating, count(*) as numFilms
from film
group by rating
order by numFilms desc;
---5 cats, most PG-13


-- FROM (TAble_names)
-- WHERE ( row filter)
-- GROUP BY (aggregations)
-- Having (Filter aggregations)
-- order BY (column value asc or DESC)
-- OFFSET (number of rows to skip)
-- limit (max number of rows to display)

$Whalberg