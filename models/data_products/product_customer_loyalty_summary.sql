WITH booking_points AS (
    SELECT
        customer_id,
        COUNT(*) AS completed_bookings_12m,
        SUM(points_earned) AS qualifying_points_12m
    FROM {{ ref('fact_booking') }}
    WHERE booking_status = 'completed'
      AND check_out_date >= DATE '2025-11-01'
      AND check_out_date < DATE '2026-11-01'
    GROUP BY customer_id
)

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.home_country,
    c.enrollment_date,
    c.current_tier_id,
    c.current_tier_name,
    c.current_tier_min_points,
    COALESCE(
        b.completed_bookings_12m, 0
    ) AS completed_bookings_12m,
    COALESCE(
        b.qualifying_points_12m, 0
    ) AS qualifying_points_12m
FROM {{ ref('dim_customers') }} c
LEFT JOIN booking_points b
    ON c.customer_id = b.customer_id