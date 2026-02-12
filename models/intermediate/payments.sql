with payments as(
    select order_id,payment_type,{{ centtodollars('payment_value') }} as conversion from
     {{ref('olist_order_payments_dataset')}}
)

select * From payments