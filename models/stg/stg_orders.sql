{{ config(materialized= 'table' ) }}

with base as (
    SELECT
        *
    FROM {{ ref('src_orders') }}
)

select * from base