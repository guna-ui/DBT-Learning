select {{dbt_utils.generate_surrogate_key(["product_id"])}},product_category_name,product_weight_g,
 product_length_cm From {{ref('olist_products_dataset')}}