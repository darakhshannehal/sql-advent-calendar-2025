/* 
Task: Categorize evening tasks as 'Calm' or 'Chaotic' based on noise_level.
Criteria: noise_level < 50 → 'Calm'; otherwise → 'Chaotic'
Output: task_name, noise_level, calm_or_not
Sort: Alphabetical order of task_name (optional)
Save as: evening_task_categories
*/
SELECT task_name,
       noise_level,
       CASE 
         WHEN noise_level < 50 THEN 'Calm'
         ELSE 'Chaotic'
       END AS calm_or_not
FROM evening_tasks
ORDER BY task_name;
