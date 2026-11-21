# Travel Hospitality Data Engineering Project 
### Team Name: I4
#### Team Members: Seah Im, Jiny Han, Nathan Rodriguez, Tiexuan Zhu

# Project Overview 
Our group's industry is travel hospitality. This industry covers companies or businesses that cater to people who travel. This industry includes hotels, airlines, car rentals, etc. The business problem we aim to solve is figuring out which member and silver tier customers are within 20% of the next tier's points threshold and which booking service they come from. This is an important business question that aims to figure out which customers we should cater to in order for them to get to the next tier, which should motivate them to work with our hospitality group more. What we are going to need to do on the backend is make sure our data is cleaned and relevant tables are ready for analysis. We then need to create a data pipeline in dbt that will allow us to join these relevant tables to plug them into Superset and create visualizations that help drive business decisions. 

**Target Stakeholders: Loyalty program managers, revenue managers, channel/distribution managers, and CRM marketing teams.**

**Central Business Question: Which members and Silver customers are within 20% of the next tier’s points threshold, and which booking channel do they come from?**

#  Dataset Description
Our project uses eight synthetic CSV datasets containing a total of 16,770 raw records.

| Dataset | Raw Rows | Description |
|---|---:|---|
| booking_channels.csv | 6 | Booking channels and commission percentages |
| bookings.csv | 9,015 | Hotel reservations, stay dates, booking statuses, revenue, and points |
| customers.csv | 2,508 | Customer profiles, enrollment dates, and loyalty tiers |
| hotel_brands.csv | 4 | Hotel brands and market segments |
| loyalty_activity.csv | 5,200 | Non-stay loyalty point activity |
| loyalty_tiers.csv | 4 | Loyalty tiers, qualifying-points thresholds, and benefits |
| properties.csv | 27 | Hotel properties, locations, and brand relationships |
| room_types.csv | 6 | Room categories, occupancy, and rate multipliers |

The data dictionary is available in data_dictionary.md.
