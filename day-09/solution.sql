-- Day 9: Tinsel and Light Combinations

-- Question:
-- The elves are testing new tinsel–light combinations to find the next big holiday trend.
-- Write a query to generate every possible pairing of tinsel colors and light colors,
-- including in your output a column that combines the two values separated with a dash ("-").

-- Tables
-- tinsel_colors(tinsel_id, color_name)
-- light_colors(light_id, color_name)

-- Solution:
-- Use CROSS JOIN to generate all possible pairings.
-- Concatenate the two color names with a dash to form the combination column.

SELECT 
    t.color_name AS tinsel_color,
    l.color_name AS light_color,
    t.color_name || '-' || l.color_name AS combination
FROM tinsel_colors AS t
CROSS JOIN light_colors AS l
ORDER BY tinsel_color, light_color;
