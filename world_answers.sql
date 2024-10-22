use world;

-- 1. Using COUNT, get the number of cities in the USA.

select count(*) from city;

-- 2. Find out the population and life expectancy for people in Argentina.

select Population, LifeExpectancy
from country
where Name = 'Argentina';

-- 3. Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

select name from country
where name is not null
order by LifeExpectancy desc
limit 1;

-- 4. Using JOIN ... ON, find the capital city of Spain.

select city.Name from city
inner join country
on city.ID = country.Capital
where country.Name = 'Spain';

-- 5. Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.

select Language from countrylanguage
inner join country
on country.Code = countrylanguage.CountryCode
where country.Region = 'Southeast Asia';

-- 6. Using a single query, list 25 cities around the world that start with the letter F.

select Name from city
where Name like 'f%'
limit 25;

-- 7. Using COUNT and JOIN ... ON, get the number of cities in China.



-- 8. Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.
-- 9. Using aggregate functions, return the number of countries the database contains.
-- 10. What are the top ten largest countries by area?
-- 11. List the five largest cities by population in Japan.
-- 12. List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
-- 13. List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
-- 14. List every unique world language.
-- 15. List the names and GNP of the world's top 10 richest countries.
-- 16. List the names of, and number of languages spoken by, the top ten most multilingual countries.
-- 17. List every country where over 50% of its population can speak German.
-- 18. Which country has the worst life expectancy? Discard zero or null values.
-- 19. List the top three most common government forms.
-- 20. How many countries have gained independence since records began?