# Write your MySQL query statement below
WITH TB AS(
    SELECT actor_id,
           director_id,
           ROW_NUMBER() OVER(PARTITION BY actor_id, director_id ORDER BY actor_id ASC) AS count_number
    FROM ActorDirector
)

SELECT DISTINCT actor_id, director_id
FROM TB
WHERE count_number >= 3;