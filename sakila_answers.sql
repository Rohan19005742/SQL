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
select actor.first_name, actor.last_name, count(*) from actor
Inner join film, film_actor
on film.film_id = film_actor.film_id, actor.actor_id = film_actor.actor_id 
group by last_name
having count(*) > 1
order by count(*) desc;

-- 14. When is 'Academy Dinosaur' due?
-- 15. What is the average runtime of all films?
-- 16. List the average runtime for every film category.
-- 17. List all movies featuring a robot.
-- 18. How many movies were released in 2010?
-- 19. Find the titles of all the horror movies.
-- 20. List the full name of the staff member with the ID of 2.
-- 21. List all the movies that Fred Costner has appeared in.
-- 22. How many distinct countries are there?
-- 23. List the name of every language in reverse-alphabetical order.
-- 24. List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
-- 25. Which category contains the most films?


