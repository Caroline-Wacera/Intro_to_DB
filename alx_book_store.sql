-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Create the Authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
);

-- Create the Books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE SET NULL
);

-- Create the Customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT NOT NULL
);

-- Create the Orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

-- Create the Order_Details table
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);

-- Insert sample authors
INSERT INTO Authors (author_name) VALUES 
('Chimamanda Ngozi Adichie'),
('Ngugi wa Thiong\'o'),
('Margaret Atwood');

-- Insert sample books
INSERT INTO Books (title, author_id, price, publication_date) VALUES 
('Half of a Yellow Sun', 1, 15.99, '2006-09-12'),
('Petals of Blood', 2, 12.50, '1977-06-20'),
('The Handmaid\'s Tale', 3, 14.75, '1985-08-01');

-- Insert sample customers
INSERT INTO Customers (customer_name, email, address) VALUES 
('John Doe', 'johndoe@example.com', '123 Street, Nairobi'),
('Alice Brown', 'alice@example.com', '456 Lane, Mombasa');

-- Insert sample orders
INSERT INTO Orders (customer_id, order_date) VALUES 
(1, '2025-01-28'),
(2, '2025-01-29');

-- Insert sample order details
INSERT INTO Order_Details (order_id, book_id, quantity) VALUES 
(1, 1, 2),
(2, 3, 1);