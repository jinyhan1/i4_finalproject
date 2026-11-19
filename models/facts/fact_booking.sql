-- Fact table for hotel booking analysis.
-- Grain: One row per unique booking_id.
-- Foreign keys connect bookings to dimension models.

WITH bookings AS (
    SELECT *
    FROM {{ ref('stg_bookings') }}
)

SELECT
    booking_id,
    customer_id,
    property_id,
    room_type_id,
    channel_id,
    booking_date,
    check_in_date,
    check_out_date,
    nights,
    room_rate,
    total_amount,
    booking_status,
    points_earned
FROM bookings
