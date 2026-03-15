with cte as(select 
pagetype,
count(userid) as user_count
from ecommerce_journey
group by pagetype
)
select 
pagetype,
user_count,
cast(round(user_count*100.0/(select 
count(userid) as user_count
from ecommerce_journey
where pagetype='home'),2) as decimal(10,2))
as overall_conversion
from cte
order by user_count desc
