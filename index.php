<?php
$api = file_get_contents("./movies.json");
$datas = json_decode($api, true);


include('./templates/header.php')
?>
<div class="test">
    <?php
    foreach ($datas as $data) {

    ?>
    <div class="movie">



        <?php $pics = str_replace(" ", "-", $data["title"])
            ?>


        <a href="detail.php?id=<?= $data["id"] ?>">
            <figure class="moviePicture">
                <img src="./img/poster/<?= strtolower($pics) ?>.jpg" alt="">
                <figcaption class="title">
                    <div class="centerTitle">
                        <div><?= $data["title"] ?></div>
                        <div><?= implode(", ", $data["genres"]) ?></div>

                    </div>
                </figcaption>
            </figure>
        </a>

        <div>

        </div>
    </div>



    <?php


    };

    ?>
</div>


<?php

include('./templates/footer.php')

?>