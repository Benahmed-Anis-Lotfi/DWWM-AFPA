-- Exercices -- Programmer des procédures stockées

-- Exercice 1 --

DELIMITER |

CREATE PROCEDURE Lst_Suppliers()

BEGIN
    SELECT sup_name 
    FROM suppliers, products, orders_details 
    WHERE ode_id IS NOT NULL
    AND suppliers.sup_id = products.pro_sup_id
    AND products.pro_id = orders_details.ode_pro_id
    GROUP BY sup_name;
END;


-- Exercice 2 --

DELIMITER |

CREATE PROCEDURE Lst_Rush_Orders()

BEGIN 
    SELECT ord_id 
    FROM orders
    WHERE ord_status = "Commande urgente";
END;    


-- Exercice 3 --

DELIMITER |

CREATE PROCEDURE CA_SUPPLIER(
        p_year YEAR,
        p_sup_id INT
)
    
    BEGIN 
            IF ISNULL((SELECT sup_id FROM suppliers WHERE sup_id = p_sup_id))
             THEN SIGNAL SQLSTATE "ERROR" SET MESSAGE_TEXT = "Le fournisseur n'existe";
            ELSE

        SELECT sup_id, sup_name, SUM(ode_unit_price * ode_quantity) AS p_CA 
        FROM suppliers, products, orders, orders_details
        WHERE suppliers.sup_id = products.pro_sup_id
        AND products.pro_id = orders_details.ode_pro_id
        AND orders_details.ode_pro_id = orders.ord_id 
        AND YEAR(ord_payment_date) = p_year
        AND sup_id = p_sup_id; 
            END IF;
    END;