<?php

$find = false;
$api = file_get_contents("./movies.json");
$movies = json_decode($api, true);
$find = false;
$id = $_GET["id"];
$data = array("title" => "film introuvable")



?>

    <?php

    foreach ($movies as $movie) {
        if ($id == $movie["id"]) {
            $title = $movie["title"];
            $description =$movie['description'];
            $duration = $movie["duration"];
            $release = $movie["releaseDate"];
            $find = true;
            
        }
    }
   
    include("templates/header.php")
    
    ?>

 

    <main>
<?php 
if($find){
    ?>

<div class="essaie">
    <div>
        <img src="img/poster/<?= strtolower(str_ireplace(" ", "-", $title)) ?>.jpg" alt="">
    </div>
    <div>
        <h3><?= date("Y", strtotime($test["releaseDate"])) ?></h3>
        <div><?= $title ?></div>
        <p><?= $description ?></p>
        <div> <?= $duration ?> - <?= date("d/m/Y", strtotime($test["releaseDate"]))  ?></div>
    </div>
</div>
<?php
}else {
    ?>

<?=

$data["title"];
}
?>




</main>

<?php
include('templates/footer.php')
?>