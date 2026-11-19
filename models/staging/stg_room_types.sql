WITH source_data AS (
    SELECT *
    FROM {{ source('hospitality', 'room_types') }}
),

cleaned AS (
    SELECT
        TRIM(room_type_id) AS room_type_id,
        TRIM(room_type_name) AS room_type_name,
        max_occupancy,
        rate_multiplier
    FROM source_data
)

SELECT DISTINCT *
FROM cleaned