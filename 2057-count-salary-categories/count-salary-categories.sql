/* Write your T-SQL query statement below */
WITH TC AS (
    SELECT * 
    FROM (VALUES 
              ('Low Salary'), 
              ('Average Salary'), 
              ('High Salary')
         ) AS temp(category)
),
CET AS (
    SELECT account_id,
           CASE 
               WHEN income < 20000 THEN 'Low Salary'
               WHEN income > 50000 THEN 'High Salary'
               WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
           END AS category
    FROM Accounts
)
SELECT TC.category,
       COALESCE(COUNT(CET.account_id), 0) AS accounts_count
FROM TC
LEFT JOIN CET ON TC.category = CET.category
GROUP BY TC.category;