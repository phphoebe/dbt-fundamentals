SELECT
    id           AS customer_id,
    first_name   AS first_name,
    last_name    AS last_name
    
FROM {{ source('jaffle_shop', 'customers') }}