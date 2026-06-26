CREATE DATABASE IF NOT EXISTS economic_analytics;

USE economic_analytics;

DROP TABLE IF EXISTS gdp_gni_annual_real;

CREATE EXTERNAL TABLE gdp_gni_annual_real (
    series STRING,
    year_date STRING,
    gdp DOUBLE,
    gni DOUBLE,
    gdp_capita DOUBLE,
    gni_capita DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/maria_dev/final_report'
TBLPROPERTIES ("skip.header.line.count"="1");

-- Count total records
SELECT COUNT(*) AS total_records
FROM gdp_gni_annual_real;

-- Count records by series
SELECT series, COUNT(*) AS total_records
FROM gdp_gni_annual_real
GROUP BY series;

-- View the latest available years for absolute real GDP
SELECT year_date, gdp
FROM gdp_gni_annual_real
WHERE series = 'abs'
ORDER BY year_date DESC
LIMIT 10;

-- Top years by real GDP growth
SELECT year_date, gdp AS gdp_growth_rate, gni AS gni_growth_rate
FROM gdp_gni_annual_real
WHERE series = 'growth_yoy'
ORDER BY gdp DESC
LIMIT 10;