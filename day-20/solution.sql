/*
Day 20 – Hot Cocoa Break Logs

Task:
Jack Frost wants to review all the cocoa breaks he actually took — including the cocoa type 
and the location he drank it in.

Dataset:
cocoa_logs(log_id, break_id, cocoa_id)
break_schedule(break_id, location_id)
cocoa_types(cocoa_id, cocoa_name)
locations(location_id, location_name)

Analysis Objective:
- Combine cocoa_logs with cocoa_types on cocoa_id
- Combine cocoa_logs with break_schedule on break_id
- Combine break_schedule with locations on location_id
- Return each logged break with its cocoa details and location
*/

SELECT cl.log_id,
       ct.cocoa_name,
       l.location_name
FROM cocoa_logs AS cl
INNER JOIN cocoa_types AS ct
  ON cl.cocoa_id = ct.cocoa_id
INNER JOIN break_schedule AS bs
  ON bs.break_id = cl.break_id
INNER JOIN locations AS l
  ON l.location_id = bs.location_id;
