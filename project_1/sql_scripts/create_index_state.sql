CREATE INDEX IX_transactions_state
ON online_store_transactions(State_names)
INCLUDE (Amount_spent);