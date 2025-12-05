-- Day 3: The Grinch's Best Pranks Per Target

-- Question:
-- The Grinch has brainstormed a ton of pranks for Whoville, but he only wants to keep the top prank per target, with the highest evilness score. 
-- Return the most evil prank for each target. If two pranks have the same evilness, the more recently brainstormed wins.

-- Table
-- grinch_prank_ideas(prank_id, target_name, prank_description, evilness_score, created_at)

SELECT target_name, prank_description, evilness_score, created_at
FROM (
    SELECT 
        prank_id,
        target_name,
        prank_description,
        evilness_score,
        created_at,
        ROW_NUMBER() OVER (
            PARTITION BY target_name
            ORDER BY evilness_score DESC, created_at DESC
        ) AS rn
    FROM grinch_prank_ideas
) ranked
WHERE rn = 1;


