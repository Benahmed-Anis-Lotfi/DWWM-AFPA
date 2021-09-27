-- Créer la base de données - Exercice 1 - 

CREATE DATABASE 'MPD';

USE 'MPD';

CREATE TABLE `Appartient` (
  `per_num` int(11) NOT NULL,
  `gro_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Groupe` (
  `gro_num` int(11) NOT NULL,
  `gro_libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `Personne` (
  `per_num` int(11) NOT NULL,
  `per_nom` varchar(20) NOT NULL,
  `per_prenom` varchar(20) NOT NULL,
  `per_adresse` varchar(60) NOT NULL,
  `per_ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `Appartient`
  ADD PRIMARY KEY (`per_num`,`gro_num`),
  ADD KEY `gro_num` (`gro_num`);

ALTER TABLE `Groupe`
  ADD PRIMARY KEY (`gro_num`);

ALTER TABLE `Personne`
  ADD PRIMARY KEY (`per_num`);

ALTER TABLE `Groupe`
  MODIFY `gro_num` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Personne`
  MODIFY `per_num` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Appartient`
  ADD CONSTRAINT `Appartient_ibfk_1` FOREIGN KEY (`gro_num`) REFERENCES `Groupe` (`gro_num`),
  ADD CONSTRAINT `Appartient_ibfk_2` FOREIGN KEY (`per_num`) REFERENCES `Personne` (`per_num`);
COMMIT;


