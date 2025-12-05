-- Day 1: Reindeer Run – Find the Top 7

-- Question:
-- Every year, the city of Whoville conducts a Reindeer Run to find the best reindeers for Santa's Sleigh.
-- Write a query to return the name and rank of the top 7 reindeers in this race.

-- Table
-- reindeer_run_results(number, name, rank, color)

SELECT name, rank
FROM reindeer_run_results
ORDER BY rank ASC
LIMIT 7;
