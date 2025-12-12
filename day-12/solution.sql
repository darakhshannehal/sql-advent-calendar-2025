/*
Day 12: North Pole Network Most Active Users

Task:
The North Pole Network wants to see who's the most active in the holiday chat each day.
Write a query to count how many messages each user sent, then find the most active user(s) each day.
If multiple users tie for first place, return all of them.

Tables:
npn_users(user_id, user_name)
npn_messages(message_id, sender_id, sent_at)

*/

SELECT user_name, msg_date, num_msg
FROM (
    SELECT 
        nu.user_name,
        DATE(nm.sent_at) AS msg_date,
        COUNT(nm.message_id) AS num_msg,
        RANK() OVER (
            PARTITION BY DATE(nm.sent_at) 
            ORDER BY COUNT(nm.message_id) DESC
        ) AS rnk
    FROM npn_users AS nu
    JOIN npn_messages AS nm 
        ON nu.user_id = nm.sender_id
    GROUP BY nu.user_name, DATE(nm.sent_at)
) ranked
WHERE rnk = 1
ORDER BY msg_date, user_name;
