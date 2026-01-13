// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IERC20 {
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);
}

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

    constructor() {
        nextInvoiceId = 1;
    }

    function createInvoice(
        address _client,
        uint256 _amount,
        address _token
    ) external {
        invoices[nextInvoiceId] = Invoice({
            id: nextInvoiceId,
            creator: msg.sender,
            client: _client,
            amount: _amount,
            token: _token,
            isPaid: false
        });

        emit InvoiceCreated(
            nextInvoiceId,
            msg.sender,
            _client,
            _amount,
            _token
        );
        nextInvoiceId++;
    }
}
