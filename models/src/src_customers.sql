{{ config(materialized = 'table') }}

with source as (
    SELECT
        *
    FROM `dbt-tutorial.jaffle_shop.customers`
)

select * from source 