-- File: models/example/stg_orders.sql

{{ config(
    materialized='table'
) }}

SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    `regal-tract-377101.dbt_amohapatra.orders` o
JOIN
    `regal-tract-377101.dbt_amohapatra.stg_customers` c 
    ON o.Customer_ID = c.Customer_ID
JOIN
    `regal-tract-377101.dbt_amohapatra.products` p  -- Fully qualified dataset reference
    ON o.Product_ID = p.Product_ID
