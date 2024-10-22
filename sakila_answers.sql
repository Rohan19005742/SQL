use sakila;

-- 1. List all actors.
SELECT * from actor;

-- 2. Find the surname of the actor with the forename 'John'.
SELECT  last_name from actor
where first_name = 'John';

-- 3. Find all actors with surname 'Neeson'
select * from actor
where last_name = 'Neeson';

-- 4. Find all actors with ID numbers divisible by 10.
select * from actor
where actor_id % 10 = 0;

-- 5. What is the description of the movie with an ID of 100?
select description from film
where film_id = 100;

-- 6. Find every R-rated movie.
select * from film
where rating = 'R';

-- 7. Find every non-R-rated movie.
select * from film
where rating != 'R';

-- 8. Find the ten shortest movies.
select * from film
order by length asc limit 10;

-- 9. Find the movies with the longest runtime, without using LIMIT.

SELECT * FROM film
WHERE length = (SELECT MAX(length) FROM film);

-- 10. Find all movies that have deleted scenes.
select * from film
where special_features like '%Deleted%';

-- 11. Using HAVING, reverse-alphabetically list the last names that are not repeated.
select last_name from actor
group by last_name
having count(*) = 1
order by last_name desc;

-- 12. Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
select last_name, count(*) from actor
group by last_name
having count(*) > 1
order by count(*) desc;

-- 13. Which actor has appeared in the most films?
SELECT actor.first_name, actor.last_name, COUNT(*) AS film_count
FROM actor
INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY film_count DESC
limit 1;

-- 14. When is 'Academy Dinosaur' due?

select release_year from film
where film.title = 'Academy Dinosaur';

-- 15. What is the average runtime of all films?
select avg(length) as avergae_length
from film;

-- 16. List the average runtime for every film category.

select avg(length) as avergae_length
from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on category.category_id = film_category.category_id
group by category.name;

-- 17. List all movies featuring a robot.

select title from film
where special_features like 'robot';

-- 18. How many movies were released in 2010?

select count(*)
from film
where release_year = 2010;

-- 19. Find the titles of all the horror movies.

select title
from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on film_category.category_id = category.category_id
where category.name like '%horror%';

-- 20. List the full name of the staff member with the ID of 2.

select first_name, last_name from staff
where staff_id = 2;

-- 21. List all the movies that Fred Costner has appeared in.

select title from film
inner join film_actor
on film.film_id = film_actor.film_id
inner join actor
on actor.actor_id = film_actor.actor_id
where actor.first_name = 'Fred' and actor.last_name = 'Costner';


-- 22. How many distinct countries are there?

select distinct count(*)
from country;

-- 23. List the name of every language in reverse-alphabetical order.

select name from language
order by name desc;

-- 24. List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.

select first_name, last_name from actor
where last_name like '%son'
order by first_name;

-- 25. Which category contains the most films?

select name, count(*) from category
inner join film_category
on film_category.category_id = category.category_id
inner join film
on film.film_id = film_category.film_id
group by category.name
order by count(*) desc
limit 1;


