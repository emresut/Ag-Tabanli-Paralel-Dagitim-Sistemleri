CREATE INDEX IX_transactions_date
ON online_store_transactions(Transaction_date)
INCLUDE (Amount_spent);