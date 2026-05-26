SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT State_names, SUM(Amount_spent) AS total_amount
FROM online_store_transactions
WHERE State_names = 'Texas'
GROUP BY State_names;

SET STATISTICS TIME OFF;
SET STATISTICS IO OFF;