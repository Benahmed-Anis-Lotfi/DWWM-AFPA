-- Alimenter la base de données - Exercices 

-- Exercices 1, 3 et 4 réalisés directement via PhpMyAdmin

-- Réponse exercice 2 :
-- L'ordre à adopter en remplissant la base de données, pour respecter les contraintes de clés 
-- est de renseigner dans un premier temps les attributs en clés primaires afin que les tables puissent 
-- se lier plus facilement entre elles via les clés étrangères.

-- Exercice 5 

INSERT INTO `nom_table` (`col1`, `col2`, `col3`, `col4`...) 
VALUES ('val1', 'val2', 'val3', 'val4');
-- Si on veut rajouter d'autres valeurs, il suffit d'aller à la ligne et de 
-- redéposer d'autres valeurs entre parenthèses comme fait ci-dessus et ne mettre le ';' uniquement à la fin de la saisie, exemple ci-dessous : 

-- Table `categories`
INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) 
VALUES 
(1, 'Jardin', NULL),
(2, 'Cuisine', 1)
(3, 'Cave', 2);

-- Table `posts`
INSERT INTO `posts` (`pos_id`, `pos_libelle`)
VALUES
(1, 'Président'),
(2, 'Vice-Président'),
(3, 'Responsable Marketing');

-- Table `employees`

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`)
VALUES 
(1, NULL, 1, 'BENAHMED', 'Nassim', '123 rue des riches', '34000', 'Montpellier', 'ben.nass@gmail.com', '0621362589', '100000', '2020-10-14', 'M', '1' ), 
(2, 1, 2, 'PERIPAP', 'Hélisa', '12 rue luxury', '34000', 'Montpellier', 'perip.h@gmail.com', '0698785623', '50000', '2020-10-24', 'F', '0'),
(3, 1, 3, 'JUST', 'Leblan', '1 rue des saltimbanques', '34000', 'Montpellier', 'just.l@gmail.com', '0622735253', '30000', '2020-10-25', 'M', '0');


-- Table `customers`

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES 
('1', 'Pierre', 'Jean', '22 rue Pous', '62000', 'Calais', 'FR', 'pierre.j@gmail.com', '0698562345', 'pierrejean1', '2020-11-01', NULL), 
('2', 'Low', 'Jonas', '13 strasse Berliner', '75200', 'Hambourg', 'DE', 'low,j@gmail.com', '007956245', 'mannschaft', '2020-11-15', NULL), 
('3', 'Hafid', 'Salim', '1 rue Algesiras', '21345', 'Oran', 'DZ', 'hafid.s@gmail.com', '0658597856', 'tahiadzleszhomme', '2020-11-22', NULL);

-- Table `orders` 

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) 
VALUES 
('1', '2021-01-02', NULL, NULL, NULL, 'EN COURS', '1'), 
('2', '2021-01-14', NULL, NULL, NULL, 'PREPARATION', '2'), 
('3', '2021-01-27', NULL, NULL, NULL, 'PREPARATION', '3');


-- Table `suppliers` 

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) 
VALUES 
('1', 'Das Boss\'Repair', 'Stuttgart', 'DE', '2. Merkel Strasse', '65894', 'Wilfried Wolfgang', '0125698745', 'dasbossrepair@gmail.com'), 
('2', 'Jardetails', 'Lyon', 'FR', '45 rue des Rancys', '69003', 'Delloue Rayan', '0598562356', 'jardetails.contact@gmail.com'), 
('3', 'Bricol\'tout', 'Bruxelles', 'BE', '1 rue de la blonde', '13548', 'Kevin de Bruyne', '0468548962', 'bricoltout.contact@gmail.com');


