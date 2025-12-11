-- Day 11: Winter Market Sweater Search

-- Question:
-- At the winter market, Cindy Lou is browsing the clothing inventory and wants to find all items
-- with "sweater" in their name. The color and item columns have inconsistent capitalization.
-- Write a query to return only the sweater names and their cleaned-up colors.

-- Table
-- winter_clothing(item_id, item_name, color)

-- Solution:
-- Use LOWER(item_name) with LIKE to catch "sweater" regardless of case.
-- Apply UPPER(color) to standardize color output.

SELECT 
    item_name,
    UPPER(color) AS cleaned_color
FROM winter_clothing
WHERE LOWER(item_name) LIKE '%sweater%';
