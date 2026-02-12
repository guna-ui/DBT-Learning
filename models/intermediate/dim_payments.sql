select {{dbt_utils.generate_surrogate_key(["order_id","payment_type","payment_installments"])}} 
as payments_sk,
{{dbt_utils.star(from=ref('olist_order_payments_dataset'), except=['order_id'])}}
 From {{ref('olist_order_payments_dataset')}}