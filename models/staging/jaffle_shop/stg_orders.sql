SELECT
    id           AS order_id,
    user_id      AS customer_id,
    order_date   AS order_date,
    status       AS status

FROM {{ source('jaffle_shop', 'orders')}}