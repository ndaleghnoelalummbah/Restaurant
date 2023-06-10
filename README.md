
# TCHOP - Restaurant Food Ordering Application 

TCHOP is a food ordering application built using React for the frontend and PHP for the backend. The system utilizes a distributed database for different branches of the same restaurant. The React pages send data to the PHP APIs using Post requests via the PHP endpoint URLs and the PHP APIs send data to the frontend by returning JSON data using API endpoints.
 ## Features 

- The application allows users to browse the menu and place orders for food items from the restaurant.
- Users can select items from the menu, customize their orders (normal delivery or reservation), and add them to their cart.
- The system utilizes a distributed database to store menu items, orders, and user data for different branches of the same restaurant.
- The React pages send data to the PHP APIs using Post requests via the PHP endpoint URLs.

## Technologies Used

    - React
    - PHP
    - MySQL

## Installation

    1. Clone the repository: git clone https://github.com/your-username/tchop.git
    2. Install the dependencies for the React frontend: cd tchop/frontend && npm install
    3. Configure the backend by creating a config.php file in the backend directory with your MySQL database credentials:

php:

<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'your-db-user');
define('DB_PASS', 'your-db-password');
define('DB_NAME', 'tchop');
?>

    4. Import the SQL schema for the database: mysql -u your-db-user -p tchop < tchop.sql
    5. Start the React frontend: cd ../frontend && npm start
    6. Start the PHP backend: cd ../backend && php -S localhost:8000

## Usage

    1. Open the application in your web browser at http://localhost:3000.
    2. Browse the menu and add items to your cart.
    3. Customize your order and proceed to checkout.
    4. Enter your payment and delivery information.
    5. Submit your order and wait for notification when your order is ready.

## Contributing

Contributions to TCHOP are welcome! To contribute, follow these steps:

    1. Fork the repository.
    2. Create a new branch for your feature or bug fix: git checkout -b my-new-feature
    3. Implement your feature or bug fix and add tests if possible.
    4. Commit your changes: git commit -am 'Add some feature'
    5. Push to the branch: git push origin my-new-feature
    6. Submit a pull request.

## License

TCHOP is licensed under the MIT License. See LICENSE for more information.
