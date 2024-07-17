-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebewd2_cr6_bigeventskristineortega`
--
CREATE DATABASE IF NOT EXISTS `ebewd2_cr6_bigeventskristineortega` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ebewd2_cr6_bigeventskristineortega`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_and_start_time` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date_and_start_time`, `description`, `image`, `capacity`, `email`, `phone_number`, `address`, `url`, `category`) VALUES
(10, 'EuroGames Vienna 2024', '2024-07-20 08:00:00', 'Embrace Diversity\n\nFrom 17 - 20 July 2024\n\nAround 4,000 LGBT athletes from all over the world will compete for medals in around 35 sports in Vienna from July 17 to 20, 2024. This is the first time this event has been held in Vienna. The motto: \"Embrace Diversity\".\nWhat\'s new about these games: Male dominance in sport is to be reduced. Women, trans*, inter* and non-binary people are particularly welcome this year. For this reason, some sports will also be played without gender specificity. For example bowling, bridge, darts, mini golf and squash. Two sports are even aimed specifically at women and non-binary people: Martial Arts and Roller Derby. The competitions will take place in more than 20 locations throughout Vienna.\n\nThe center of the EuroGames 2024 is the EuroGames Village on Vienna\'s Karlsplatz. In addition to the opening and closing ceremonies, various events will take place here over four days - concerts, readings, film screenings and discussions are just some of the highlights that the Village will offer the athletes and everyone who comes by.', 'https://cdn.pixabay.com/photo/2022/09/24/21/09/karate-7477212_1280.jpg', 2000, 'info@eurogames2024.at', '+43657896523', 'Karlsplatz 10, 1040 Wien', 'https://events.wien.info/en/17h9/eurogames-vienna-2024/', 'Sports'),
(11, 'Cocktail Festival', '2024-09-05 15:00:00', 'The Liquid Market festival has become a fixed event for cocktail aficionados in no time at all. Around 100 bars are presenting their signature drinks again at the festival. The who\'s who of the local bar scene is represented at Liquid Market and presents its best signature drinks. The ticket prices includes all drinks during your visit. There are also tastings, workshops, street food, and, of course, a whole bunch of music played by DJs. And not to forget: non-alcoholic cocktails are also offered. From 10.00 pm on all three days a party with an international line-up will take place.', 'https://cdn.pixabay.com/photo/2019/06/13/11/29/cocktail-4271395_1280.jpg', 600, 'info@liquidmarket.bar', '+4378965432', 'Dr.-Otto-Neurath-Gasse 3\r\n1220 Vienna', 'https://liquidmarket.bar/', 'Festival'),
(12, 'Theater im Park am Belvedere 2024', '2024-07-23 19:30:00', 'Open Air Theatre\nThe private garden of Palais Schwarzenberg - a beautiful, two-hectare English natural garden in the 3rd district is also open in 2024 for communal cultural enjoyment under the open sky. Surrounded by over 100-year-old plane trees, one of Vienna\'s summer stages will be staged from May 27 to September 18, 2024.\nMany stars from the worlds of cabaret, comedy, classical music, pop or theater, who have joined us in previous years, will be performing again. Numerous well-known artists are new to the 2024 season.', 'https://cdn.pixabay.com/photo/2015/08/18/23/06/ballet-don-quijote-895062_1280.jpg', 400, 'ticket@theaterimpark.at', '+43158893401', 'Prinz-Eugen-Straße/Ecke Plößlgasse1030 Wien', 'https://events.vienna.info/en/129l/theater-im-park-am-belvedere-2024/', 'Theater'),
(13, 'Friday Afternoons\r\nConcert of the Vienna Boys Choir', '2024-09-27 17:00:00', 'Wiener Sängerknaben\r\nArtistic direction: Gerald Wirth\r\nA group of 24 boys in sailor suits with their choirmaster – why are they known and loved by people all over the world? It’s because they demonstrate that music is the international language of human feelings.\r\nOver ten Fridays in their jubilee season, the world-famous Vienna Boys Choir show off their talents. With youthful energy and charm, they lead their audience on a journey through musical history, taking in not just Mozart, Schubert and Strauss, but World Music and Pop as well. There will also be a few stories from the past 525 years!', 'https://cdn.pixabay.com/photo/2013/02/01/23/51/england-77213_1280.jpg', 80, 'info@wien.info', '+4313478080', 'Am Augartenspitz 1\r\n1020 Wien', 'https://events.vienna.info/en/zhd/friday-afternoons/', 'Concert'),
(14, 'ImPulsTanz 2024', '2024-07-19 14:00:00', 'Vienna International Dance Festival\r\nFrom July 11 to August 11, 2024, the ImPulsTanz - Vienna International Dance Festival will bring together the international dance and performance scene in Vienna.\r\nStars such as Dada Masilo, William Kentridge, Anne Teresa De Keersmaeker, Sidi Larbi Cherkaoui and Wim Vandekeybus will be performing on stage.\r\nWith over 250 courses, the workshop program invites beginners and professionals of all ages to the Arsenal to dance ballet, jazz, voguing, modern dance, hip hop and much more.\r\nAs every year, there will also be free outdoor dance classes - Public Moves.\r\n', 'https://cdn.pixabay.com/photo/2017/07/21/23/57/concert-2527495_1280.jpg', 200, 'info@wien.info', '+4312350052', 'Museum Quartier', 'https://events.vienna.info/en/131f/impulstanz-2024/', 'Festival'),
(15, 'Wiener Trabrennverein\r\n(Vienna Trotting Club)', '2024-09-22 08:00:00', 'Racing days\r\nAs the largest organizer of horse races in Austria, the Vienna Harness Racing Association holds around 230 races on more than 20 race days per year. Visitors can expect exciting and entertaining racing days at the historic facility in the Krieau harness racing park.', 'https://cdn.pixabay.com/photo/2019/10/20/19/26/racing-4564535_1280.jpg', 600, 'info@krieau.at', '+431780046', 'Nordportalstraße 247\r\n1020 Wien', 'https://events.vienna.info/en/spe/wiener-trabrennverein-vienna-trotting-club/', 'Sports'),
(16, 'Trilogie der Sommerfrische', '2024-09-11 19:30:00', 'Endlich Sommer, endlich aufs Land! Auch die heiratsfähige Giacinta entflieht der Großstadthitze, doch zwei Männer, der eine reich, der andere verarmt, buhlen um ihre Gunst und erwarten eine Antwort: Ihre Wahl fällt auf den gewitzten Leonardo. Auf dem Land gerät Giacinta jedoch in einen Konflikt zwischen Liebe und Loyalität, denn der ehemals verschmähte Guglielmo, der nun unglücklicherweise schon mit Leonardos Schwester verlobt ist, hat tatsächlich ihr Herz erobert. Was bleibt nach diesem Sommeraufenthalt? Die nüchterne Erkenntnis, dass man sich verliebt, doch die Liebe verfehlt hat.\r\nGoldonis Fähigkeit, Charakter und Sprache seiner Personen in ihrer Beziehung auf die Bühne zu bringen und dabei gleichzeitig seinem persönlichen Anspruch auf Wahrheit und Natürlichkeit gerecht zu werden, macht seine Komödien auch heute noch interessant. Mit Giacinta, einer durch und durch modernen, unabhängigen Frau, die ihr Leben selbst in die Hand nimmt, hat Goldoni eine seiner faszinierendsten Frauenfiguren für die Bühne geschaffen.', 'https://cdn.pixabay.com/photo/2015/01/09/17/34/opera-594592_1280.jpg', 400, 'ticket@josfstadt.org', '+43142700300', 'Josefstädter Straße 26\r\n1080 Wien', 'www.josefstadt.org/trilogie-der-sommerfrische', 'Theater'),
(17, 'Coldplay', '2024-08-22 17:00:00', 'Music of the Spheres\r\nMartin mentioned that the concert was divided into four acts because it is \"a journey traveling outwards into the unknown to then come home having learned something new. This is represented both visually and with what songs fit into what act\".[59] Following the support performances, two guest speakers (usually from the visited country) greet the attendees and introduce a video with Coldplay\'s sustainability efforts.[60] It runs for about three minutes and features \"Light Through the Veins\" by Jon Hopkins as its soundtrack.[61] Once the short film ends, the band are welcomed and \"Flying\", a score written by John Williams for E.T. the Extra-Terrestrial (1982), is played.[62] This marks the beginning of Act I – Planets, which is about \"knowing there\'s a bigger magic out there somewhere and choosing to go and look for it\".[59] The screens exhibit a live feed of each group member emerging from under or near the stage.[63] After they wave to the audience, \"Flying\" is transitioned into \"Music of the Spheres\" and Martin stays on the B-stage, while Guy Berryman, Jonny Buckland and Will Champion head to the main one.[63] Red lights are emitted from the wristbands, leading to \"Higher Power\"', 'https://cdn.pixabay.com/photo/2016/11/29/03/44/concert-1867129_1280.jpg', 1200, 'oeticket@info.at', '+4325698771', 'Meiereistraße 7\r\n1020 Wien', 'https://www.oeticket.com/city/wien-600/venue/ernst-happel-stadion-wien-20722/', 'Concert'),
(18, '15th Pop Festival Vienna 2024', '2024-07-25 08:00:00', 'From July 25 to 28, the 15th Popfest will take place around Karlsplatz. New local pop music can be heard, danced to and experienced. Verifiziert, Der Nino aus Wien, Anda Morts and Oskar Haag & Band open the festival on the Seebühne.\r\nAs usual, the performances on the lake stage in front of the Karlskirche are a particular focus. After the opening, on the following two days there will be a broad spectrum of free admission, from the thoughtful shoegaze sound of Culk to the gripping punk rock of Baits to the indie heroes Ja, Panik or the colorful pop sensation Sharktank.\r\nOther acts: Apollo Sissi, Laundromat Chicks, Filly, Wolfgang Möstl & Friends\r\nOther venues include the Wien Museum, where the foyer and upper area will be used, as well as the Kuppel- and Prechtlsaal in the Technical University. The nearby Club U will also be used at a later hour. On July 27, for example, the Unsafe+Sounds Festival will present a showcase here - so it should be electronically sophisticated. On the final day, the Popfest team will once again take its audience to the Karlskirche, where Lino Camilo, Aze and kin dread will perform in a very special atmosphere.\r\n\r\nFree admission!', 'https://cdn.pixabay.com/photo/2023/09/28/16/45/concert-8282026_1280.jpg', 2000, 'info@wien.info', '+431245555', 'Karlsplatz\r\n1040 Wien', 'www.popfest.at', 'Festival');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
