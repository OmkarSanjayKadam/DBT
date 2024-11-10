
{{ config(
    materialized='table'
) }}

SELECT
    AVG(diesel_price) AS avg_diesel_price,
    AVG(super_price) AS avg_super_price,
    AVG(super10_price) AS avg_super10_price
FROM {{ ref('dataaaa') }}
