CREATE DATABASE gescom_struct;

USE gescom_struct;

CREATE TABLE Client(
   client_id INT AUTO_INCREMENT,
   client_name VARCHAR(50),
   client_first_name VARCHAR(50),
   client_adress TEXT,
   client_city VARCHAR(30),
   client_zipcode VARCHAR(50),
   client_country VARCHAR(30),
   client_phone VARCHAR(10) NOT NULL,
   client_mail TEXT,
   client_password VARCHAR(50),
   client_creation DATETIME,
   client_update_date DATETIME,
   PRIMARY KEY(client_id)
);

CREATE TABLE Provider(
   provider_id INT AUTO_INCREMENT,
   provider_company_name VARCHAR(50) NOT NULL,
   provider_commercial_name VARCHAR(50),
   provider_country VARCHAR(50),
   PRIMARY KEY(provider_id)
);

CREATE TABLE Order_(
   order_id INT AUTO_INCREMENT,
   order_date DATETIME,
   order_estimated_delivery_date DATE,
   delivery_date DATE,
   order_status VARCHAR(50),
   client_id INT NOT NULL,
   PRIMARY KEY(order_id),
   FOREIGN KEY(client_id) REFERENCES Client(client_id)
);

CREATE TABLE Employee(
   employee_id INT AUTO_INCREMENT,
   employee_job VARCHAR(50),
   employee_store VARCHAR(50),
   employee_annual_gross_salary DECIMAL(7,2),
   employee_seniority DECIMAL(3,0),
   employee_sex LOGICAL,
   employee_children DECIMAL(2,0),
   PRIMARY KEY(employee_id)
);

CREATE TABLE Administrator(
   admin_id INT AUTO_INCREMENT,
   admin_pseudo VARCHAR(50),
   admin_password VARCHAR(50),
   PRIMARY KEY(admin_id)
);

CREATE TABLE Categories(
   cat_id INT AUTO_INCREMENT,
   cat_name VARCHAR(50),
   cat_sub_name VARCHAR(50),
   PRIMARY KEY(cat_id)
);

CREATE TABLE Product(
   product_id INT AUTO_INCREMENT,
   product_name VARCHAR(50),
   product_ref VARCHAR(50),
   product_price DECIMAL(7,2),
   product_ean VARCHAR(50),
   product_stock INT,
   product_stock_critic INT,
   product_color VARCHAR(30),
   product_label VARCHAR(30),
   product_added_date DATETIME,
   product_update_date DATETIME,
   product_picture_name TEXT,
   product_on_sale LOGICAL,
   cat_id INT NOT NULL,
   provider_id INT NOT NULL,
   PRIMARY KEY(product_id),
   FOREIGN KEY(cat_id) REFERENCES Categories(cat_id),
   FOREIGN KEY(provider_id) REFERENCES Provider(provider_id)
);

CREATE TABLE can_see(
   employee_id INT,
   admin_id INT,
   PRIMARY KEY(employee_id, admin_id),
   FOREIGN KEY(employee_id) REFERENCES Employee(employee_id),
   FOREIGN KEY(admin_id) REFERENCES Administrator(admin_id)
);

CREATE TABLE moderate(
   product_id INT,
   admin_id INT,
   PRIMARY KEY(product_id, admin_id),
   FOREIGN KEY(product_id) REFERENCES Product(product_id),
   FOREIGN KEY(admin_id) REFERENCES Administrator(admin_id)
);

CREATE TABLE order_details(
   product_id INT,
   order_id INT,
   orderd_commentary TEXT,
   orderd_quantity DECIMAL(3,0),
   orderd_vat DECIMAL(2,2),
   orderd_shopping_cart VARCHAR(50),
   orderd_final_price DECIMAL(7,2),
   orderd_adress VARCHAR(50),
   orderd_city VARCHAR(50),
   orderd_zipcode VARCHAR(50),
   orderd_country VARCHAR(50),
   PRIMARY KEY(product_id, order_id),
   FOREIGN KEY(product_id) REFERENCES Product(product_id),
   FOREIGN KEY(order_id) REFERENCES Order_(order_id)
);
