with customers as (
    select *
    from {{ ref('stg_customers') }}
),
payments as (
    select *
    from {{ ref('stg_payments') }}
),
orders as (
    select *
    from {{ ref('stg_orders') }}
),
joined_data as (
    select c.customer_id,
        o.order_id,
        p.payment_method,
        p.status
    from customers c
        join orders o on c.customer_id = o.customer_id
        join payments p on o.order_id = p.order_id
)
select *
from joined_data
