# Data Dictionary

## 1. Dimension Tables

### dim_customers
| Column Name | Data Type | Key / Constraint |
|---|---|---|
| customer_id | TEXT | PK |
| email | TEXT | Nullable |
| first_name | TEXT | — |
| last_name | TEXT | — |
| home_country | TEXT | — |
| enrollment_date | DATE | — |
| marketing_opt_in | TEXT | — |
| current_tier_id | TEXT | FK |
| current_tier_name | TEXT | — |
| current_tier_min_points | INTEGER | — |
| bonus_points_pct | DOUBLE PRECISION | — |

### dim_properties

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| property_id | TEXT | PK |
| property_name | TEXT | — |
| brand_id | TEXT | FK |
| brand_name | TEXT | — |
| brand_segment | TEXT | — |
| avg_daily_rate | DOUBLE PRECISION | — |
| city | TEXT | — |
| country | TEXT | — |
| star_rating | INTEGER | — |
| room_count | INTEGER | — |
| year_opened | INTEGER | — |

### dim_booking_channels

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| channel_id | TEXT | PK |
| channel_name | TEXT | — |
| commission_pct | DOUBLE PRECISION | — |

### dim_room_types

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| room_type_id | TEXT | PK |
| room_type_name | TEXT | — |
| max_occupancy | INTEGER | — |
| rate_multiplier | DOUBLE PRECISION | — |

## 2. Fact Tables

### fact_booking

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| booking_id | TEXT | PK |
| customer_id | TEXT | FK |
| property_id | TEXT | FK |
| room_type_id | TEXT | FK |
| channel_id | TEXT | FK |
| booking_date | DATE | — |
| check_in_date | DATE | — |
| check_out_date | DATE | — |
| nights | INTEGER | — |
| room_rate | DOUBLE PRECISION | — |
| total_amount | DOUBLE PRECISION | — |
| booking_status | TEXT | — |
| points_earned | INTEGER | — |

### fact_loyalty_activity

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| activity_id | TEXT | PK |
| customer_id | TEXT | FK |
| activity_date | DATE | — |
| activity_type | TEXT | — |
| points | INTEGER | — |
| partner_name | TEXT | Nullable |

## 3. Data Products

### product_booking_performance

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| property_name | TEXT | — |
| brand_name | TEXT | — |
| room_type_name | TEXT | — |
| channel_name | TEXT | — |
| booking_id | TEXT | Logical PK |
| customer_id | TEXT | Logical FK |
| property_id | TEXT | Logical FK |
| room_type_id | TEXT | Logical FK |
| channel_id | TEXT | Logical FK |
| booking_date | DATE | — |
| check_in_date | DATE | — |
| check_out_date | DATE | — |
| nights | INTEGER | — |
| room_rate | DOUBLE PRECISION | — |
| total_amount | DOUBLE PRECISION | — |
| booking_status | TEXT | — |
| points_earned | INTEGER | — |

### product_customer_loyalty_summary

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| customer_id | TEXT | Logical PK |
| first_name | TEXT | — |
| last_name | TEXT | — |
| home_country | TEXT | — |
| enrollment_date | DATE | — |
| current_tier_id | TEXT | Logical FK |
| current_tier_name | TEXT | — |
| current_tier_min_points | INTEGER | — |
| completed_bookings_12m | DOUBLE PRECISION | — |
| qualifying_points_12m | DOUBLE PRECISION | — |

### product_cancellation_no_show

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| booking_month | DATE | Grouping Field |
| property_id | TEXT | Grouping Field |
| property_name | TEXT | — |
| brand_name | TEXT | — |
| channel_id | TEXT | Grouping Field |
| channel_name | TEXT | — |
| total_bookings | INTEGER | — |
| completed_bookings | INTEGER | — |
| cancelled_bookings | INTEGER | — |
| no_show_bookings | INTEGER | — |
| confirmed_bookings | INTEGER | — |
| resolved_bookings | INTEGER | — |
| no_show_rate_pct | NUMERIC | 0–100 |
| cancelled_rate_pct | NUMERIC | 0–100 |

### product_next_tier_opportunities

| Column Name | Data Type | Key / Constraint |
|---|---|---|
| customer_id | TEXT | Customer Identifier |
| first_name | TEXT | — |
| last_name | TEXT | — |
| current_tier_name | TEXT | — |
| qualifying_points_12m | DOUBLE PRECISION | — |
| next_tier_name | TEXT | — |
| next_tier_min_points | INTEGER | — |
| points_needed | DOUBLE PRECISION | — |
| progress_pct | NUMERIC | 0–100 |
