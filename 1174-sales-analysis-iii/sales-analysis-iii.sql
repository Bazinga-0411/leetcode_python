/* Write your T-SQL query statement below */
WITH CAT AS (
    SELECT product_id,
           MAX(CASE WHEN sale_date < '2019-01-01' OR sale_date > '2019-03-31' THEN 1 ELSE 0 END) AS outside_range
    FROM Sales
    GROUP BY product_id
)

SELECT DISTINCT p.product_id, p.product_name
FROM Product p
JOIN CAT c ON p.product_id = c.product_id
WHERE c.outside_range = 0;