-- Create tables for raw data to be loaded into
CREATE TABLE weather_data (
city TEXT,
max_temp BIGINT,
humidity INT,
cloudiness INT,
wind_speed BIGINT,
date TEXT NOT NULL
);
select * from starbucks_location
CREATE TABLE starbucks_location (
store_number TEXT,
store_name VARCHAR(255) NOT NULL,
ownership_type TEXT,
street_address TEXT NOT NULL,
city TEXT,
state_province VARCHAR,
postcode TEXT,
phone_number TEXT
);

-- Joins tables
SELECT weather_data.city, weather_data.max_temp, weather_data.humidity, weather_data.cloudiness, weather_data.wind_speed,weather_data.date,
starbucks_location.store_number,starbucks_location.store_name,starbucks_location.ownership_type,starbucks_location.street_address,starbucks_location.state_province,
starbucks_location.postcode,starbucks_location.phone_number
FROM weather_data
JOIN starbucks_location
ON weather_data.city=starbucks_location.city;