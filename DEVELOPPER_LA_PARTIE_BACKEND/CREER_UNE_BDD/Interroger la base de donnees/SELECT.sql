-- Interroger la base de données - Exercices - Phase 1


1 - SELECT * FROM employe;

2 - SELECT * FROM dept;

3 - SELECT nom, dateemb, nosup, nodep, salaire FROM employe;

4 - SELECT nom, titre FROM employe;

5 - SELECT DISTINCT nosup, titre FROM employe;

6 - SELECT nom, nodep FROM employe WHERE titre = "secrétaire";

7 - SELECT nom, nodept FROM dept WHERE nodept > 40;

8 - SELECT nom, prenom FROM employe WHERE (prenom > nom) ORDER BY nom ASC;

9 - SELECT nom, titre, salaire FROM employe WHERE titre = "Représentant" AND nodep = 35 AND salaire > 20000;

10 - SELECT nom, titre, salaire FROM employe WHERE titre = "Représentant" OR titre = "Président";

11 - SELECT nom, titre, nodep, salaire FROM employe WHERE nodep = 34 HAVING titre = "Représentant" OR titre = "Secrétaire";

12 - SELECT nom, titre, nodep, salaire FROM employe WHERE titre = "Représentant" OR titre = "Secrétaire" HAVING nodep = 34;

13 - SELECT nom, salaire FROM employe WHERE salaire BETWEEN 20000 and 30000;

14 - XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

15 - SELECT nom FROM employe WHERE nom LIKE 'h%';

16 - SELECT nom FROM employe WHERE nom LIKE '%n';

17 - SELECT nom FROM employe WHERE SUBSTRING(employe.nom, 3, 1)="u";

18 - SELECT nom, salaire FROM employe WHERE nodep = 41 ORDER BY salaire ASC;

19 - SELECT nom, salaire FROM employe WHERE nodep = 41 ORDER BY salaire DESC;

20 - SELECT nom, titre, salaire FROM employe ORDER BY titre, salaire DESC;

21 - SELECT tauxcom, salaire, nom FROM employe ORDER BY tauxcom;

22 - SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom IS NULL;

23 - SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom IS NOT NULL;

24 - SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom <15;

25 - SELECT nom, salaire, tauxcom, titre FROM employe WHERE tauxcom >15;

26 - SELECT nom, salaire, tauxcom, (salaire*tauxcom) WHERE tauxcom IS NOT NULL;

27 - SELECT nom, salaire, tauxcom, (salaire*tauxcom) WHERE tauxcom IS NOT NULL ORDER BY tauxcom;

28 - SELECT CONCAT(nom, "", prenom) AS "nom et prenom" FROM employe; 

29 - SELECT SUBSTRING(nom, 1, 5) AS "5 premières lettres du nom" FROM employe; 

30 - SELECT LOCATE( "r", nom) FROM employe;

31 - SELECT nom, UPPER(nom), LOWER(nom) FROM employe WHERE nom = "Vrante";

32 - SELECT nom, LENGTH(nom) AS "nombre de caractères du nom des employés" FROM employe;



-- Interroger la base de données - Exercices - Phase 2


1 - SELECT titre, COUNT(nom) AS "nombre d employés" FROM employe GROUP BY titre;

2 - SELECT nodep, AVG(salaire) AS "moyenne des salaires", SUM(salaire) AS "somme des salaires" FROM employe; 

3 - SELECT nodep, COUNT(nom) FROM employe GROUP BY nodep HAVING COUNT(nom) > 2;

4 - SELECT SUBSTRING(nom, 1, 1), COUNT(SUBSTRING(nom, 1, 1)) FROM employe GROUP BY SUBSTRING(nom, 1, 1) HAVING COUNT(SUBSTRING(nom, 1, 1)) > 2; 

5 - SELECT MIN(salaire) AS "salaire le plus bas", MAX(salaire) AS "salaire le plus haut", (MAX(salaire)-MIN(salaire))  FROM employe;

X 6 -  -- Pas réussi à reproduire la demande.

7 - SELECT titre, COUNT(titre) FROM employe GROUP BY titre;

8 - SELECT nodep, COUNT(nom) FROM employe GROUP BY nodep;

X 9 - SELECT titre, AVG(salaire) FROM employe WHERE AVG(salaire) > AVG(titre.salaire) HAVING titre = "Représentant"; -- Pas réussi.

10 - SELECT titre, COUNT(salaire), COUNT(tauxcom) FROM employe GROUP BY titre;