\echo Loading l4.booking_channels ...
TRUNCATE TABLE l4.booking_channels CASCADE;
\copy l4.booking_channels FROM 'data/booking_channels.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.hotel_brands ...
TRUNCATE TABLE l4.hotel_brands CASCADE;
\copy l4.hotel_brands FROM 'data/hotel_brands.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.loyalty_tiers ...
TRUNCATE TABLE l4.loyalty_tiers CASCADE;
\copy l4.loyalty_tiers FROM 'data/loyalty_tiers.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.room_types ...
TRUNCATE TABLE l4.room_types CASCADE;
\copy l4.room_types FROM 'data/room_types.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.properties ...
TRUNCATE TABLE l4.properties CASCADE;
\copy l4.properties FROM 'data/properties.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.customers ...
TRUNCATE TABLE l4.customers CASCADE;
\copy l4.customers FROM 'data/customers.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.bookings ...
TRUNCATE TABLE l4.bookings CASCADE;
\copy l4.bookings FROM 'data/bookings.csv' WITH (FORMAT csv, HEADER true, NULL '')

\echo Loading l4.loyalty_activity ...
TRUNCATE TABLE l4.loyalty_activity CASCADE;
\copy l4.loyalty_activity FROM 'data/loyalty_activity.csv' WITH (FORMAT csv, HEADER true, NULL '')
