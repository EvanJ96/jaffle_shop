{{ config(materialized= 'table' ) }}

with base as (
    SELECT
        *
    FROM {{ ref('src_customers') }}
)

select * from base