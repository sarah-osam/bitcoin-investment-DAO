# Bitcoin Investment DAO Smart Contract

A decentralized autonomous organization (DAO) smart contract built on Stacks for managing Bitcoin investments through collective decision-making.

## Overview

The Bitcoin Investment DAO enables members to:

- Stake tokens to participate in governance
- Create investment proposals
- Vote on proposals
- Execute approved proposals
- Manage collective funds

## Features

- **Membership Management**

  - Token staking/unstaking
  - Voting power proportional to stake
  - Member activity tracking

- **Proposal System**

  - Detailed proposal creation
  - Democratic voting mechanism
  - Automatic proposal execution
  - Quorum requirements

- **Security**
  - Role-based access control
  - Input validation
  - Safe state transitions
  - Protected fund management

## Technical Details

### Constants

- Minimum proposal amount: 1,000,000 uSTX
- Quorum threshold: 50% (500 basis points)
- Proposal duration: ~24 hours (144 blocks)

### Core Functions

#### Membership

```clarity
(stake-tokens (amount uint))
(unstake-tokens (amount uint))
```

#### Proposals

```clarity
(create-proposal (title (string-ascii 100))
                (description (string-ascii 500))
                (amount uint)
                (recipient principal))
```

#### Voting

```clarity
(vote (proposal-id uint) (vote-for bool))
```

#### Execution

```clarity
(execute-proposal (proposal-id uint))
```

### Read-Only Functions

```clarity
(get-member-info (address principal))
(get-proposal-info (proposal-id uint))
(get-vote-info (proposal-id uint) (voter principal))
(get-dao-info)
```

## Getting Started

1. Deploy the contract to the Stacks blockchain
2. Initialize the DAO with an owner address
3. Members can begin staking tokens
4. Create proposals for Bitcoin investments
5. Vote on active proposals
6. Execute approved proposals

## Error Codes

- `ERR-NOT-AUTHORIZED (u100)`: Unauthorized access attempt
- `ERR-INVALID-AMOUNT (u101)`: Invalid token amount
- `ERR-PROPOSAL-NOT-FOUND (u102)`: Proposal ID doesn't exist
- `ERR-ALREADY-VOTED (u103)`: Member has already voted
- `ERR-PROPOSAL-EXPIRED (u104)`: Proposal voting period ended
- `ERR-INSUFFICIENT-BALANCE (u105)`: Insufficient token balance
- `ERR-PROPOSAL-NOT-ACTIVE (u106)`: Proposal is not in active state
- `ERR-INVALID-STATUS (u107)`: Invalid proposal status
- `ERR-INVALID-OWNER (u108)`: Invalid owner address
- `ERR-INVALID-TITLE (u109)`: Invalid proposal title
- `ERR-INVALID-DESCRIPTION (u110)`: Invalid proposal description
- `ERR-INVALID-RECIPIENT (u111)`: Invalid recipient address
- `ERR-INVALID-VOTE (u112)`: Invalid vote value
