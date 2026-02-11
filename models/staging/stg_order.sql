{{ config(materialized='table') }}

select *,
   case 
       when '{{ target.name }}' =='development' then 'dev'
       else 'prod'
   end as   environment_name
 From {{ ref('olist_orders_dataset') }}
{% if target.name == 'development' %}
   limit 200
   {% else %}
   where   order_status='delivered' LIMIT 500
{% endif %}