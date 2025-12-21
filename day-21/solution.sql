/*
Day 21 – Fireside Story Running Total

Task:
The Snow Queen hosts nightly fireside chats and records how many stories she tells each evening.
Calculate the running total of stories she has shared over time, in the order they were told.

Dataset:
story_log(log_date, stories_shared)

Analysis Objective:
- Use a window function with SUM() OVER
- Order by log_date to ensure cumulative running total
- Return each log_date with its cumulative total
*/

SELECT log_date,
       SUM(stories_shared) OVER (ORDER BY log_date) AS running_total_stories_shared
FROM story_log;
