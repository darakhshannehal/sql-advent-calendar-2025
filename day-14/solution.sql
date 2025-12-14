/*
Day 14: Focus Challenge End Dates

Question:
The Productivity Club is tracking members' challenge start dates and wants to calculate each member's focus_end_date,
exactly 14 days after their start date. Return the existing table with the focus_end_date column.

Table:
focus_challenges(member_id, member_name, start_date)

*/

SELECT 
    member_id, 
    member_name, 
    start_date,
    DATE(start_date, '+14 days') AS focus_end_date
FROM focus_challenges;
