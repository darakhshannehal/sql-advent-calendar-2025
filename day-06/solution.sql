-- Day 6: Ski Resort Snowfall Rankings

-- Question:
-- Buddy is planning a winter getaway and wants to rank ski resorts by annual snowfall. 
-- Can you help him bucket these ski resorts into quartiles?

-- Table
-- resort_monthly_snowfall(resort_id, resort_name, snow_month, snowfall_inches)

-- Solution:
-- quartiles: splitting dataset (arranged values in ascending order) into four equal parts
-- Aggregate monthly snowfall into annual totals per resort
-- Then bucket resorts into quartiles using Window function NTILE()

SELECT resort_name,
       annual_snowfall,
       NTILE(4) OVER (ORDER BY annual_snowfall) AS quartile
FROM (
    SELECT resort_id,
           resort_name,
           SUM(snowfall_inches) AS annual_snowfall
    FROM resort_monthly_snowfall
    GROUP BY resort_id, resort_name
) AS totals
ORDER BY annual_snowfall ASC;

