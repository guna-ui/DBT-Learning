select {{dbt_utils.generate_surrogate_key(["product_id"])}} as order_item_sk,
{{dbt_utils.star(from=ref('olist_order_items_dataset'),except=['order_id','order_item_id'])}}
 From {{ref('olist_order_items_dataset')}}