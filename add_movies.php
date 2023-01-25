<?php

if (!empty($_POST)) {
    $title = trim(strip_tags($_POST["title"]));
    $genre = trim(strip_tags($_POST["genre"]));
    $description = trim(strip_tags($_POST["description"]));
    // $releaseDate = trim(strip_tags($_POST["releaseDate"]));



    $dsn = "mysql:host=localhost;dbase=stan";
    $db = new PDO($dsn, "root", "");
    $query = $db->prepare("INSERT INTO stan.movies (title, genre, description) VALUES (:title, :genre, :description) ");
    $query->bindParam("title", $title);
    $query->bindParam("genre", $genre);
    $query->bindParam("description", $description);
    // $query->bindParam("releaseDate", $releaseDate);
    if ($query->execute()) {
        // La requête s'est bien déroulée donc on redirige l'utilisateur vers la page d'accueil
        header("Location: index.php");
    }
}

include('./templates/header.php')


?>

<form action="" method="post">
    <div>

        <input type="text" name="title">
        <label for="title">titre</label>
    </div>
    <br>
    <div>
        <input type="text" name="genre">
        <label for="genre">genre</label>
    </div>
    <br>

    <div>

        <input type="text" name="description">
        <label for="description">description</label>

    </div>
    <br>
    <!--
    <div>
        <input type="text" name="releaseDate">
        <label for="releaseDate">date</label>
    </div>
    <br>
    <div>
        <input type="text" name="duration">
        <label for="duration">durée</label>
    </div>
    <br>
    <div>

        <input type="text" name="video">
        <label for="video">video</label>
    </div> -->


    <input type="submit" value="valider la saisie">



</form>