-- 03_join_labels_exchange.sql
-- Join wallet transfer data with known exchange labels
SELECT
  t.tx_hash,
  t.from_address,
  l.entity_name AS destination_label,
  t.amount,
  t.block_time
FROM tron_usdt_transfers t
JOIN address_labels l ON t.to_address = l.address
WHERE t.amount > 100
  AND l.entity_type = 'exchange';
