-- Exercices - 1

1 - CREATE VIEW hotel_stat
    AS 
    SELECT hot_nom, sta_nom FROM hotel, station;


2 - CREATE VIEW chambre_hotel
    AS 
    SELECT cha_numero, hot_nom FROM hotel, chambre;


3 - CREATE VIEW resa_client 
    AS 
    SELECT res_cha_id, cli_nom FROM reservation, client; 


4 - CREATE VIEW chambre_hotel_stat
    AS 
    SELECT cha_numero, hot_nom, sta_nom FROM chambre, hotel, station; 


5 - CREATE VIEW resa_hotel_cli
    AS 
    SELECT res_cha_id, cli_nom, hot_nom FROM reservation, hotel, client; 



-- Exercices - 2

1 - CREATE VIEW V_Details 
    AS
    SELECT pro_ref, ode_ord_id, SUM(ode_quantity) AS "QteTOT", ode_quantity * ode_unit_price AS "PrixTot" FROM products, orders_details
    WHERE orders_details.ode_pro_id = products.pro_id
    GROUP BY pro_ref; 

2 - CREATE VIEW v_Ventes_Zoom
    AS
    SELECT --C'est pas possible car tous les codes produits (pro_ean) sont NULL.     