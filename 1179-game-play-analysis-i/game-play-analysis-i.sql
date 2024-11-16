# Write your MySQL query statement below
WITH TB AS (
SELECT player_id,
       FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date ASC) AS first_login
FROM Activity)

SELECT DISTINCT player_id, first_login
FROM TB;