insert into stan.movies (title, description, release_date, duration, video) 
values 

('Black Adam ','Près de 5000 ans après avoir été doté des pouvoirs tout puissants des dieux égyptiens – et emprisonné très rapidement après – Black Adam est libéré de sa tombe terrestre, prêt à faire régner sa forme unique de justice dans le monde moderne.',DATE '2022/10/19',  170,'https://www.youtube.com/watch?v=vUnRitCWjqc'),
('The Last of Us ','Vingt ans après la destruction de la civilisation moderne, Joel, un survivant endurci, est engagé pour faire sortir Ellie, une jeune fille de 14 ans, d\'une zone de quarantaine oppressante. Ce qui n\'est au départ qu\'un petit travail se transforme rapidement en un voyage brutal et époustouflant, alors que ce duo improbable dépend de l\'autre pour sa survie.',DATE'2013/06/14', 60 ,'https://www.youtube.com/watch?v=uLtkt8BonwM'),
('le chat potté','Le Chat Potté découvre que sa passion pour l\'aventure et son mépris du danger ont fini par lui coûter cher : il a épuisé huit de ses neuf vies, et en a perdu le compte au passage. Afin de retomber sur ses pattes notre héros velu se lance littéralement dans la quête de sa vie. Il s\'embarque dans une aventure épique aux confins de la Forêt Sombre afin de dénicher la mythique Etoile à vœu, seule susceptible de lui rendre ses vies perdues. Mais quand il ne vous en reste qu’une, il faut savoir faire profil bas, se montrer prudent et demander de l’aide. C’est ainsi qu’il se tourne vers son ancienne partenaire et meilleure ennemie de toujours : l’ensorcelante Kitty Pattes De Velours. Le Chat Potté et la belle Kitty vont être aidés dans leur quête, à leur corps bien défendant, par Perro, un corniaud errant et galleux à la langue bien pendue et d’une inaltérable bonne humeur.',DATE'2022/12/07',102  ,'https://www.youtube.com/watch?v=uDalvsikWog'),
('Three-Body','La Chine est en pleine Révolution culturelle et Ye Wen Jie, une jeune astrophysicienne dont le père a été exécuté, est forcée de travailler pour un mystérieux projet de recherche spatiale.

',DATE'2023/01/01', 43  ,'https://www.youtube.com/watch?v=YrLompD6e_k'),
('avatar','Jake Sully et Neytiri sont devenus parents. L\'intrigue se déroule une dizaine d\'années après les événements racontés dans le long-métrage originel. Leur vie idyllique, proche de la nature, est menacée lorsque la « Resources Development Administration », dangereuse organisation non-gouvernementale, est de retour sur Pandora. Contraints de quitter leur habitat naturel, Jake et sa famille se rendent sur les récifs, où ils pensent trouver asile. Mais ils tombent sur un clan, les Metkayina, aux mœurs différentes des leurs...',DATE'2022/12/14', 190 ,'https://www.youtube.com/watch?v=O1CzgULNRGs'),
('pathaan','Pathaan, un agent des services secrets indiens, est capturé par des ennemis, puis torturé. Présumé mort, il revient pour terminer sa mission, accompagné d\'anciens compagnons et d\'anciens ennemis.',DATE'2023/01/25', 146 ,'https://www.youtube.com/watch?v=vqu4z34wENw'),
('le protecteur','Ex-prisonnier trempant toujours dans l’univers du crime à Miami, Cuda vient en aide à Billie, une adolescente de 15 ans sans le sou et sans supervision parentale, en l’installant temporairement dans une chambre de motel pour assurer sa sécurité. Lorsque celle-ci est enlevée par un ravisseur appartenant à un gang criminel, Cuda se retourne contre Estelle, sa patronne à la tête d’un réseau de trafic sexuel.',DATE'2022/09/23',  90,'https://youtu.be/PK8qdFdmrCg'),
('matilda','Une jeune fille extraordinaire à l\'esprit vif et à l\'imagination débordante entreprend audacieusement de changer son destin, avec des résultats miraculeux.',DATE'2022/12/25', 117 ,'https://www.youtube.com/watch?v=uyXCb-oFs8U'),
('la proie du diable',' LÉglise catholique romaine lutte contre une augmentation mondiale des possessions démoniaques en rouvrant des écoles pour former des prêtres à pratiquer des exorcismes. Bien qu\'il soit interdit aux religieuses d\'accomplir ce rituel, un professeur reconnaît les dons de sœur Ann et accepte de la former. Poussée sur la ligne de front spirituelle, elle se retrouve bientôt dans une bataille pour l\'âme d\'une jeune fille possédée par le même démon qui a tourmenté sa propre mère des années plus tôt. ',DATE'',  ,''),
('troll','Quand une explosion dans les montagnes de Norvège réveille une créature mythique, une bande de héros hétéroclites se mobilise pour l\'empêcher de semer le chaos',DATE'2022/12/01', 104 ,'https://www.youtube.com/watch?v=HXnal7paPyo'),
('the woman king','Au XIXème siècle, les Amazones du Dahomey mènent une lutte acharnée contre les colons français, sous les ordres de la générale Nanisca et de sa fille Nawi.',DATE'2022/09/28',  135 ,'https://www.youtube.com/watch?v=3RDaPV_rJ1Y'),
('le dernier patient','Lorsque Suzanne, psychologue expérimentée et réputée, accueille son dernier patient de la journée, Mark, elle s’attend à une rencontre comme une autre. Mais lorsque Mark se révèle être un tueur en série, Suzanne comprend que l’heure qui suit va changer sa vie à tout jamais.',DATE'2022/08/03', 97 ,'https://www.youtube.com/watch?v=CMPA-5fJ5qY'),
('baby boss','Le réveillon de Noël prend une drôle de tournure lorsque Baby Boss échange par accident sa place avec l\'un des elfes du père Noël et se retrouve au pôle Nord.',DATE'2022/12/06', 47 ,'https://www.youtube.com/watch?v=q7-E_6CxZwE'),
('smile','Après avoir assisté à un incident traumatisant impliquant un patient, le Dr Rose Cotter se met à vivre des évènements effrayants qu\'elle ne peut expliquer. Alors qu\'une terreur écrasante s\'empare de sa vie, Rose doit affronter son passé afin de survivre et d\'échapper à sa nouvelle réalité terrifiante.',DATE'2022/09/28', 115 ,'https://www.youtube.com/watch?v=aV7CDBXtJdU');


create table stan.genres(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title varchar(150),
    genres VARCHAR(100)

);



INSERT INTO stan.genres (genres, title)
VALUES 
('horror, comedy, science fiction ', 'M3gane'),
('Fantastique, Action, Science-Fiction','Black adam'),
('Drame, Science-Fiction & Fantastique, Action & Adventure','The last of us'),
('Animation','Le chat potté'),
('Drame, Science-Fiction & Fantastique','Three-Body'),
('Action, Aventure, Fantastique, Science-Fiction','avatar'),
('Action, Drame, Thriller','pathaan'),
('horror','la proie du diable'),
('comédie, fantastique', 'mathilda'),
('Fantastique, Action, Aventure, Thriller','troll'),
('Action, Drame, Histoire','the woman king'),
('Thriller, Crime','le dernier patient'),
('Animation, Familial, Aventure','Baby Boss'),
('Horreur, Mystère, Thriller','smile'),
('Action, Fantastique, Thriller','47 ronin')


CREATE TABLE stan.movies_genres(
    movies_id TINYINT,
    genres_id TINYINT,
    PRIMARY KEY(movies_id, genres_id),
    FOREIGN KEY (movies_id) REFERENCES stan.movies(id),
    FOREIGN KEY (genres_id) REFERENCES stan.genres(id)

);



INSERT INTO stan.movies_genres (movies_id, genres_id)
VALUES
 (1,1),
 (8,2),
 (9,3),
 (10,4),
 (11,5),
 (12,6),
 (13,7),
 (16,8),
 (18,9),
 (20,10),
 (21,11),
 (22,12),
 (23,13),
 (24,14),
(25,15);




select * from stan.movies
INNER JOIN movies_genres
on stan.movies.id = stan.movies_genres.movies_id
INNER JOIN stan.genres
on stan.movies_genres.genres_id = stan.genres.id