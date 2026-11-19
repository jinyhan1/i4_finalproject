WITH source_data AS (
    SELECT *
    FROM {{ source('hospitality', 'properties') }}
),

cleaned AS (
    SELECT
        TRIM(property_id) AS property_id,
        TRIM(property_name) AS property_name,
        TRIM(brand_id) AS brand_id,
        TRIM(city) AS city,
        TRIM(country) AS country,
        star_rating,
        room_count,
        year_opened
    FROM source_data
)

SELECT DISTINCT *
FROM cleaned