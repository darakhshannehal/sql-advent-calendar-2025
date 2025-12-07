-- Day 7: Snowflake Types Count

-- Question:
-- Frosty wants to know how many unique snowflake types were recorded 
-- on the December 24th, 2025 storm. Can you help him?

-- Table
-- snowfall_log(flake_id, flake_type, fall_time)

-- Solution:
-- We need to count the number of distinct snowflake types on a specific date.
-- Use COUNT(DISTINCT ...) to get the unique types.
-- Filter rows by fall_time = '2025-12-24'.

SELECT COUNT(DISTINCT flake_type) AS unique_flake_types
FROM snowfall_log
WHERE fall_time = '2025-12-24';
