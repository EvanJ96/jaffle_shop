{{ config(materialized='table') }}

with base_customers as (
    SELECT 
        *
    FROM {{ ref('stg_customers') }}
),

base_orders as (
    SELECT
        *
    FROM {{ ref('stg_orders') }}
),

join_base_models as (
    SELECT
        c.*
    FROM base_customers c
    LEFT JOIN base_orders o 
        ON c.ID = o.ID
),

final as (
    SELECT
        *
    FROM join_base_models
)

SELECT * FROM final