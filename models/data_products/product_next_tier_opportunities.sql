WITH tier_steps AS (
    SELECT
        tier_id,
        tier_name,
        min_qualifying_points,
        LEAD(tier_name) OVER (
            ORDER BY min_qualifying_points
        ) AS next_tier_name,
        LEAD(min_qualifying_points) OVER (
            ORDER BY min_qualifying_points
        ) AS next_tier_min_points
    FROM {{ ref('stg_loyalty_tiers') }}
),

customer_progress AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        c.current_tier_name,
        c.qualifying_points_12m,
        t.next_tier_name,
        t.next_tier_min_points
    FROM {{ ref('product_customer_loyalty_summary') }} AS c
    LEFT JOIN tier_steps t
        ON c.current_tier_id = t.tier_id
)

SELECT
    customer_id,
    first_name,
    last_name,
    current_tier_name,
    qualifying_points_12m,
    next_tier_name,
    next_tier_min_points,
    next_tier_min_points
        - qualifying_points_12m AS points_needed,
    ROUND(
        100.0 * qualifying_points_12m
        / NULLIF(next_tier_min_points, 0),
        2
    ) AS progress_pct
FROM customer_progress
WHERE current_tier_name IN ('member', 'silver')
  AND qualifying_points_12m >= next_tier_min_points * 0.8
  AND qualifying_points_12m < next_tier_min_points