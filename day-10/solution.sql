/*
Day 10: Cookie Factory Oven Efficiency

Question:
In the holiday cookie factory, workers are measuring how efficient each oven is.
Can you find the average baking time per oven rounded to one decimal place

Tables
cookie_batches(batch_id, oven_id, baking_time_minutes)

Solution:

Use AVG to calculate the mean baking time per oven.
Group results by oven_id to get per-oven averages.
*/


SELECT 
    oven_id,
    ROUND(AVG(baking_time_minutes), 1) AS avg_baking_time
FROM cookie_batches
GROUP BY oven_id
ORDER BY oven_id;
