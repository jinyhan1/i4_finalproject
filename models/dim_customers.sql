WITH customers AS (
    SELECT *
    FROM {{ ref('stg_customers') }}
),

tiers AS (
    SELECT *
    FROM {{ ref('stg_loyalty_tiers') }}
)

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    c.home_country,
    c.enrollment_date,
    c.marketing_opt_in,
    c.current_tier_id,
    t.tier_name AS current_tier_name,
    t.min_qualifying_points AS current_tier_min_points,
    t.bonus_points_pct
FROM customers c
LEFT JOIN tiers t
    ON c.current_tier_id = t.tier_id