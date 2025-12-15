/*
Day 15: The Grinch's Mischief Tracker

Task:
The Grinch is tracking his daily mischief scores to see how his behavior changes over time.
Find how many points his score increased or decreased each day compared to the previous day.

Table:
grinch_mischief_log(log_date, mischief_score)

*/

SELECT 
    log_date, 
    mischief_score,  
    mischief_score - LAG(mischief_score) OVER (ORDER BY log_date) AS mischief_score_change
FROM grinch_mischief_log;
