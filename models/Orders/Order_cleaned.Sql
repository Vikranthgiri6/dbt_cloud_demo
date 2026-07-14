with source
as(

select order_id::int as order_id,customer_name::string as customer_name,
order_date::date as order_date,
lower(status)::string as status,
extract(year from order_date)::integer as Order_Year
from DBT_CLOUD.DBT_SCHEMA.ORDERS
)
,cleaned
as
(
select * from source where status!='cancelled'
)
select * from cleaned