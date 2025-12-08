-- Day 8: Storage Room Inventory

-- Question:
-- Mrs. Claus is organizing the holiday storage room and wants a single list of all decorations — both Christmas trees and light sets.
-- Write a query that combines both tables and includes each item's name and category.

-- Tables
-- storage_trees(item_name, category)
-- storage_lights(item_name, category)

-- Solution:
-- Both tables have the same schema (item_name, category)
-- Use UNION ALL to stack rows from both tables into one list.

SELECT item_name, category
FROM storage_trees 
UNION ALL
SELECT item_name, category
FROM storage_lights;
