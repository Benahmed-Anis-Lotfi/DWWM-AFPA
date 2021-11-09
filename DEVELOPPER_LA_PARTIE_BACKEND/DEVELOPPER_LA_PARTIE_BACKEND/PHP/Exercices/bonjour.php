
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
