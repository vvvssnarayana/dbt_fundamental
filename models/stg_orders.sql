with orders as (
select id order_id, user_id as customer_id, order_date, status from "RAW"."JAFFLE_SHOP"."ORDERS"
  )
  select * from orders;
  