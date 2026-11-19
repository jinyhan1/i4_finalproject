CREATE SCHEMA IF NOT EXISTS jh82459;

-- Create tables only if they do not already exist.
-- Preserve raw data, including duplicates, for cleaning in dbt.

-- 1. Booking Channels
CREATE TABLE IF NOT EXISTS jh82459.booking_channels (
    channel_id TEXT,
    channel_name TEXT,
    commission_pct INTEGER
);

-- 2. Hotel Brands
CREATE TABLE IF NOT EXISTS jh82459.hotel_brands (
    brand_id TEXT,
    brand_name TEXT,
    brand_segment TEXT,
    avg_daily_rate INTEGER
);

-- 3. Loyalty Tiers
CREATE TABLE IF NOT EXISTS jh82459.loyalty_tiers (
    tier_id TEXT,
    tier_name TEXT,
    min_qualifying_points INTEGER,
    bonus_points_pct INTEGER,
    benefits TEXT
);

-- 4. Room Types
CREATE TABLE IF NOT EXISTS jh82459.room_types (
    room_type_id TEXT,
    room_type_name TEXT,
    max_occupancy INTEGER,
    rate_multiplier DOUBLE PRECISION
);

-- 5. Properties
CREATE TABLE IF NOT EXISTS jh82459.properties (
    property_id TEXT,
    property_name TEXT,
    brand_id TEXT,
    city TEXT,
    country TEXT,
    star_rating INTEGER,
    room_count INTEGER,
    year_opened INTEGER
);

-- 6. Customers
CREATE TABLE IF NOT EXISTS jh82459.customers (
    customer_id TEXT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    home_country TEXT,
    enrollment_date DATE,
    marketing_opt_in TEXT,
    current_tier_id TEXT
);

-- 7. Bookings
CREATE TABLE IF NOT EXISTS jh82459.bookings (
    booking_id TEXT,
    customer_id TEXT,
    property_id TEXT,
    room_type_id TEXT,
    channel_id TEXT,
    booking_date DATE,
    check_in_date DATE,
    check_out_date DATE,
    nights INTEGER,
    room_rate DOUBLE PRECISION,
    total_amount DOUBLE PRECISION,
    booking_status TEXT,
    points_earned INTEGER
);

-- 8. Loyalty Activity
CREATE TABLE IF NOT EXISTS jh82459.loyalty_activity (
    activity_id TEXT,
    customer_id TEXT,
    activity_date DATE,
    activity_type TEXT,
    points INTEGER,
    partner_name TEXT
);
