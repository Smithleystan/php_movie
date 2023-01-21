<?php
$find = false;
$api = file_get_contents("./movies.json");
$id = $_GET["id"];
$datas = json_decode($api, true);

include("./templates/header.php")

?>
<div>
    <?php

    foreach ($datas as $data) {
        if ($id == $data["id"]) {
            $test = $data;
            $find = true;
        }
    }
    ?>
</div>
<div class="detail">
    <div>
        <img src="../img/poster/<?= strtolower(str_ireplace(" ", "-", $test['title'])) ?>.jpg" alt="">
    </div>
    <div>
        <h3><?= date("Y", strtotime($test["releaseDate"])) ?></h3>
        <div><?= $test['title'] ?></div>
        <p><?= $test['description'] ?></p>
        <div> <?= $test['duration']  ?> - <?= date("d/m/Y", strtotime($test["releaseDate"]))  ?></div>
    </div>
</div>


<?php
include('./templates/footer.php')
?>