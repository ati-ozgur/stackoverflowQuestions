-- http://www.codeproject.com/Tips/811913/Generating-a-set-of-random-numbers-in-SQL-Server
DECLARE @SEED INT = 100;
DECLARE @SIZE INT = 5;

WITH RandomNumbers (RowNumber, RandomNumber) AS (
    -- Anchor member definition
    SELECT  1                         AS RowNumber, 
            RAND(@SEED) AS RandomNumber
    UNION ALL
    -- Recursive member definition
    SELECT  rn.RowNumber + 1          AS RowNumber, 
            RAND( 1000000000* RAND(@SEED + rn.RowNumber))  AS RandomNumber
    FROM RandomNumbers rn
    WHERE rn.RowNumber < @SIZE
)
-- Statement that executes the CTE
SELECT  rn.RowNumber, rn.RandomNumber
FROM RandomNumbers rn
INNER JOIN tbl_news n
ON rn.RowNumber = n.ID
ORDER BY rn.RandomNumber

GO