{{ config(materialized='table') }}

select count(customer_id) as total_customers From {{ ref('stg_customers') }}

