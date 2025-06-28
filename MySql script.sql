CREATE DATABASE IF NOT EXISTS streaming_insights_db;
USE streaming_insights_db;

CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    region VARCHAR(50),
    avg_income_usd FLOAT,
    internet_penetration_pct FLOAT
);
INSERT INTO countries (country_id, country_name, region, avg_income_usd, internet_penetration_pct)
VALUES 
(1, 'India', 'Asia', 420, 48.7),
(2, 'United States', 'North America', 3500, 91.2),
(3, 'Brazil', 'South America', 950, 75.4),
(4, 'Germany', 'Europe', 3100, 92.8),
(5, 'Nigeria', 'Africa', 250, 36.9),
(6, 'Japan', 'Asia', 3400, 94.5),
(7, 'UK', 'Europe', 3200, 95.1),
(8, 'Mexico', 'North America', 850, 72.3);
SELECT * FROM countries;

-- Step 2: Create streaming_platforms table
CREATE TABLE streaming_platforms (
    platform_id INT PRIMARY KEY,
    platform_name VARCHAR(100),
    monthly_price_usd FLOAT,
    is_free BOOLEAN
);

-- Insert sample data
INSERT INTO streaming_platforms (platform_id, platform_name, monthly_price_usd, is_free)
VALUES 
(1, 'Netflix', 8.99, 0),
(2, 'YouTube', 0.00, 1),
(3, 'Amazon Prime Video', 5.99, 0),
(4, 'Disney+', 7.99, 0),
(5, 'Hotstar', 3.49, 0),
(6, 'Hulu', 6.99, 0);

-- View the data
SELECT * FROM streaming_platforms;

CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    country_id INT,
    platform_id INT,
    total_users_millions FLOAT,
    year INT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id),
    FOREIGN KEY (platform_id) REFERENCES streaming_platforms(platform_id)
);

INSERT INTO subscriptions (subscription_id, country_id, platform_id, total_users_millions, year)
VALUES 
(1, 1, 1, 23.5, 2023),   -- India, Netflix
(2, 1, 2, 105.0, 2023),  -- India, YouTube
(3, 2, 1, 76.0, 2023),   -- US, Netflix
(4, 2, 2, 210.0, 2023),  -- US, YouTube
(5, 2, 3, 45.0, 2023),   -- US, Prime Video
(6, 3, 1, 18.0, 2023),   -- Brazil, Netflix
(7, 3, 2, 90.0, 2023),   -- Brazil, YouTube
(8, 4, 1, 29.0, 2023);   -- Germany, Netflix

SELECT * FROM subscriptions;

CREATE TABLE genres_consumed (
    genre_id INT PRIMARY KEY,
    platform_id INT,
    country_id INT,
    genre_name VARCHAR(50),
    avg_watch_hours FLOAT,
    year INT,
    FOREIGN KEY (platform_id) REFERENCES streaming_platforms(platform_id),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

INSERT INTO genres_consumed (genre_id, platform_id, country_id, genre_name, avg_watch_hours, year)
VALUES 
(1, 1, 1, 'Drama', 12.5, 2023),
(2, 1, 1, 'Comedy', 8.3, 2023),
(3, 2, 1, 'Music', 15.7, 2023),
(4, 1, 2, 'Action', 10.4, 2023),
(5, 3, 2, 'Thriller', 6.1, 2023),
(6, 2, 3, 'Education', 7.5, 2023),
(7, 1, 3, 'Drama', 9.0, 2023),
(8, 1, 4, 'Documentary', 5.8, 2023);

SELECT * FROM genres_consumed;

CREATE TABLE economic_indicators (
    econ_id INT PRIMARY KEY,
    country_id INT,
    year INT,
    gdp_per_capita_usd FLOAT,
    inflation_pct FLOAT,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
INSERT INTO economic_indicators (econ_id, country_id, year, gdp_per_capita_usd, inflation_pct)
VALUES 
(1, 1, 2023, 2350, 6.8),   -- India
(2, 2, 2023, 70000, 3.2),  -- US
(3, 3, 2023, 9400, 4.9),   -- Brazil
(4, 4, 2023, 53000, 2.7),  -- Germany
(5, 5, 2023, 2200, 16.1),  -- Nigeria
(6, 6, 2023, 49000, 1.3),  -- Japan
(7, 7, 2023, 46000, 2.5),  -- UK
(8, 8, 2023, 10500, 5.2);  -- Mexico

SELECT * FROM economic_indicators;
