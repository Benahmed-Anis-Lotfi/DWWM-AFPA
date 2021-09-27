-- Créer la base de données - Exercice 2 -

CREATE DATABASE 'Hotel_base';

USE 'Hotel_base';


CREATE TABLE `Chambre` (
  `capacite_chambre` int(11) NOT NULL,
  `degre_confort` int(11) NOT NULL,
  `exposition` varchar(50) NOT NULL,
  `type_chambre` varchar(50) NOT NULL,
  `num_chambre` int(11) NOT NULL,
  `num_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Client` (
  `num_client` int(11) NOT NULL,
  `nom_client` varchar(30) NOT NULL,
  `prenom_client` varchar(30) NOT NULL,
  `adresse_client` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Hotel` (
  `capacite_hotel` int(11) NOT NULL,
  `categorie_hotel` varchar(20) NOT NULL,
  `nom_hotel` varchar(20) NOT NULL,
  `adresse_hotel` varchar(60) NOT NULL,
  `num_hotel` int(11) NOT NULL,
  `num_station` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `Reservation` (
  `num_chambre` int(11) NOT NULL,
  `num_client` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_reservation` date NOT NULL,
  `montant_arrhes` decimal(10,0) NOT NULL,
  `prix_total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Station` (
  `num_station` int(11) NOT NULL,
  `nom_station` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `Chambre`
  ADD PRIMARY KEY (`num_chambre`),
  ADD KEY `num_hotel` (`num_hotel`);


ALTER TABLE `Client`
  ADD PRIMARY KEY (`num_client`);


ALTER TABLE `Hotel`
  ADD PRIMARY KEY (`num_hotel`),
  ADD KEY `num_station` (`num_station`);


ALTER TABLE `Reservation`
  ADD KEY `Reservation_ibfk_1` (`num_chambre`),
  ADD KEY `num_client` (`num_client`);


ALTER TABLE `Station`
  ADD PRIMARY KEY (`num_station`);


ALTER TABLE `Chambre`
  MODIFY `num_chambre` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Client`
  MODIFY `num_client` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Hotel`
  MODIFY `num_hotel` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Station`
  MODIFY `num_station` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `Chambre`
  ADD CONSTRAINT `Chambre_ibfk_1` FOREIGN KEY (`num_hotel`) REFERENCES `Hotel` (`num_hotel`);


ALTER TABLE `Hotel`
  ADD CONSTRAINT `Hotel_ibfk_1` FOREIGN KEY (`num_station`) REFERENCES `Station` (`num_station`);


ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`num_chambre`) REFERENCES `Chambre` (`num_chambre`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`num_client`) REFERENCES `Client` (`num_client`);
COMMIT;