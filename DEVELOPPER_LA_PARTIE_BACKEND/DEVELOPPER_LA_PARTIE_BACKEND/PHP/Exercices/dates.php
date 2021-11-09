<?php 
echo "// PHP" 
?>
</br>
<?php 
echo "// Dates" 
?>
</br>
<?php 
echo "// Exercices" 
?>
</br>
</br>
</br>
<?php
 $date=date("W");
 echo "Le numéro de semaine pour le 24 Octobre est : ".$date.".";
 ?>
</br>
</br>
<?php
$start = strtotime('2021-10-24');
$end = strtotime('2021-12-31');

$days_between = ceil(abs($end - $start) / 86400);
echo "Le nombre de jours en formation avant stage restant est : ".$days_between.".";
?>
</br>
</br>
<?php
function bissextile($a)
    {
    if((is_int($a/4) && !is_int($a/100)) || is_int($a/400))
        {
            return "L'année ".$a." est bissextile.";
        }
    else 
        {
            return "L'année ".$a." n'est pas bissextile.";
        }    
    }
echo bissextile(2000);    
?>
</br>
</br>
<?php
echo "// Afficher une date qui s'adaptera à une erreur d'entrée"."</br>";
echo "// Ici nous avons rentré en paramètres le format et la date suivante 2009-22-15"."</br>";
$format = 'Y-m-d';
$date = DateTime::createFromFormat($format, '2009-22-15');
echo "La date renvoyée est : " . $date->format('Y-m-d') . "\n";
?>
</br>
</br> 
<?php 
$date = "2019-14-32";
$format = "Y-m-d";
echo "// Vérifions si la date entrée est valide :"."</br>";
echo "Ici nous avons entré ".$date."</br>";
if(date($format, strtotime($date)) == date($date)) {
    echo "<li style=color:green>Date Valide</li>";
} else {
    echo "<li style=color:red>Date Invalide</li>";
}
?> 
</br>
<?php 
$date = "2019-12-30";
$format = "Y-m-d";
echo "// Réessayons avec une valide cette fois-ci :"."</br>";
echo "Ici nous avons entré ".$date."</br>";
if(date($format, strtotime($date)) == date($date)) {
    echo "<li style=color:green>Date Valide</li>";
} else {
    echo "<li style=color:red>Date Invalide</li>";
}
?> 
</br>
</br>           
<?php
$date = date("25-10-2021");
$heure = "11";
$minute = "25"; 
echo "Nous sommes le ".$date." et il est ".$heure."h".$minute;
?>
</br>
</br>
<?php
$laDate='2021-10-25';
$laNewDate=date('Y-m-d',strtotime('+1 month',strtotime($laDate)));
echo "La date : ".$laDate."</br>";
echo "+ 1 mois : ".$laNewDate;
?>
</br>
</br>
<?php
$format=("Y/m/d");
$timestamp=(1000200000);
echo date($format, $timestamp)."</br>";
echo "Le '1000200000' qui correspond au 11 Septembre 2001, est une date funeste pour les Etats Unis d'Amérique qui ont subi plusieurs violents attentats sur leur sol."

?>