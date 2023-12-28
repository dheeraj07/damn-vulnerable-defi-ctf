![](cover.png)

**A set of challenges to learn offensive security of smart contracts in Ethereum.**

Featuring flash loans, price oracles, governance, NFTs, lending pools, smart contract wallets, timelocks, and more!

## Progress

#### 1 Unstoppable [ x ]
#### **2 - Naive receiver [ x ]**
- The receiver contract lacks proper validations for the flash loan amount received; it merely repays the received amount plus a fixed fee set by the flash loan lender contract. Exploiting this vulnerability, the lender contract can issue a flash loan ten times with a zero value, thereby draining the borrower's contract. The same has been implemented using an attacker contract.
#### 3 Truster [ ]
#### 4 Side entrance [ ]
#### 5 The rewarder [ ]
#### 6 Selfie [ ]
#### 7 Compromised [ ]
#### 8 Puppet [ ]
#### 9 Puppet v2 [ ]
#### 10 Free rider [ ]
#### 11 Backdoor [ ]
#### 12 Climber [ ]
#### 13 Wallet Mining [ ]
#### 14 Puppet V3 [ ]
#### 15 ABI Smuggling [ ]

## Play

Visit [damnvulnerabledefi.xyz](https://damnvulnerabledefi.xyz)

## Help

For Q&A and troubleshooting running Damn Vulnerable DeFi, go [here](https://github.com/tinchoabbate/damn-vulnerable-defi/discussions/categories/support-q-a-troubleshooting).

## Disclaimer

All Solidity code, practices and patterns in this repository are DAMN VULNERABLE and for educational purposes only.

DO NOT USE IN PRODUCTION.
