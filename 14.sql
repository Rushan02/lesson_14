1)
SELECT title
FROM film
WHERE film_id IN
(SELECT fc.film_id
FROM film_category fc INNER JOIN category c
ON fc.category_id = c.category_id
WHERE c.name = 'Action');

2)
SELECT f.title
FROM film f
WHERE EXISTS
(SELECT 1
FROM film_category fc INNER JOIN category c
ON fc.category_id = c.category_id
WHERE c.name = 'Action'
AND fc.film id = f.film id);

telegram
1)
select p.user_id , u.login , p.name , p.status  from profile p 
inner join  `user` u on p.user_id = u.id 
where u.login = (select u.login where u.login like '%com');