# dormant-whale-awakening-trap
A custom Drosera trap that detects dormant whales waking up with large transactions.
# Dormant Whale Awakening Trap 🐳⚠️

This Drosera trap detects suspicious large transactions from wallets that have been dormant for a long time — potentially signaling a wallet hack, scam, or major whale activity.

## 🛠 How It Works

- Monitors a hardcoded whale wallet address.
- Checks if it has been inactive for over 100 blocks.
- If a big transaction (>10 ETH) is detected after dormancy, it sends an on-chain alert.

## 📁 Key Files

- `src/Trap.sol`: The Trap logic contract.
- `src/AlertReceiver.sol`: Receives the alert from the trap.
- `drosera.toml`: Configuration file linking the trap, response contract, and metadata.

## ⚙️ Deployment Details

| Type             | Value                                                                 |
|------------------|-----------------------------------------------------------------------|
| Trap Address     | `0xB59CA593531e88b217ccdf9a0e6135ccc6175aee`                          |
| Response Contract| `0xb8e33155c4e69c38a224e72222B1b4e3F16038b9`                          |
| Response Function| `handleAlert(string)`                                                 |
| Operator Wallet  | `0xd4C846d7c6B885Eef3C7C1743B6e86891C83ddF1`                          |
| Chain            | Hoodi testnet                                                         |

## 🧪 Dry Run & Apply

Both `drosera dryrun` and `drosera apply` succeeded.

---

