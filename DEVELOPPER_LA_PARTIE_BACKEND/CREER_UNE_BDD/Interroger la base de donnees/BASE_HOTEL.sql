-- EXERCICES BASE HOTEL - LOT 1 --

1 - SELECT hot_nom, hot_ville FROM hotel;

2 - SELECT cli_nom, cli_prenom, cli_ville FROM client WHERE cli_nom = "White";

3 - SELECT sta_nom, sta_altitude FROM station WHERE sta_altitude < 1000;

4 - SELECT cha_numero, cha_capacite FROM chambre WHERE cha_capacite > 1;

5 - SELECT cli_nom, cli_ville FROM client WHERE cli_ville != "Londres";

6 - SELECT hot_ville, hot_nom, hot_categorie FROM hotel WHERE hot_ville = "Bretou" HAVING hot_categorie > 3;


-- EXERCICES BASE HOTEL - LOT 2 --

7 - SELECT sta_nom, hot_nom, hot_categorie, hot_ville FROM station, hotel;

8 - SELECT cha_numero, hot_nom, hot_categorie, hot_ville FROM chambre, hotel;

9 - SELECT cha_numero, cha_capacite, hot_nom, hot_categorie, hot_ville FROM chambre, hotel WHERE hot_ville = "Bretou" HAVING cha_capacite > 1 ;

10 - SELECT cli_nom, hot_nom, res_date FROM client, hotel, reservation;

11 - SELECT sta_nom, hot_nom, cha_numero, cha_capacite FROM station, hotel, chambre;

12 - SELECT cli_nom, hot_nom, res_date_debut, res_date_fin FROM client, hotel, reservation;


-- EXERCICES BASE HOTEL - LOT 3 --

13 - SELECT sta_nom, COUNT(hot_nom) AS "nombre d'hotel" FROM station, hotel WHERE station.sta_id = hotel.hot_sta_id GROUP BY sta_nom; 

14 - SELECT sta_nom, COUNT(cha_id) AS "nombre de chambre par station" FROM hotel, station, chambre WHERE station.sta_id = hotel.hot_sta_id AND chambre.cha_hot_id = hotel.hot_id GROUP BY sta_nom;

15 - SELECT sta_nom, COUNT(cha_id) AS "nombre de chambre par station" FROM hotel, station, chambre WHERE station.sta_id = hotel.hot_sta_id AND chambre.cha_hot_id = hotel.hot_id AND cha_capacite > 1 GROUP BY sta_nom;

16 - SELECT hot_nom, cli_nom FROM hotel, client, reservation, chambre WHERE client.cli_id = reservation.res_cli_id AND reservation.res_cha_id = chambre.cha_id AND chambre.cha_hot_id = hotel.hot_id HAVING cli_nom = "Squire";

17 - SELECT AVG(res_date_fin - res_date_debut) FROM reservation;