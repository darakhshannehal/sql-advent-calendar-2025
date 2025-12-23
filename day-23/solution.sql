/*
Day 23 – Gingerbread House Top Builders

Task:
The Gingerbread House Competition wants to feature the builders who used at least 4 distinct candy types in their designs.

Dataset:
gingerbread_designs(builder_id, builder_name, candy_type)

Analysis Objective:
- Group designs by builder_name
- Count distinct candy_type per builder
- Return only builders with at least 4 distinct candy types
*/

SELECT builder_name,
       COUNT(DISTINCT candy_type) AS count_unique_candies
FROM gingerbread_designs
GROUP BY builder_name
HAVING COUNT(DISTINCT candy_type) >= 4;

