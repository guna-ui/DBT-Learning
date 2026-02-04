{{ config(materialized="view") }}


select order_id::int as order_id,customer_id::int as customer_id,order_date::date as order_date,
amount::decimal(10,2) as amount From {{source('raw','orders')}}