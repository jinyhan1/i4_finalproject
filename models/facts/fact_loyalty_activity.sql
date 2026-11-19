-- Fact table for customer loyalty activity.
-- Grain: One row per loyalty activity.
-- customer_id connects to dim_customers.

WITH loyalty_activity AS (
    SELECT *
    FROM {{ ref('stg_loyalty_activity') }}
)

SELECT
    activity_id,
    customer_id,
    activity_date,
    activity_type,
    points,
    partner_name
FROM loyalty_activity
