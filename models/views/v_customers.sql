
   
SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) as customer_name,
      email as email_address,
      address as billing_address
FROM  `regal-tract-377101.dbt_amohapatra.customer`