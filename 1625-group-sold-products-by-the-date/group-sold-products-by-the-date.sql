# Write your MySQL query statement below
SELECT sell_date
       , COUNT(Distinct(product)) as num_sold
       , GROUP_CONCAT(Distinct(product) SEPARATOR ",") as products
FROM Activities
GROUP BY sell_date;