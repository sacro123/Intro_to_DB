CREATE DATABASE IF NOT EXISTS alx_book_store
CREATE TABLE Books (
book_id INT PRIMARY key,
title varchar(130),
author_id FOREIGN KEY,
price DOUBLE,
);

CREATE TABLE Authors (
autour_id PRIMARY KEY,
author_name varchar(215)
);

CREATE TABLE Customers (
custumer_id PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215),
address TEXT

);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE,


);
CREATE TABLE Order_Details (
orderdetailid PRIMARY KEY,
order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
book_id FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE,


);