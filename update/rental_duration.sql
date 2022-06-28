update film set rental_duration = 10
where film_id in (   
select 
    f.film_id
from film as f
inner join film_category as fl on (f.film_id = fl.film_id)
inner join category as c on (fl.category_id = c.category_id)
where c.name = 'Comedy'
    
)
