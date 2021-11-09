<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- CSS pour bootstrap -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <title>Velvet Record - Index</title>
  </head> 
<body>
    <div class="container_lg">

    <!-- Ligne 1 -->
    <div class="row">
        <div class="col-8">
            <p class='table-active'><h1><b>Liste des disques 
            <?php require "connexion_bdd.php";
            $rep= $db->query('SELECT disc_id FROM disc');
            $totaldisc = 0;
            while ($donnees = $rep->fetch()) 
            {
                $totaldisc = $totaldisc + 1;
            }      
            echo "(" . $totaldisc . ")"; 
            ?> 
            </b></h1>
        </p>
        </div>
        <div class="col-4">
        <a type='button' class='btn btn-lg btn-info ml-2' href='add_form.php'>Ajouter un disque</a>
        </div>    
    </div>        

    <!-- Ligne 2 --> 
    <div class="row">
        <div class="col-12">
            <table>
                <?php 
                $plo = 0;
                require "connexion_bdd.php";
                $rep2 = $db->query('SELECT * FROM disc, artist WHERE artist.artist_id = disc.artist_id');
                while ($donnees2 = $rep2->fetch()) 
                {
                    if (($plo % 2) == 0) 
                    {
                        echo "<tr>";
                    }
                
                $affichage = "<div>"."<td><img src='images/".$donnees2['disc_picture'].
                "' class='img-fluid' width='200px' />"."</td>".
                "<td class='text-center'><b>".$donnees2['disc_title']."</b></br><b>".
                $donnees2['artist_name']."</b></br>".
                "<b>Label : </b>".$donnees2['disc_label']."</br>".
                "<b>Year : </b>".$donnees2['disc_year']."</br>".
                "<b>Genre : </b>".$donnees2['disc_genre']."</br></br>".
                "<a type='button' class='btn-sm btn-lg btn-info active' href='details.php?disc_id=".$donnees2['disc_id']."'>Details</a>".
                "</td></div>";
                echo $affichage;
                if (($plo % 2) != 0){
                  echo "</tr>";
                }
                $plo++;
              }
            ?>
        </table>
        </div>
      </div>
            </div>

            <script
      src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
</body>
</html>
