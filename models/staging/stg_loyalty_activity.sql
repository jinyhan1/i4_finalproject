WITH source AS (
    SELECT *
    FROM {{ source('hospitality', 'loyalty_activity') }}
),

cleaned AS (
    SELECT
        activity_id,
        customer_id,
        activity_date,
        LOWER(TRIM(activity_type)) AS activity_type,
        points,
        NULLIF(TRIM(partner_name), '') AS partner_name
    FROM source
)

SELECT *
FROM cleaned