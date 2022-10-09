SELECT
    id                                   AS payment_id,
    orderid                              AS order_id,
    paymentmethod                        AS payment_method,
    status                               AS status,
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars('amount', 4) }}  AS amount,
    created                              AS created_at

FROM {{ source('stripe', 'payment') }}