/*
Day 22 – Penguin Sleigh Ride Filter

Task:
The penguins are signing up for a community sleigh ride, but the organizers need a list of everyone who did NOT choose the "Evening Ride."

Dataset:
sleigh_ride_signups(signup_id, penguin_name, ride_time)

Analysis Objective:
- Return all penguins whose ride_time is not 'evening'
- Use a simple inequality or NOT condition
*/

SELECT signup_id,
       penguin_name,
       ride_time
FROM sleigh_ride_signups
WHERE ride_time <> 'evening';
