WITH channels AS (
    SELECT *
    FROM {{ ref('stg_booking_channels') }}
)

SELECT
    channel_id,
    channel_name,
    commission_pct
FROM channels