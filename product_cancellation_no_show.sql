WITH bookings AS (
    SELECT
        *,
        REPLACE(
            REPLACE(
                LOWER(TRIM(booking_status)),
                '-', '_'
            ),
            ' ', '_'
        ) AS status_clean
    FROM {{ ref('product_booking_performance') }}
    WHERE booking_date >= DATE '2025-11-01'
      AND booking_date < DATE '2026-11-01'
),

summary AS (
    SELECT
        DATE_TRUNC(
            'month', booking_date
        )::date AS booking_month,
        property_id,
        property_name,
        brand_name,
        channel_id,
        channel_name,
        COUNT(*) AS total_bookings,
        SUM(
            CASE WHEN status_clean = 'completed'
                 THEN 1 ELSE 0 END
        ) AS completed_bookings,
        SUM(
            CASE WHEN status_clean = 'cancelled'
                 THEN 1 ELSE 0 END
        ) AS cancelled_bookings,
        SUM(
            CASE WHEN status_clean = 'no_show'
                 THEN 1 ELSE 0 END
        ) AS no_show_bookings,
        SUM(
            CASE WHEN status_clean = 'confirmed'
                 THEN 1 ELSE 0 END
        ) AS confirmed_bookings,
        SUM(
            CASE
                WHEN status_clean IN (
                    'completed', 'cancelled', 'no_show'
                )
                THEN 1 ELSE 0
            END
        ) AS resolved_bookings
    FROM bookings
    GROUP BY
        DATE_TRUNC('month', booking_date)::date,
        property_id,
        property_name,
        brand_name,
        channel_id,
        channel_name
)

SELECT
    *,
    ROUND(
        100.0 * cancelled_bookings
        / NULLIF(resolved_bookings, 0),
        2
    ) AS cancellation_rate_pct,
    ROUND(
        100.0 * no_show_bookings
        / NULLIF(resolved_bookings, 0),
        2
    ) AS no_show_rate_pct
FROM summary