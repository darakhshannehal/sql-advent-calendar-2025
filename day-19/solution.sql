/*
Day 19 – Gift Wrap Paper Usage

Task:
Clara is reviewing holiday orders to uncover hidden patterns.
Return the total amount of wrapping paper used for orders that were both gift-wrapped and successfully delivered.

Dataset:
holiday_orders(order_id, customer_name, gift_wrap, paper_used_meters, delivery_status, order_date)

Analysis Objective:
- Filter only rows where gift_wrap = 'true' AND delivery_status = 'Delivered'
- Sum the paper_used_meters column
*/

SELECT SUM(paper_used_meters) AS total_amount_wrapping_paper
FROM holiday_orders
WHERE gift_wrap = true
  AND delivery_status = 'Delivered';
