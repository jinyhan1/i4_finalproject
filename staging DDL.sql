CREATE SCHEMA l4;

CREATE TABLE l4.booking channels (
	channel_id VARCHAR(20)
	channel_name VARCHAR(100)
	commission_pct INTEGER
);

DROP TABLE IF EXISTS l4.bookings CASCADE;

CREATE TABLE l4.customers (
	customer_id VARCHAR(20),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	Email VARCHAR(100),
	home_country  VARCHAR(100),
	enrollment_date DATE,
	marketing_opt_in VARCHAR(10),
	current_tier_id VARCHAR(20)
	
);

DROP TABLE IF EXISTS l4.customers CASCADE;
CREATE TABLE l4.customers (
	customer _id VARCHAR(20),
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	home_country VARCHAR(100),
	enrollment _date DATE,
	marketing_opt_in VARCHAR(10),
	current_tier_id VARCHAR(20)
);

DROP TABLE IF EXISTS l4. Hotel_brands CASCADE;
CREATE TABLE l4.hotel_brands (
	brand_id VARCHAR(20),
	brand_name VARCHAR(100)
	brand-segmnet VARCHAR (50),
	avg_daily_rate INTEGER
);

DROP TABLE IF EXISTS l4.loyalty_activity CASCADE;
CREATE TABLE l4.loyalty activity (
	activity_id VARCHAR(20),
	customer_id VARCHAR(20),
	activity_date DATE,
	activity_type VARCHAR (100),
	points INTEGER,
	partner_name VARCHAR (100)

DROP TABLE IF EXISTS l4.loyalty_tiers CASCADE;
CREATE TABLE l4.loyalty_tiers ( 
  tier_id VARCHAR(20), 
  tier_name VARCHAR(50), 
  min_qualifying_points INTEGER, 
  bonus_points_pct INTEGER, 
  benefits TEXT 

);
DROP TABLE IF EXISTS l4.properties CASCADE; 
CREATE TABLE l4.properties ( 
  property_id VARCHAR(20), 
  property_name VARCHAR(150), 
  brand_id VARCHAR(20), 
  city VARCHAR(100), 
  country VARCHAR(100), 
  star_rating INTEGER, room_count INTEGER, 
  year_opened INTEGER 
);

DROP TABLE IF EXISTS l4.room_types CASCADE; 
CREATE TABLE l4.room_types ( 
  room_type_id VARCHAR(20), 
  room_type_name VARCHAR(100), 
  max_occupancy INTEGER, 
  rate_multiplier NUMERIC 
);
