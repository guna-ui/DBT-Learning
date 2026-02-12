select {{ dbt_utils.generate_surrogate_key(
    ["customer_id","customer_unique_id"]
) }} as customer_sk,customer_id,customer_unique_id,customer_city,customer_state From {{ref('olist_customers_dataset')}}