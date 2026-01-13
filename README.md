# Paylancer

Paylancer is a platform that allows freelancers to generate onchain invoices payable in stablecoins (like USDC on Base), with optional streaming payments.

## Features

- **Onchain Invoices**: Generate secure and verifiable invoices on the blockchain.
- **Stablecoin Payments**: Accept payments in stablecoins like USDC on the Base network.
- **Streaming Payments**: Option to receive payments in real-time streams.

## Project Structure

This project is organized as a monorepo:

- **`contracts/`**: Smart contracts and tests using [Foundry](https://getfoundry.sh/).
- **`frontend/`**: Web application built with [Next.js](https://nextjs.org/), TailwindCSS, and Shadcn/UI.

## Getting Started

To get started with Paylancer, clone the repository:

```bash
git clone https://github.com/Cyberking99/PayLancer.git
cd PayLancer
```

### Smart Contracts

Navigate to the `contracts` directory to work with the smart contracts.

1. **Install Foundry**:
   Ensure you have Foundry installed. If not, follow the [installation guide](https://book.getfoundry.sh/getting-started/installation).

2. **Build Contracts**:
   ```bash
   cd contracts
   forge build
   ```

3. **Run Tests**:
   ```bash
   forge test
   ```

### Frontend Application

Navigate to the `frontend` directory to run the web application.

1. **Install Dependencies**:
   ```bash
   cd frontend
   npm install
   ```

2. **Run Development Server**:
   ```bash
   npm run dev
   ```

   Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

[MIT](LICENSE)
