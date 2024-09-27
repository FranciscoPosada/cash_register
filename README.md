# Amenitiz Cash Register

## Overview

Welcome to the Amenitiz Cash Register! We built this application to bring our C-Suite's passion for providing healthy
snacks at low prices to employees at Amenitiz.

This easy to use CLI application is built
using Ruby, and allows users to view a selection of different products, add
these products to their cart and see a total price at checkout with special
discounting rules implemented where applicable.

## Features

- Users can browse the selection of available products and their prices.

  | Product Code | Name | Price |
  |--|--|--|
  | GR1 |  Green Tea | 3.11€ |
  | SR1 |  Strawberries | 5.00 € |
  | CF1 |  Coffee | 11.23 € |

- Users can choose to add items to their cart using unique item codes or checkout and view their bill at any time.

- The application computes a total final price at checkout, inclusive of special pricing rules and discounts specified by senior management:

    **Green Tea Deal - buy one get one free**
    - For every unit of Green Tea (GR1) purchased, the user will get another unit for free.

    **Discount on purchases of 3 or more Strawberries**
    - Purchasing 3 or more units of Strawberries (SR1) reduces price per unit by 50 cents.

    **Discount on purchases of 3 or more Coffees**
    - Purchasing 3 or more units of Coffee (CF1)creduces the price per unit to one-third.

## Getting Started

### Prerequisites

- Ruby version 3.1.2p20 (or later)

Ensure that you have Ruby version 3.1.2p20 (or later) installed on your local device. If you don't have Ruby installed, you can install it by following the instructions from the official [Ruby documentation](https://www.ruby-lang.org/en/documentation/installation/).

Verify your Ruby version by running:

```bash
ruby -v
```

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/FranciscoPosada/cash_register.git
2. **Navigate to the project directory**
    ```bash
    cd cash_register
3. **Run the application**
    ```bash
    ruby interface.rb
4. **Change git remote URL**
To avoid accidentially pushing to the base project, update the Remote URL

    ```bash
    git remote set-url origin https://github.com/your_username/repo_name.git
    git remote -v
    ```
## Usage

To add products to your cart, use their unique product codes provided in the
application.

For example:

1. **Start the application** by running the following command in your terminal:

   ```bash
   ruby interface.rb
2. **View available products**

    ```bash
    Welcome to Amenitiz Cash Register!
    --------------------------
    In our store today:
    Green Tea (GR1): 3.11€
    Strawberries (SR1): 5.0€
    Coffee (CF1): 11.23€
    --------------------
    Which item code? (or 'quit' to checkout)
   ```

3. **Add products to cart using unique codes**

    ```bash
    Which item code? (or 'quit' to checkout)
    CF1
    Coffee added to your cart.
    Which item code? (or 'quit' to checkout)
    ```

4. **Checkout**

    ```bash
    Your cart:
    Coffees (x2): 22.46€
    Strawberries (x1): 5.0€
    --------------------
    Total bill: 27.46€
    ```

## Roadmap

- **User Authentication**: Implement user accounts to allow users to save their carts and purchase history.

- **Product Categories**: Organize products into categories (e.g., beverages, fruits) for easier browsing.

- **Order History**: Allow users to view their previous purchases and receipts.

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement"

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/NewFeature)
3. Commit your Changes (git commit -m 'Add some NewFeature')
4. Push to the Branch (git push origin feature/NewFeature)
45. Open a Pull Request
