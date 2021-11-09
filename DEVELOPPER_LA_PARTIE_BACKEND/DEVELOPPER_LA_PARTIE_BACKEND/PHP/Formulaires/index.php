<?php include('script.php'); ?>
    <form action="script.php" method="post"> 
      Nom : <input type="text" name="nom" size="20" maxlength="40" /> <br /> 
      Prenom : <input type="text" name="prenom" size="20" maxlength=40 /> </br>
      Selectionne la date du jour :<br /> 
    <input type="checkbox" name="Fjour[]" value="Lundi" />Lundi<br />
    <input type="checkbox" name="Fjour[]" value="Mardi" />Mardi<br />
    <input type="checkbox" name="Fjour[]" value="Mercredi" />Mercredi<br />
    <input type="checkbox" name="Fjour[]" value="Jeudi" />Jeudi<br />
    <input type="checkbox" name="Fjour[]" value="Vendredi" />Vendredi<br />
    <input type="checkbox" name="Fjour[]" value="Samedi" />Samedi<br />
    <input type="checkbox" name="Fjour[]" value="Dimanche" />Dimanche<br />
      <input type="submit" value="ENVOYER" /> 
    </form> 


