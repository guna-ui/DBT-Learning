{{ config(materialized='view') }}

select
  payment_id::int as payment_id,
  order_id::int as order_id,
  payment_method,
  status
from {{ source('raw', 'payments') }}
