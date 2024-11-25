/* Write your T-SQL query statement below */
WITH T AS(
    SELECT *,
           LAG(num)OVER(ORDER BY id ASC) AS previous_row,
           LEAD(num)OVER(ORDER BY id ASC) AS next_row
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM T
WHERE previous_row = num AND next_row = num;