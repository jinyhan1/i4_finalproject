WITH source AS (
    SELECT *
    FROM {{ source('hospitality', 'bookings') }}
),

cleaned AS (
    SELECT DISTINCT
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
        LOWER(TRIM(booking_status)) AS booking_status,
        points_earned
    FROM source
)

SELECT *
FROM cleaned
