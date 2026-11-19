WITH source AS (
    SELECT *
    FROM {{ source('hospitality', 'booking_channels') }}
),

cleaned AS (
    SELECT
        channel_id,
        TRIM(channel_name) AS channel_name,
        commission_pct
    FROM source
)

SELECT *
FROM cleaned