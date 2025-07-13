 SQL Compliance Case: Detecting Suspicious Stablecoin Activity on TRoN

Scenario: we investigate a case involving **memo-less USDT transactions** on the TRON blockchain, where funds were funneled through multiple wallets and deposited into exchanges — a common laundering tactic.

Contents:
- `01_detect_memo_less_tx.sql` – identify USDT transfers with no memo
- `02_cluster_wallet_activity.sql` – find wallet clusters with similar behavior
- `03_join_labels_exchange.sql` – enrich with known exchange tags
- `sample_data.csv` – simulated on-chain data for testing

Tools used:  PostgreSQL / BigQuery-compatible syntax. 

Author:
[conditionofbirds](https://github.com/conditionofbirds)
