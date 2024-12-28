;; Title: Bitcoin Investment DAO Smart Contract

;; Summary:
;; This smart contract implements a decentralized autonomous organization (DAO) for managing Bitcoin investments.
;; It allows members to stake tokens, create and vote on proposals, and execute approved proposals.
; The contract includes mechanisms for validating inputs, managing member stakes, and ensuring proposals meet quorum requirements.

;; Description:
;; The Bitcoin Investment DAO smart contract is designed to facilitate decentralized decision-making and fund management.


;; Constants
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INVALID-AMOUNT (err u101))
(define-constant ERR-PROPOSAL-NOT-FOUND (err u102))
(define-constant ERR-ALREADY-VOTED (err u103))
(define-constant ERR-PROPOSAL-EXPIRED (err u104))
(define-constant ERR-INSUFFICIENT-BALANCE (err u105))
(define-constant ERR-PROPOSAL-NOT-ACTIVE (err u106))
(define-constant ERR-INVALID-STATUS (err u107))
(define-constant ERR-INVALID-OWNER (err u108))
(define-constant ERR-INVALID-TITLE (err u109))
(define-constant ERR-INVALID-DESCRIPTION (err u110))
(define-constant ERR-INVALID-RECIPIENT (err u111))
(define-constant ERR-INVALID-VOTE (err u112)) 