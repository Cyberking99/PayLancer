# Paylancer

**Paylancer** is a decentralized invoicing and payment platform tailored for the gig economy. Built on the **Base** Layer 2 network, it empowers freelancers and clients with secure, transparent, and efficient financial tools.

## The Problem

Freelancers often face delayed payments, high transaction fees from traditional payment processors, and a lack of payment guarantees. International transfers can take days to settle and incur significant currency conversion costs.

## The Solution

Paylancer leverages blockchain technology to solve these issues:

- **Onchain Invoices**: Create immutable, verifiable invoices that serve as a single source of truth.
- **Stablecoin Settlements**: All payments are settled in **USDC**, shielding users from crypto volatility and ensuring 1:1 value with the US Dollar.
- **Real-Time Streaming**: For hourly contracts or retainers, payments can be streamed second-by-second, ensuring freelancers get paid as they work.
- **Low Fees**: Operating on the Base network ensures transactions are fast and cost fractions of a cent.

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
