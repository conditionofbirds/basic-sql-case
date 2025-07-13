-- 01_detect_memo_less_tx.sql
-- Detect USDT transfers without memo (common in laundering to exchanges)
SELECT
  tx_hash,
  from_address,
  to_address,
  amount,
  memo,
  block_time
FROM tron_usdt_transfers
WHERE memo IS NULL
  AND amount > 100
  AND to_address IN (SELECT address FROM known_exchanges)
ORDER BY block_time DESC;
