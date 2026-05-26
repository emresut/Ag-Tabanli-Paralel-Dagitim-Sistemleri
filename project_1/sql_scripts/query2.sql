SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT 
    YEAR(Transaction_date) AS transaction_year,
    COUNT(*) AS transaction_count,
    SUM(Amount_spent) AS total_amount
FROM online_store_transactions
WHERE Transaction_date >= '2018-06-01'
  AND Transaction_date < '2018-07-01'
GROUP BY YEAR(Transaction_date);

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;