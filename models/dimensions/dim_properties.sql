WITH properties AS (
    SELECT *
    FROM {{ ref('stg_properties') }}
),

brands AS (
    SELECT *
    FROM {{ ref('stg_hotel_brands') }}
)

SELECT
    p.property_id,
    p.property_name,
    p.brand_id,
    b.brand_name,
    b.brand_segment,
    b.avg_daily_rate,
    p.city,
    p.country,
    p.star_rating,
    p.room_count,
    p.year_opened
FROM properties p
LEFT JOIN brands b
    ON p.brand_id = b.brand_id
