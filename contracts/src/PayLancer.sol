// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract PayLancer {
    struct Invoice {
        uint256 id;
        address creator;
        address client;
        uint256 amount;
        address token;
        bool isPaid;
    }

    mapping(uint256 => Invoice) public invoices;
    uint256 public nextInvoiceId;

    event InvoiceCreated(
        uint256 indexed id,
        address indexed creator,
        address indexed client,
        uint256 amount,
        address token
    );
    event InvoicePaid(uint256 indexed id, address indexed payer);
}
