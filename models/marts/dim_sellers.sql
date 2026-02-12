{{config(materialized='view')}}

select {{ dbt_utils.generate_surrogate_key(["seller_id"]) }} as order_seller_sk,
{{dbt_utils.star(from=ref("olist_sellers_dataset"),except=['seller_id'])}}
 From {{ref('olist_sellers_dataset')}}