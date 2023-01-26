<?php
if (!empty($_POST)) {
    $title = trim(strip_tags($_POST["title"]));
    $genres = trim(strip_tags($_POST["genres"]));
    $description = trim(strip_tags($_POST["description"]));
    $releaseDate = trim(strip_tags($_POST["releaseDate"]));
    $duration = trim(strip_tags($_POST["duration"]));
    $video = trim(strip_tags($_POST["video"]));

    // var_dump($releaseDate);

    $sdn = "mysql:host=localhost;dbase=stan";
    $db = new PDO($sdn, "root", "");

    $query = $db->prepare("INSERT INTO stan.movies (title, genres, description, release_Date, duration, video) VALUES (:title, :genres, :description, :releaseDate, :duration, :video)");

    $query->bindParam("title", $title);
    $query->bindParam("genres", $genres);
    $query->bindParam("description", $description);
    $query->bindParam("releaseDate", $releaseDate, PDO::PARAM_STR);
    $query->bindParam("duration", $duration, PDO::PARAM_INT);
    $query->bindParam("video", $video);

    if ($query->execute()) {
        header("Location: index.php");
    }
}

include("./templates/header.php");
?>

<form action="" method="post">
    <label for="title">title</label>
    <input type="text" name="title">

    <div>
        <label for="genres">genre</label>
        <input type="text" name="genres">
    </div>
    <br>

    <div>
        <label for="description">description</label>
        <textarea name="description" id="" cols="30" rows="10"></textarea>

    </div>
    <br>
    <div>
        <label for="releaseDate">date</label>
        <input type="date" name="releaseDate">
    </div>

    <br>
    <div>
        <label for="duration">durée</label>
        <input type="number" name="duration">
    </div>

    <div>
        <label for="video">video</label>
        <input type="url" name="video">
    </div>
    <br>

    <input type="submit" value="valider">

</form>