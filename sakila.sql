use sakila;
select customer.first_name, customer.last_name, customer.email, address.address from customer 
join address on
customer.address_id = address.address_id
join city on 
address.city_id = city.city_id
where city.city_id = 312;


select film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre  from film_category 
join film
on film_category.film_id = film.film_id
join category 
on film_category.category_id = category.category_id
where category.category_id = 5;


select actor.first_name as actor, film.title, film.description, film.release_year from actor 
join film_actor
on actor.actor_id = film_actor.actor_id
join film
on film_actor.film_id = film.film_id
where film_actor.actor_id = 5;


select customer.first_name, store.address_id, city.city_id from store 
join customer
on customer.store_id = store.store_id
join address
on address.address_id = store.address_id
join city
on address.city_id = city.city_id
where store.store_id = 1  and city.city_id = 1 or city.city_id = 42 or city.city_id = 312 or city.city_id = 459
;

select film.rating  from film 
join film_actor
on film.film_id = film_actor.actor_id
join actor
on film_actor.actor_id = actor.actor_id
where  actor.actor_id = 15 and film.special_features LIKE '%detrás de escena';


select film.film_id, film.title, actor.actor_id, concat( actor.first_name," ", actor.last_name) from actor
join film_actor
on actor.actor_id = film_actor.actor_id
join film 
on film_actor.film_id = film.film_id
where film.film_id = 369;

select film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name, film.rental_rate from  film
join film_category
on film.film_id = film_category.film_id
join category
on film_category.category_id = category.category_id
where category.name = 'Drama' AND  rental_rate = 2.99;



select film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name, concat(actor.first_name, " ", actor.last_name) from  film
join film_category
on film.film_id = film_category.film_id
join category
on film_category.category_id = category.category_id
join film_actor
on film.film_id = film_actor.film_id
join actor
on film_actor.actor_id = actor.actor_id
where category.name = 'Action' AND  actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER';



