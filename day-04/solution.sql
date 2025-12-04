-- Day 4: Energy-Efficient Holiday Decorations

-- Question:
-- Kevin's trying to decorate the house without sending the electricity bill through the roof. 
-- Write a query to find the top 5 most energy-efficient decorations (i.e. lowest cost per hour to operate).

-- Tables
-- hall_decorations(decoration_id, decoration_name, energy_cost_per_hour)

SELECT decoration_id, decoration_name, energy_cost_per_hour
FROM hall_decorations
ORDER BY energy_cost_per_hour ASC
LIMIT 5;

