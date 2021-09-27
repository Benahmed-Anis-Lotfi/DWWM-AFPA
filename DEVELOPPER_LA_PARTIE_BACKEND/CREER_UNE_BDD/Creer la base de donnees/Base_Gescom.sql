-- Créer la base de données - Exercice 3 -

CREATE DATABASE 'Gescom';

USE 'Gescom';

CREATE TABLE `Categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `Customers` (
  `cus_id` int(11) NOT NULL,
  `cus_lastname` varchar(30) NOT NULL,
  `cus_firstname` varchar(30) NOT NULL,
  `cus_adress` varchar(60) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(30) NOT NULL,
  `cus_mail` varchar(50) NOT NULL,
  `cus_phone` varchar(10) NOT NULL,
  `cus_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Orders` (
  `ord_id` int(11) NOT NULL,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date NOT NULL,
  `ord_ship_date` date NOT NULL,
  `ord_reception_date` date NOT NULL,
  `ord_status` varchar(11) NOT NULL,
  `ord_cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Order_Details` (
  `ode_id` int(11) NOT NULL,
  `ode_unit_price` int(11) NOT NULL,
  `ode_quantity` int(11) NOT NULL,
  `ode_ord_id` int(11) NOT NULL,
  `ode_pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Products` (
  `pro_id` int(11) NOT NULL,
  `pro_cat_id` int(11) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_ref` varchar(60) NOT NULL,
  `pro_name` varchar(30) NOT NULL,
  `pro_desc` varchar(30) NOT NULL,
  `pro_publish` int(11) NOT NULL,
  `pro_sup_id` int(11) NOT NULL,
  `pro_picture` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `Suppliers` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(30) NOT NULL,
  `sup_city` varchar(30) NOT NULL,
  `sup_countries_id` varchar(30) NOT NULL,
  `sup_adress` varchar(60) NOT NULL,
  `sup_zipcode` varchar(5) NOT NULL,
  `sup_contact` varchar(30) NOT NULL,
  `sup_phone` varchar(10) NOT NULL,
  `sup_mail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `Categories`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `Customers`
  ADD PRIMARY KEY (`cus_id`);


ALTER TABLE `Orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`);


ALTER TABLE `Order_Details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`),
  ADD KEY `ode_pro_id` (`ode_pro_id`);


ALTER TABLE `Products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_cat_id` (`pro_cat_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`);


ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`sup_id`);


ALTER TABLE `Categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Order_Details`
  MODIFY `ode_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `Customers` (`cus_id`);


ALTER TABLE `Order_Details`
  ADD CONSTRAINT `Order_Details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `Orders` (`ord_id`),
  ADD CONSTRAINT `Order_Details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `Products` (`pro_id`);


ALTER TABLE `Products`
  ADD CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`pro_cat_id`) REFERENCES `Categories` (`cat_id`),
  ADD CONSTRAINT `Products_ibfk_2` FOREIGN KEY (`pro_sup_id`) REFERENCES `Suppliers` (`sup_id`);
COMMIT;

