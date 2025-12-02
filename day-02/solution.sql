-- Day 2: Toys Delivered - Find Which Toys Made It
-- Question:
-- Santa wants to analyze which toys that were produced in his workshop have already been delivered to children. 
-- You are given two tables on toy production and toy delivery — can you return the toy ID and toy name of the toys that have been delivered?

-- Tables
-- toy_production(toy_id, toy_name, production_date)
-- toy_delivery(toy_id, child_name, delivery_date)

SELECT tp.toy_id, tp.toy_name
FROM toy_production AS tp
INNER JOIN toy_delivery AS td
  ON td.toy_id = tp.toy_id;
