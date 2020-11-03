-- Create tables for raw data to be loaded into
CREATE TABLE Weather_data (
City TEXT,
MaxTemp BIGINT, 
Humidity INT,
Cloudiness INT,
WindSpeed BIGINT,
Date DATE NOT NULL,
CONSTRAINT pk_Weather_data PRIMARY KEY (City)
);

CREATE TABLE Starbucks_location (
StoreNumber TEXT PRIMARY KEY,
StoreName VARCHAR(255) NOT NULL,
OwnershipType TEXT,
StreetAddress VARCHAR NOT NULL,
City TEXT,
STATEProvince VARCHAR,
Postcode INT,
PhoneNumber TEXT
);

-- Joins tables
SELECT Weather_data.City, Weather_data.MaxTemp, Weather_data.Humidity, Weather_data.Cloudiness, Weather_data.WindSpeed,Weather_data.Date,
Starbucks_location.StoreNumber,Starbucks_location.StoreName,Starbucks_location.OwnershipType,Starbucks_location.StreetAddress,Starbucks_location.STATEProvince,
Starbucks_location.Postcode,Starbucks_location.PhoneNumber
FROM Weather_data
JOIN Starbucks_location
ON Weather_data.City=Starbucks_location.City;