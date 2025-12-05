-- Day 5: Elf Vacation Status

-- Question:
-- Some elves took time off after the holiday rush, but not everyone has returned to work. 
-- List all elves by name, showing their return date. If they have not returned from vacation, list their return date as "Still resting".

-- Tables
-- elves(elf_id, elf_name)
-- vacations(elf_id, start_date, return_date)

SELECT 
    e.elf_name,
    COALESCE(v.return_date, 'Still resting') AS return_status
FROM elves AS e
LEFT JOIN vacations AS v
    ON e.elf_id = v.elf_id;
