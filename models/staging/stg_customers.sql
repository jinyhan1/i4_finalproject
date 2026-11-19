WITH source AS (
    SELECT *
    FROM {{ source('hospitality', 'customers') }}
),

cleaned AS (
    SELECT DISTINCT
        customer_id,
        TRIM(first_name) AS first_name,
        TRIM(last_name) AS last_name,
        NULLIF(TRIM(email), '') AS email,
        TRIM(home_country) AS home_country,
        enrollment_date,
        LOWER(TRIM(marketing_opt_in)) AS marketing_opt_in,
        current_tier_id
    FROM source
)

SELECT *
FROM cleaned
