-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 26 jan. 2023 à 23:34
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stan`
--

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` tinyint(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `genres` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `title`, `genres`) VALUES
(1, 'M3gane', 'horror, comedy, science fiction '),
(2, 'Black adam', 'Fantastique, Action, Science-Fiction'),
(3, 'The last of us', 'Drame, Science-Fiction & Fantastique, Action & Adventure'),
(4, 'Le chat potté', 'Animation'),
(5, 'Three-Body', 'Drame, Science-Fiction & Fantastique'),
(6, 'avatar', 'Action, Aventure, Fantastique, Science-Fiction'),
(7, 'pathaan', 'Action, Drame, Thriller\r\n'),
(8, 'la proie du diable', 'horror'),
(9, 'mathilda', 'comédie, fantastique'),
(10, 'troll', 'Fantastique, Action, Aventure, Thriller'),
(11, 'the woman king', 'Action, Drame, Histoire\r\n'),
(12, 'le dernier patient', 'Thriller, Crime\r\n'),
(13, 'Baby Boss', 'Animation, Familial, Aventure'),
(14, 'smile', 'Horreur, Mystère, Thriller\r\n'),
(15, '47 ronin', 'Action, Fantastique, Thriller\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`title`, `description`, `release_date`, `duration`, `video`, `id`) VALUES
('M3gane', 'M3GAN est une merveille d\'intelligence artificielle, une poupée réaliste qui est programmée pour être la meilleure compagne d\'un enfant et la meilleure alliée d\'un parent. Conçue par Gemma, une brillante roboticienne, M3GAN peut écouter, regarder et apprendre, car elle joue le rôle d\'amie et d\'enseignante, de compagne de jeu et de protectrice.', '2022-12-08', 102, 'https://www.youtube.com/results?search_query=m3gan', 1),
('Black Adam ', 'Près de 5000 ans après avoir été doté des pouvoirs tout puissants des dieux égyptiens – et emprisonné très rapidement après – Black Adam est libéré de sa tombe terrestre, prêt à faire régner sa forme unique de justice dans le monde moderne.', '2022-10-19', 170, 'https://www.youtube.com/watch?v=vUnRitCWjqc', 8),
('The Last of Us ', 'Vingt ans après la destruction de la civilisation moderne, Joel, un survivant endurci, est engagé pour faire sortir Ellie, une jeune fille de 14 ans, d\'une zone de quarantaine oppressante. Ce qui n\'est au départ qu\'un petit travail se transforme rapidement en un voyage brutal et époustouflant, alors que ce duo improbable dépend de l\'autre pour sa survie.', '2013-06-14', 60, 'https://www.youtube.com/watch?v=uLtkt8BonwM', 9),
('le chat potté', 'Le Chat Potté découvre que sa passion pour l\'aventure et son mépris du danger ont fini par lui coûter cher : il a épuisé huit de ses neuf vies, et en a perdu le compte au passage. Afin de retomber sur ses pattes notre héros velu se lance littéralement dans la quête de sa vie. Il s\'embarque dans une aventure épique aux confins de la Forêt Sombre afin de dénicher la mythique Etoile à vœu, seule susceptible de lui rendre ses vies perdues. Mais quand il ne vous en reste qu’une, il faut savoir faire profil bas, se montrer prudent et demander de l’aide. C’est ainsi qu’il se tourne vers son ancienne partenaire et meilleure ennemie de toujours : l’ensorcelante Kitty Pattes De Velours. Le Chat Potté et la belle Kitty vont être aidés dans leur quête, à leur corps bien défendant, par Perro, un corniaud errant et galleux à la langue bien pendue et d’une inaltérable bonne humeur.', '2022-12-07', 102, 'https://www.youtube.com/watch?v=uDalvsikWog', 10),
('Three-Body', 'La Chine est en pleine Révolution culturelle et Ye Wen Jie, une jeune astrophysicienne dont le père a été exécuté, est forcée de travailler pour un mystérieux projet de recherche spatiale.\r\n\r\n', '2023-01-01', 43, 'https://www.youtube.com/watch?v=YrLompD6e_k', 11),
('avatar', 'Jake Sully et Neytiri sont devenus parents. L\'intrigue se déroule une dizaine d\'années après les événements racontés dans le long-métrage originel. Leur vie idyllique, proche de la nature, est menacée lorsque la « Resources Development Administration », dangereuse organisation non-gouvernementale, est de retour sur Pandora. Contraints de quitter leur habitat naturel, Jake et sa famille se rendent sur les récifs, où ils pensent trouver asile. Mais ils tombent sur un clan, les Metkayina, aux mœurs différentes des leurs...', '2022-12-14', 190, 'https://www.youtube.com/watch?v=O1CzgULNRGs', 12),
('pathaan', 'Pathaan, un agent des services secrets indiens, est capturé par des ennemis, puis torturé. Présumé mort, il revient pour terminer sa mission, accompagné d\'anciens compagnons et d\'anciens ennemis.', '2023-01-25', 146, 'https://www.youtube.com/watch?v=vqu4z34wENw', 13),
('la proie du diable', 'L\'Église catholique romaine lutte contre une augmentation mondiale des possessions démoniaques en rouvrant des écoles pour former des prêtres à pratiquer des exorcismes. Bien qu\'il soit interdit aux religieuses d\'accomplir ce rituel, un professeur reconnaît les dons de sœur Ann et accepte de la former. Poussée sur la ligne de front spirituelle, elle se retrouve bientôt dans une bataille pour l\'âme d\'une jeune fille possédée par le même démon qui a tourmenté sa propre mère des années plus tôt.', '2022-10-26', 93, 'https://www.youtube.com/watch?v=8_oc8uGRuGk', 16),
('matilda', 'Une jeune fille extraordinaire à l\'esprit vif et à l\'imagination débordante entreprend audacieusement de changer son destin, avec des résultats miraculeux.', '2022-12-25', 117, 'https://www.youtube.com/watch?v=uyXCb-oFs8U', 18),
('troll', 'Quand une explosion dans les montagnes de Norvège réveille une créature mythique, une bande de héros hétéroclites se mobilise pour l\'empêcher de semer le chaos', '2022-12-01', 104, 'https://www.youtube.com/watch?v=HXnal7paPyo', 20),
('the woman king', 'Au XIXème siècle, les Amazones du Dahomey mènent une lutte acharnée contre les colons français, sous les ordres de la générale Nanisca et de sa fille Nawi.', '2022-09-28', 135, 'https://www.youtube.com/watch?v=3RDaPV_rJ1Y', 21),
('le dernier patient', 'Lorsque Suzanne, psychologue expérimentée et réputée, accueille son dernier patient de la journée, Mark, elle s’attend à une rencontre comme une autre. Mais lorsque Mark se révèle être un tueur en série, Suzanne comprend que l’heure qui suit va changer sa vie à tout jamais.', '2022-08-03', 97, 'https://www.youtube.com/watch?v=CMPA-5fJ5qY', 22),
('baby boss', 'Le réveillon de Noël prend une drôle de tournure lorsque Baby Boss échange par accident sa place avec l\'un des elfes du père Noël et se retrouve au pôle Nord.', '2022-12-06', 47, 'https://www.youtube.com/watch?v=q7-E_6CxZwE', 23),
('smile', 'Après avoir assisté à un incident traumatisant impliquant un patient, le Dr Rose Cotter se met à vivre des évènements effrayants qu\'elle ne peut expliquer. Alors qu\'une terreur écrasante s\'empare de sa vie, Rose doit affronter son passé afin de survivre et d\'échapper à sa nouvelle réalité terrifiante.', '2022-09-28', 115, 'https://www.youtube.com/watch?v=aV7CDBXtJdU', 24),
('47 ronin', '300 ans après les événements relatés dans \"47 Ronin\", une nouvelle classe de guerriers émerge parmi les clans Samouraï pour empêcher une épée recherchée de tomber dans les mauvaises mains.', '2022-10-25', 107, 'https://www.youtube.com/watch?v=j8cKdDkkIYY', 25);

-- --------------------------------------------------------

--
-- Structure de la table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `movies_id` tinyint(4) NOT NULL,
  `genres_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `movies_genres`
--

INSERT INTO `movies_genres` (`movies_id`, `genres_id`) VALUES
(1, 1),
(8, 2),
(9, 3),
(10, 4),
(11, 5),
(12, 6),
(13, 7),
(16, 8),
(18, 9),
(20, 10),
(21, 11),
(22, 12),
(23, 13),
(24, 14),
(25, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD PRIMARY KEY (`movies_id`,`genres_id`),
  ADD KEY `genres_id` (`genres_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
