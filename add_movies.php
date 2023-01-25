<?php
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



</form>