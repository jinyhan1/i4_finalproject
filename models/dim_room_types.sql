WITH room_types AS (
    SELECT *
    FROM {{ ref('stg_room_types') }}
)

SELECT
    room_type_id,
    room_type_name,
    max_occupancy,
    rate_multiplier
FROM room_types