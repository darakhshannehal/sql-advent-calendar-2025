/*
Day 13: Naughty or Nice Score Extremes

Question:
Santa's audit team is reviewing this year's behavior scores to find the extremes.
Write a query to return the lowest and highest scores recorded on the Naughty or Nice list.

Table:
behavior_scores(record_id, child_name, behavior_score)

*/

SELECT 'Lowest' AS score_type, child_name, behavior_score
FROM behavior_scores
WHERE behavior_score = (SELECT MIN(behavior_score) FROM behavior_scores)

UNION ALL

SELECT 'Highest' AS score_type, child_name, behavior_score
FROM behavior_scores
WHERE behavior_score = (SELECT MAX(behavior_score) FROM behavior_scores);
