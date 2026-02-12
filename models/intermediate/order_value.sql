with order_summary as (
    select count(distinct order_id) as total_orders,sum(payment_value) as total_revenue from {{ref('olist_order_payments_dataset')}}
)

select total_orders,total_revenue,{{ savedive('total_revenue','total_orders') }} as avg_order_value from order_summary

