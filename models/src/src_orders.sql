{{ config(materialized = 'table') }}

with source as (
    SELECT
        *
    FROM `dbt-tutorial.jaffle_shop.orders`
)

select * from source 