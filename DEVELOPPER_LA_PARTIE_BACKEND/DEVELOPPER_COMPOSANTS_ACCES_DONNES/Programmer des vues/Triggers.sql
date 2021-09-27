-- Exercices -- Programmer des triggers -- 

-- Création d'un déclencheur -

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
END

