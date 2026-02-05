with customers as (
    select *
    from {{ ref('stg_customers') }}
),
orders as (
    select *
    from {{ ref('stg_orders') }}
),
joined_data as (
    select c.customer_id,
        c.customer_name,
        o.order_id,
        o.order_date,
        o.amount,
        case
            when o.amount > 100 then 'high_value'
            else 'regular'
        end as customer_type
    from customers c
        join orders o on c.customer_id = o.customer_id
)
select *
from joined_data
