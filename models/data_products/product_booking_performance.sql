SELECT
    b.*,
    p.property_name,
    p.brand_name,
    r.room_type_name,
    c.channel_name
FROM {{ ref('fact_booking') }} b
LEFT JOIN {{ ref('dim_properties') }} p
    ON b.property_id = p.property_id
LEFT JOIN {{ ref('dim_room_types') }} r
    ON b.room_type_id = r.room_type_id
LEFT JOIN {{ ref('dim_booking_channels') }} c
    ON b.channel_id = c.channel_id