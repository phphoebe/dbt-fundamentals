-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.

SELECT
  order_id      AS order_id,
	SUM(amount)   AS total_amount

FROM {{ ref('stg_payments') }}

GROUP BY 1
HAVING NOT(total_amount >= 0)
