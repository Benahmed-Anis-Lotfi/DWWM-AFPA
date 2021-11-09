CREATE DATABASE Village_Green;

USE DATABASE Village_Green;

CREATE TABLE categories(
   cat_id INT AUTO_INCREMENT,
   cat_name VARCHAR(50),
   cat_sup_id INT NULL,
   PRIMARY KEY(cat_id),
   FOREIGN KEY(cat_sup_id) REFERENCES categories(cat_id)
);

CREATE TABLE countries(
   cou_id VARCHAR(2),
   cou_name VARCHAR(50),
   PRIMARY KEY(cou_id)
);

CREATE TABLE commercials(
   com_id INT AUTO_INCREMENT,
   com_name VARCHAR(50),
   com_firstname VARCHAR(50),
   com_mail VARCHAR(50),
   com_phone VARCHAR(50),
   com_password VARCHAR(50),
   PRIMARY KEY(com_id)
);

CREATE TABLE Types(
   type_id INT AUTO_INCREMENT,
   type_name VARCHAR(50),
   type_coef DECIMAL(2,2),
   PRIMARY KEY(type_id)
);

CREATE TABLE suppliers(
   sup_id INT AUTO_INCREMENT,
   sup_name VARCHAR(50),
   sup_address VARCHAR(50),
   sup_zipcode VARCHAR(50),
   sup_city VARCHAR(50),
   sup_phone VARCHAR(50),
   sup_mail VARCHAR(50),
   sup_cou_id VARCHAR(2) NOT NULL,
   PRIMARY KEY(sup_id),
   FOREIGN KEY(sup_cou_id) REFERENCES countries(cou_id)
);

CREATE TABLE users(
   use_id INT AUTO_INCREMENT,
   use_name VARCHAR(50),
   use_address VARCHAR(50),
   use_zipcode VARCHAR(50),
   use_city VARCHAR(50),
   use_mail VARCHAR(50),
   use_phone VARCHAR(50),
   use_coef VARCHAR(50),
   use_cou_id VARCHAR(2) NOT NULL,
   use_type_id INT NOT NULL,
   use_com_id INT NOT NULL,
   PRIMARY KEY(use_id),
   FOREIGN KEY(use_cou_id) REFERENCES countries(cou_id),
   FOREIGN KEY(use_type_id) REFERENCES Types(type_id),
   FOREIGN KEY(use_com_id) REFERENCES commercials(com_id)
);

CREATE TABLE orders(
   ord_id INT AUTO_INCREMENT,
   ord_date DATE,
   ord_payment DATE,
   ord_sending DATE,
   ord_reception DATE,
   ord_address VARCHAR(70),
   ord_city VARCHAR(50),
   ord_zipcode VARCHAR(5),
   ord_cou_id VARCHAR(2) NOT NULL,
   ord_inv_cou_id VARCHAR(2) NOT NULL,
   ord_use_id INT NOT NULL,
   PRIMARY KEY(ord_id),
   FOREIGN KEY(ord_cou_id) REFERENCES countries(cou_id),
   FOREIGN KEY(ord_inv_cou_id) REFERENCES countries(cou_id),
   FOREIGN KEY(ord_use_id) REFERENCES users(use_id)
);

CREATE TABLE products(
   pro_id INT AUTO_INCREMENT,
   pro_label VARCHAR(50),
   pro_description TEXT,
   pro_ref VARCHAR(50),
   pro_price DECIMAL(7,2),
   pro_picture TEXT,
   pro_cat_id INT NOT NULL,
   pro_sup_id INT NOT NULL,
   PRIMARY KEY(pro_id),
   FOREIGN KEY(pro_cat_id) REFERENCES categories(cat_id),
   FOREIGN KEY(pro_sup_id) REFERENCES suppliers(sup_id)
);

CREATE TABLE order_details(
   ode_id INT AUTO_INCREMENT,
   ode_unit_price DECIMAL(5,2),
   ode_quantity INT,
   ode_vat DECIMAL(4,0),
   ode_discount DECIMAL(2,2),
   ode_ord_id INT NOT NULL,
   ode_pro_id INT NOT NULL,
   PRIMARY KEY(ode_id),
   FOREIGN KEY(ode_ord_id) REFERENCES orders(ord_id),
   FOREIGN KEY(ode_pro_id) REFERENCES products(pro_id)
);