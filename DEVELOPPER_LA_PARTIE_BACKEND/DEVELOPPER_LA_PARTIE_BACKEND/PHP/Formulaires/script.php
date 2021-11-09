<?php
  echo "Bonjour ".$_REQUEST['prenom'] . " " . $_REQUEST['nom'] . "<br>";
?>

<?php

echo "Vous avez l'habitude de surfer sur le net : ";
foreach ($_REQUEST["Fjour"] as $jour)      
{ 
    echo " $jour - "; 
} 
?>