-- EVALUATION -- Développer les composants d'accès aux données --

1 - --VUE --

CREATE VIEW catalogue_produits
AS 
SELECT pro_id, pro_ref, pro_name, cat_id, cat_name FROM products, categories
WHERE products.pro_cat_id = categories.cat_id;


2 - -- PROCEDURE STOCKEE --

DELIMITER |

CREATE PROCEDURE Facture(p_ord_num INT,
                        OUT p_facture_date DATE
                        )


    BEGIN
            SET p_facture_date = NOW();
        IF ISNULL((SELECT ord_id FROM orders WHERE ord_id = p_ord_num))
        THEN SIGNAL SQLSTATE "ERROR" SET MESSAGE_TEXT = "La commande n'existe pas";
    
        ELSE
            SELECT p_ord_num AS "Order Number", p_facture_date  AS "Invoice Date", CONCAT(cus_lastname, " ", cus_firstname) AS "Customer", cus_address AS "Address", 
            CONCAT(cus_zipcode, " ", cus_city) AS "City", ord_payment_date AS "Sale date", sup_name AS "Supplier", pro_ref AS "Reference", 
            pro_name AS "Description", ode_unit_price AS "Price IAT", ((1-(ode_discount * 0.01))*ode_unit_price) AS "Price After Discount", (ode_quantity * ode_unit_price) AS "Total Price"  
            FROM customers, orders, orders_details, suppliers, products    
            WHERE customers.cus_id = orders.ord_cus_id
            AND orders.ord_id = orders_details.ode_ord_id
            AND products.pro_id = orders_details.ode_pro_id
            AND suppliers.sup_id = products.pro_sup_id
            AND p_ord_num = ord_id;
        END IF;
    END;            



3 - -- TRIGGER -- 

CREATE TRIGGER `after_products_update` 
AFTER UPDATE ON `products` 
FOR EACH ROW 
BEGIN 
    DECLARE id_c INT; 
    DECLARE qte_c INT; 
    DECLARE date_c DATE; 
    SET id_c = OLD.pro_id; 
    SET qte_c = NEW.pro_stock; 
    SET date_c = NOW(); 
IF (qte_c < OLD.pro_stock_alert) 
THEN 
    INSERT INTO commander_articles(codart,qte,date) 
    VALUES (id_c,(NEW.pro_stock_alert-qte_c),date_c); 
END IF; 
END;

4 - -- TRANSACTION -- 

START TRANSACTION;
INSERT INTO posts (`pos_id`, `pos_libelle`)
VALUES (28, "Retraité/e");
UPDATE employees
SET emp_pos_id = 36, emp_salary = 0, emp_superior_id = NULL
WHERE emp_lastname = "HANNAH";
UPDATE employees
SET emp_pos_id = 2, emp_salary = (emp_salary*1.05)
WHERE emp_pos_id = 14 AND emp_enter_date = (SELECT MIN(emp_enter_date) FROM employees WHERE emp_pos_id =14);
COMMIT;







