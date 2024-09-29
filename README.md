# Amenitiz Cash Register

## Overview

Welcome to the Amenitiz Cash Register! We built this application to bring our C-Suite's passion for providing healthy
snacks at low prices to employees at Amenitiz.

This easy to use CLI application is built
using Ruby, and allows users to  browse available products and discounts, add
products to a shopping basket and view their computed bill inclusive of discount
rules at checkout.

## Features

- Users can choose their preferred action from a main menu:

  ```bash
    Welcome to Amenitiz Cash Register!
    -----------------------------------

    Please select an option:
    A. View Available Products
    B. View Discounts
    C. Shop (Add Products to Basket)
    D. Checkout
    E. Exit
  ```

- Users can browse the selection of available products and their prices.

  ```bash
    In our store today:
    Green Tea (GR1): 3.11€
    Strawberries (SR1): 5.0€
    Coffee (CF1): 11.23€
    -----------------------------------
  ```

- Users can browse discounts that are currently available to them.

  ```bash
    Discounts currently available:
    - Buy-one-get-one-free on Green Tea (GR1)
    - Strawberries (SR1): 4.50€ each when you buy 3 or more
    - Coffee (CF1): 2/3 price discount when you buy 3 or more
    -----------------------------------
  ```

- Users can choose to add items to their cart using unique item codes.

  ```bash
    In our store today:
    Green Tea (GR1): 3.11€
    Strawberries (SR1): 5.0€
    Coffee (CF1): 11.23€
    -----------------------------------
    Which item code? (or 'quit' to stop adding items)
  ```

- Users can checkout to view their bill with a computed final price, inclusive
of all applicable discounts

  ```bash
    Your cart:
    Coffees (x2)
    --------------------
    Total bill: 22.46€
  ```

- Users can exit the application at any time

  ```bash
    Thank you for shopping with us! Goodbye.
  ```


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


## Testing

The application includes a set of tests using RSpec to ensure that all models and
views work as required and expected. Follow the steps below to execute testing.

### 1. Install RSpec
Install RSpec if it is not already installed.

```bash
  gem 'rspec'
```
Then run:

```bash
  bundle install
```
### 2. Initialise RSpec
Initialise RSpec if it has not yet been initialised.

```bash
  bundle exec rspec --init
```

### 3. Run the tests
To run all the tests, use the following command:

```bash
  bundle exec rspec
```

To run a specific test file, e.g. tests for the cart model, run:

```bash
  bundle exec rspec spec/models/cart_spec.rb
```



## Roadmap

- **User Authentication**: Implement user accounts to allow users to save their carts and purchase history.

- **Product Categories**: Organize products into categories (e.g., beverages, fruits) for easier browsing.

- **Order History**: Allow users to view their previous purchases and receipts.

- **Front End Implementation**: Implement a Rails based front end to replace the
CLI interface

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement"

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/NewFeature)
3. Commit your Changes (git commit -m 'Add some NewFeature')
4. Push to the Branch (git push origin feature/NewFeature)
45. Open a Pull Request
