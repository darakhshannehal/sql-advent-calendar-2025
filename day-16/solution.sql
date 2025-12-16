/* 
Task: Find all tasks that Buddy can do from under a blanket.
Criteria: Tasks marked as 'Work From Home' OR 'Low Priority'
Output: task_name, task_type, priority
*/

SELECT task_name, task_type, priority
FROM daily_tasks
WHERE task_type = 'Work From Home' 
   OR priority = 'Low';
