// PHP 
</br>
// FONCTIONS  
</br>
// EXERCICE 1 
</br> 
</br>
// Générer un lien 
</br>
<?php
 function lienCall($lien,$titre)
 {
  return "<a href='$lien'>".$titre."</a>";
 }

 echo lienCall('https://reddit.com/', 'Reddit Hug');
?>

</br>
</br>
</br>
// Calculer la somme des valeurs d'un tableau 
</br>
</br>
<?php 
  $tab = array(4, 3, 2, 8);
 function sum()
 {
    global $tab; 
    return $resultat = array_sum($tab);
 }

 echo "La somme du tableau est : ".sum($tab).".";
?>

</br>
</br>

// Vérification Mot de passe 
</br>
</br>

<?php
function check_mdp_format($mdp)
{
	$majuscule = preg_match('@[A-Z]@', $mdp);
	$minuscule = preg_match('@[a-z]@', $mdp);
	$chiffre = preg_match('@[0-9]@', $mdp);
	
	if(!$majuscule || !$minuscule || !$chiffre || strlen($mdp) < 8)
	{
		return false;
	}
	else 
		return true;
}

// Changer la valeur "Anis34" en "Anis34000" pour vérifier si le message renvoyé change sur le navigateur.

if (check_mdp_format("Anis34") != true)
{   
	echo "Format non correct";	
}
else 
	echo "Format correct";
?>

