WITH source_data AS (
    SELECT *
    FROM {{ source('hospitality', 'hotel_brands') }}
),

cleaned AS (
    SELECT
        TRIM(brand_id) AS brand_id,
        TRIM(brand_name) AS brand_name,
        TRIM(brand_segment) AS brand_segment,
        avg_daily_rate
    FROM source_data
)

SELECT DISTINCT *
FROM cleaned