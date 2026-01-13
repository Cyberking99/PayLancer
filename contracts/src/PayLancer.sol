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

    function payInvoice(uint256 _invoiceId) external {
        Invoice storage invoice = invoices[_invoiceId];
        require(invoice.id != 0, "Invoice does not exist");
        require(!invoice.isPaid, "Invoice already paid");
        require(msg.sender == invoice.client, "Only client can pay");

        bool success = IERC20(invoice.token).transferFrom(
            msg.sender,
            invoice.creator,
            invoice.amount
        );
        require(success, "Payment failed");

        invoice.isPaid = true;
        emit InvoicePaid(_invoiceId, msg.sender);
    }
}
