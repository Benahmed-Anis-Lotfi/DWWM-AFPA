-- PHP -- </br>
-- BOUCLES -- </br>
-- Exercices -- </br></br></br>

-- Exercice 1 -- </br>

<?php
for ($a = 1; $a < 150; $a++)
{
if ($a % 2 == 0)
{
}
else {
 echo $a." ";   
}
}
?> </br></br>

-- Exercice 2 -- </br>

<?php
$a = "Je dois faire des sauvegardes régulières de mes fichiers.";
$b = 0;

for ($b = 0; $b <= 500; $b++) 
{
echo $b." - ".$a." "."<br>"; 
}
?> </br></br>

-- Exercice 3 -- </br>  

<html>
   <head>
       <meta charset="utf-8"/>
       <title>PHP</title>
    </head>
     <body>    
      <table>
      <tr>
       <td></td> 
           <?php for ($a = 0; $a <= 12; $a++) 
           { echo "<th>".$a."</th>";} ?>
        </tr>
        <?php
        $y = 0;
        while ($y<=12)
        {
        echo "<tr>"."<th>".$y."</th>";    
        $a = 0;
        while ($a<=12) 
        {
        echo "<td>".$a*$y."</td>";
        $a++;
        } echo "</tr>";
        $y++; 
        } ?>
      </table>   
     </body>
</html>

