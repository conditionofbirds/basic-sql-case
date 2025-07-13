-- 02_cluster_wallet_activity.sql
-- Group wallets that send similar-sized transfers in short intervals
SELECT
  from_address,
  COUNT(*) as tx_count,
  AVG(amount) as avg_amount,
  MIN(block_time) as first_seen,
  MAX(block_time) as last_seen
FROM tron_usdt_transfers
WHERE block_time > CURRENT_DATE - INTERVAL '7 days'
GROUP BY from_address
HAVING COUNT(*) >= 3
   AND AVG(amount) BETWEEN 90 AND 120;
