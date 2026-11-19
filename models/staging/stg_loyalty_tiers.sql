WITH source AS (
    SELECT *
    FROM {{ source('hospitality', 'loyalty_tiers') }}
),

cleaned AS (
    SELECT
        tier_id,
        TRIM(tier_name) AS tier_name,
        min_qualifying_points,
        bonus_points_pct,
        benefits
    FROM source
)

SELECT *
FROM cleaned