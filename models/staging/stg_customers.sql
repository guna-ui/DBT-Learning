{{ config(materialized='view') }}


select customer_id::int as customer_id,customer_name,lower(email),created_at::date as created_date From {{ source('raw','customers' )}}
