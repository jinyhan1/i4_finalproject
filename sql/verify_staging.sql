-- 1. Verify row counts for all eight tables.
SELECT 'booking_channels' AS table_name, COUNT(*) AS row_count
FROM jh82459.booking_channels
UNION ALL
SELECT 'hotel_brands', COUNT(*) FROM jh82459.hotel_brands
UNION ALL
SELECT 'loyalty_tiers', COUNT(*) FROM jh82459.loyalty_tiers
UNION ALL
SELECT 'room_types', COUNT(*) FROM jh82459.room_types
UNION ALL
SELECT 'properties', COUNT(*) FROM jh82459.properties
UNION ALL
SELECT 'customers', COUNT(*) FROM jh82459.customers
UNION ALL
SELECT 'bookings', COUNT(*) FROM jh82459.bookings
UNION ALL
SELECT 'loyalty_activity', COUNT(*) FROM jh82459.loyalty_activity;


-- 2. Check duplicate booking and customer IDs.
SELECT
    'bookings' AS table_name,
    COUNT(*) AS total_rows,
    COUNT(DISTINCT booking_id) AS unique_ids,
    COUNT(*) - COUNT(DISTINCT booking_id) AS duplicate_ids
FROM jh82459.bookings

UNION ALL

SELECT
    'customers',
    COUNT(*),
    COUNT(DISTINCT customer_id),
    COUNT(*) - COUNT(DISTINCT customer_id)
FROM jh82459.customers;


-- 3. Check missing values in important columns.
SELECT
    COUNT(*) FILTER (
        WHERE email IS NULL OR TRIM(email) = ''
    ) AS missing_emails
FROM jh82459.customers;

SELECT
    COUNT(*) FILTER (
        WHERE partner_name IS NULL OR TRIM(partner_name) = ''
    ) AS missing_partner_names
FROM jh82459.loyalty_activity;


-- 4. Check booking status consistency.
SELECT
    booking_status,
    COUNT(*) AS booking_count
FROM jh82459.bookings
GROUP BY booking_status
ORDER BY booking_status;
