/*
Day 18 – 12 Days of Data: Progress Tracking

Task:
Data Dawn tracked her daily quiz scores across different subjects.
Find each subject's first and last recorded score to see how much she improved.

Dataset:
daily_quiz_scores(subject, quiz_date, score)

Analysis Objective:
- For each subject, identify the first and last score recorded.
- Identify the last score recorded (latest quiz_date).
*/

SELECT DISTINCT subject,
       FIRST_VALUE(score) OVER (PARTITION BY subject ORDER BY quiz_date ASC) AS first_recorded,
       FIRST_VALUE(score) OVER (PARTITION BY subject ORDER BY quiz_date DESC) AS last_recorded
FROM daily_quiz_scores;
