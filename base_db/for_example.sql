select city,
count(distinct order_id) as number_orders,
sum(sales) as revenue
from public.orders o 
where category in ('Furniture', 'Technology')
and extract(year from order_date) = 2018
group by 1 
having sum(sales) > 10000
order by revenue desc

select distinct category from orders

select 
count(*),
count(distinct o.order_id)
from orders o left join "returns" r on o.order_id = r.order_id  


select 
count(*),
count(distinct o.order_id)
from orders o 
where order_id in (select distinct order_id from "returns" r)

select date_trunc('day', now())::date