// PHP 
</br>
// TABLEAUX  
</br>
// EXERCICE 1 
</br> 
</br>
// Mois 
</br>

<?php
$annee = array(
    "Janvier" => 31, 
    "Février" => 28, 
    "Mars" => 31, 
    "Avril" => 30, 
    "Mai" => 31, 
    "Juin" => 30, 
    "Juillet" => 31, 
    "Août" => 31, 
    "Septembre" => 30, 
    "Octobre" => 31, 
    "Novembre" => 30, 
    "Décembre" => 31
);
foreach ($annee as $mois => $nbjour)
{
    echo "Dans ".$mois." il y a ".$nbjour." jours. </br>";
    $mois++; 
}
?>
</br>
<html>
   <head>
       <meta charset="utf-8"/>
       <title>PHP Tableaux</title>
    </head>
     <body>    
      <table>
           <?php foreach ($annee as $mois => $nbjour)
            { 
               echo "<tr>"."<td>".$mois."</td>"."<td>".$nbjour."</td>"."</tr>";
            } 
           ?>
      </table>
    </br>   
      // Jour par ordre croissant 
    </br>
      <table>
         <?php  
            asort($annee);
            foreach ($annee as $mois => $nbjour)
            { 
               echo "<tr>"."<td>".$mois."</td>"."<td>".$nbjour."</td>"."</tr>";
            } 
         ?>
      </table>   
     </body>
</html>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
// EXERCICE 2 
</br>
// Capitales
</br>
</br>
<?php 
$capitales = array(
    "Bucarest" => "Roumanie",
    "Bruxelles" => "Belgique",
    "Oslo" => "Norvège",
    "Ottawa" => "Canada",
    "Paris" => "France",
    "Port-au-Prince" => "Haïti",
    "Port-d'Espagne" => "Trinité-et-Tobago",
    "Prague" => "République tchèque",
    "Rabat" => "Maroc",
    "Riga" => "Lettonie",
    "Rome" => "Italie",
    "San José" => "Costa Rica",
    "Santiago" => "Chili",
    "Sofia" => "Bulgarie",
    "Alger" => "Algérie",
    "Amsterdam" => "Pays-Bas",
    "Andorre-la-Vieille" => "Andorre",
    "Asuncion" => "Paraguay",
    "Athènes" => "Grèce",
    "Bagdad" => "Irak",
    "Bamako" => "Mali",
    "Berlin" => "Allemagne",
    "Bogota" => "Colombie",
    "Brasilia" => "Brésil",
    "Bratislava" => "Slovaquie",
    "Varsovie" => "Pologne",
    "Budapest" => "Hongrie",
    "Le Caire" => "Egypte",
    "Canberra" => "Australie",
    "Caracas" => "Venezuela",
    "Jakarta" => "Indonésie",
    "Kiev" => "Ukraine",
    "Kigali" => "Rwanda",
    "Kingston" => "Jamaïque",
    "Lima" => "Pérou",
    "Londres" => "Royaume-Uni",
    "Madrid" => "Espagne",
    "Malé" => "Maldives",
    "Mexico" => "Mexique",
    "Minsk" => "Biélorussie",
    "Moscou" => "Russie",
    "Nairobi" => "Kenya",
    "New Delhi" => "Inde",
    "Stockholm" => "Suède",
    "Téhéran" => "Iran",
    "Tokyo" => "Japon",
    "Tunis" => "Tunisie",
    "Copenhague" => "Danemark",
    "Dakar" => "Sénégal",
    "Damas" => "Syrie",
    "Dublin" => "Irlande",
    "Erevan" => "Arménie",
    "La Havane" => "Cuba",
    "Helsinki" => "Finlande",
    "Islamabad" => "Pakistan",
    "Vienne" => "Autriche",
    "Vilnius" => "Lituanie",
    "Zagreb" => "Croatie"
); ?>
</br>
</br>
// Ordre alphabétique Capitales
</br>
</br>
<?php 
    ksort($capitales);
    foreach ($capitales as $capitale => $pays)
    {
    echo $capitale." => ".$pays."</br>";
    }
?>
</br>
</br>
// Ordre alphabétique Pays 
</br>
</br>
<?php 
    asort($capitales);
    foreach ($capitales as $capitale => $pays)
    {
    echo $pays." => ".$capitale."</br>";
    }
?>
</br>
</br>
</br>
// Compter le nombre de Pays 
</br>
</br>
<?php
    foreach ($capitales as $capitale => $pays)
    {
    $nbpays = count($capitales);
    }
    echo "Le tableau contient ".$nbpays." pays.";
    
?>
</br>
</br>
</br>

// Supprimer les capitales ne commençant pas par "B"
</br>
</br>
<?php
    array_search("B", $capitales);
    foreach ($capitales as $capitale => $pays)
    {
        if(substr($capitale, 0, 1) != "B") 
        {
          unset($capitales[$capitale]); 
        }
        else
        {
            echo $capitale." => ".$pays."</br>"; 
        }
    }
    
?>
</br>
</br>
</br>
</br>
</br>
// EXERCICE 3 
</br>
// Départements 
</br>
</br>
</br>
// Ordre alphabétique Régions + noms de Départements
</br>
</br>
<?php
 $departements = array(
    "Hauts-de-france" => array("Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"),
    "Bretagne" => array("Côtes d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"),
    "Grand-Est" => array("Ardennes", "Aube", "Marne", "Haute-Marne", "Meurthe-et-Moselle", "Meuse", "Moselle", "Bas-Rhin", "Haut-Rhin", "Vosges"),
    "Normandie" => array("Calvados", "Eure", "Manche", "Orne", "Seine-Maritime")
    );
?>
</br>
<?php
    ksort($departements);
    foreach ($departements as $reg => $dep)
    {   
        echo $reg." => ";
        for($n=0; $n <= count($departements[$reg]); $n++)
        {
        echo $departements[$reg][$n]."  ";
        }
        echo "</br>";
    }
?>
</br>
</br>
// Régions + nombre de Départements
</br>
</br>
<?php
    foreach ($departements as $reg => $dep)
    {
        echo $reg." ".count($dep)."</br>";
    }
?>
