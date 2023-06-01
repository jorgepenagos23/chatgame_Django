-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-06-2023 a las 09:02:05
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `games`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add palabra', 7, 'add_palabra'),
(26, 'Can change palabra', 7, 'change_palabra'),
(27, 'Can delete palabra', 7, 'delete_palabra'),
(28, 'Can view palabra', 7, 'view_palabra'),
(29, 'Can add fortnite', 8, 'add_fortnite'),
(30, 'Can change fortnite', 8, 'change_fortnite'),
(31, 'Can delete fortnite', 8, 'delete_fortnite'),
(32, 'Can view fortnite', 8, 'view_fortnite'),
(33, 'Can add resident evil', 9, 'add_residentevil'),
(34, 'Can change resident evil', 9, 'change_residentevil'),
(35, 'Can delete resident evil', 9, 'delete_residentevil'),
(36, 'Can view resident evil', 9, 'view_residentevil'),
(37, 'Can add videojuegos', 10, 'add_videojuegos'),
(38, 'Can change videojuegos', 10, 'change_videojuegos'),
(39, 'Can delete videojuegos', 10, 'delete_videojuegos'),
(40, 'Can view videojuegos', 10, 'view_videojuegos'),
(41, 'Can add mario bros', 11, 'add_mariobros'),
(42, 'Can change mario bros', 11, 'change_mariobros'),
(43, 'Can delete mario bros', 11, 'delete_mariobros'),
(44, 'Can view mario bros', 11, 'view_mariobros'),
(45, 'Can add spiderman', 12, 'add_spiderman'),
(46, 'Can change spiderman', 12, 'change_spiderman'),
(47, 'Can delete spiderman', 12, 'delete_spiderman'),
(48, 'Can view spiderman', 12, 'view_spiderman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'penagos_app', 'fortnite'),
(11, 'penagos_app', 'mariobros'),
(7, 'penagos_app', 'palabra'),
(9, 'penagos_app', 'residentevil'),
(12, 'penagos_app', 'spiderman'),
(10, 'penagos_app', 'videojuegos'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-01 00:47:35.116289'),
(2, 'auth', '0001_initial', '2023-06-01 00:47:35.544720'),
(3, 'admin', '0001_initial', '2023-06-01 00:47:35.658225'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-01 00:47:35.666304'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-01 00:47:35.677318'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-01 00:47:35.762163'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-01 00:47:35.841789'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-01 00:47:35.869997'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-01 00:47:35.881998'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-01 00:47:35.944363'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-01 00:47:35.949491'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-01 00:47:35.957087'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-01 00:47:36.024710'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-01 00:47:36.085631'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-01 00:47:36.118443'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-01 00:47:36.127905'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-01 00:47:36.190184'),
(18, 'penagos_app', '0001_initial', '2023-06-01 00:47:36.207162'),
(19, 'penagos_app', '0002_fortnite_residentevil_videojuegos', '2023-06-01 00:47:36.255062'),
(20, 'penagos_app', '0003_palabra_respuesta', '2023-06-01 00:47:36.279986'),
(21, 'penagos_app', '0004_mariobros_spiderman', '2023-06-01 00:47:36.361282'),
(22, 'penagos_app', '0005_rename_compatatibilidad_mariobros_compatibilidad_and_more', '2023-06-01 00:47:36.387986'),
(23, 'penagos_app', '0006_alter_mariobros_options', '2023-06-01 00:47:36.394960'),
(24, 'penagos_app', '0007_remove_mariobros_videojuegos_ptr_and_more', '2023-06-01 00:47:36.536308'),
(25, 'penagos_app', '0008_alter_spiderman_options_and_more', '2023-06-01 00:47:36.652359'),
(26, 'sessions', '0001_initial', '2023-06-01 00:47:36.685947'),
(27, 'penagos_app', '0009_remove_spiderman_videojuegos_ptr_delete_mariobros_and_more', '2023-06-01 00:58:27.205850'),
(28, 'penagos_app', '0010_alter_palabra_palabra_alter_palabra_respuesta', '2023-06-01 01:32:57.982977');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penagos_app_fortnite`
--

CREATE TABLE `penagos_app_fortnite` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `plataforma` varchar(100) NOT NULL,
  `lanzamiento` date NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `penagos_app_fortnite`
--

INSERT INTO `penagos_app_fortnite` (`id`, `nombre`, `genero`, `plataforma`, `lanzamiento`, `descripcion`) VALUES
(1, 'fortnite', 'E13', 'PC XBOX PS5 ', '2016-05-25', 'Fortnite es un videojuego de supervivencia y construcción desarrollado por Epic Games. Fue lanzado en 2017 y se ha convertido en uno de los juegos más populares y exitosos en la industria de los videojuegos.\n\nEn Fortnite, los jugadores son dejados en una isla y deben luchar por sobrevivir mientras se enfrentan a otros jugadores en un entorno de juego de tipo battle royale. El objetivo principal es ser el último jugador o equipo en pie.\n\nUna de las características distintivas de Fortnite es su mecánica de construcción. Los jugadores pueden recolectar recursos del entorno, como madera, piedra y metal, para construir estructuras defensivas, rampas, muros, etc. Estas estructuras son clave para protegerse de los ataques de otros jugadores y para obtener ventaja táctica durante las peleas.\n\nEl juego también cuenta con un modo creativo, donde los jugadores pueden construir y diseñar sus propias islas y desafíos para compartir con otros jugadores.\n\nFortnite ha ganado popularidad gracias a su estilo artístico único, su jugabilidad emocionante y su modelo de negocio basado en el juego gratuito con compras opcionales dentro del juego. También ha sido aclamado por su comunidad en línea activa y sus eventos en vivo que mantienen a los jugadores comprometidos y emocionados.\n\nEn resumen, Fortnite es un juego de supervivencia y construcción en un entorno battle royale que ha ganado gran popularidad debido a su jugabilidad única, su estilo artístico llamativo y su modelo de negocio innovador.\n\n\n\n\n\n\n'),
(2, 'Fortnite', 'Battle Royale', 'PC', '2017-07-25', 'Un juego de supervivencia y construcción en el que los jugadores luchan entre sí en un mundo abierto.'),
(3, 'PlayerUnknown\'s Battlegrounds', 'Battle Royale', 'Xbox One', '2017-12-20', 'El juego que popularizó el género Battle Royale, donde los jugadores luchan por ser el último en pie.'),
(4, 'Call of Duty: Warzone', 'Battle Royale', 'PlayStation 4', '2020-03-10', 'Una experiencia de Battle Royale gratuita con el estilo y la acción intensa de la serie Call of Duty.'),
(5, 'Apex Legends', 'Battle Royale', 'Xbox One', '2019-02-04', 'Un juego de disparos en primera persona con personajes únicos y habilidades especiales en un mundo Battle Royale.'),
(6, 'H1Z1', 'Battle Royale', 'PC', '2018-02-28', 'Un juego de supervivencia y combate Battle Royale con un enfoque en el juego táctico.'),
(7, 'Realm Royale', 'Battle Royale', 'Nintendo Switch', '2018-06-05', 'Un juego de Battle Royale con un toque fantástico, donde los jugadores pueden usar habilidades mágicas y montar a caballo.'),
(8, 'Fall Guys: Ultimate Knockout', 'Battle Royale', 'PlayStation 4', '2020-08-04', 'Una divertida competencia de Battle Royale con desafíos en forma de minijuegos coloridos y caóticos.'),
(9, 'Hyper Scape', 'Battle Royale', 'PC', '2020-08-11', 'Un juego futurista de Battle Royale con mecánicas de parkour y habilidades especiales.'),
(10, 'The Culling', 'Battle Royale', 'Xbox One', '2017-10-05', 'Un juego de supervivencia y combate Battle Royale con un enfoque en el combate cuerpo a cuerpo.'),
(11, 'Darwin Project', 'Battle Royale', 'PC', '2020-01-14', 'Un juego Battle Royale donde los jugadores deben cazar, fabricar y sobrevivir en un entorno helado.'),
(12, 'Spellbreak', 'Battle Royale', 'PlayStation 4', '2020-09-03', 'Un juego de Battle Royale basado en el uso de hechizos mágicos y habilidades elementales.'),
(13, 'Rogue Company', 'Battle Royale', 'Nintendo Switch', '2020-07-20', 'Un juego de disparos táctico en tercera persona con elementos Battle Royale.'),
(14, 'Cuisine Royale', 'Battle Royale', 'PC', '2019-06-13', 'Un Battle Royale humorístico donde los jugadores luchan con utensilios de cocina como armas.'),
(15, 'Radical Heights', 'Battle Royale', 'PC', '2018-04-10', 'Un juego de estilo retro en un mundo Battle Royale con elementos de los años 80.'),
(16, 'Islands of Nyne: Battle Royale', 'Battle Royale', 'PC', '2018-07-12', 'Un juego de Battle Royale con temática futurista y enfoque en la acción rápida.'),
(17, 'Ring of Elysium', 'Battle Royale', 'PC', '2018-09-19', 'Un juego Battle Royale con temática de desastres naturales y elementos de supervivencia.'),
(18, 'Warface: Battle Royale', 'Battle Royale', 'PlayStation 4', '2019-10-01', 'Un juego de disparos gratuito con un modo Battle Royale lleno de acción.'),
(19, 'Creative Destruction', 'Battle Royale', 'Android', '2018-04-18', 'Un juego de construcción y combate Battle Royale similar a Fortnite.'),
(20, 'Fear the Wolves', 'Battle Royale', 'PC', '2018-07-18', 'Un juego de supervivencia Battle Royale con una ambientación postapocalíptica.'),
(21, 'Survival Games', 'Battle Royale', 'PC', '2020-03-25', 'Un juego Battle Royale en el que los jugadores deben sobrevivir en un entorno hostil y luchar por su vida.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penagos_app_palabra`
--

CREATE TABLE `penagos_app_palabra` (
  `id` bigint NOT NULL,
  `palabra` varchar(500) NOT NULL,
  `respuesta` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `penagos_app_palabra`
--

INSERT INTO `penagos_app_palabra` (`id`, `palabra`, `respuesta`) VALUES
(40, '[\'forza\']', 'desconozco lo que preguntaste'),
(41, '[\'forzan\']', 'desconozco lo que preguntaste'),
(42, '[\'forza\']', 'desconozco lo que preguntaste'),
(43, '[\'resident\']', 'desconozco lo que preguntaste'),
(44, '[\'residnef\']', 'desconozco lo que preguntaste'),
(45, '[\'residnet\', \'evil\']', 'desconozco lo que preguntaste'),
(46, '[\'fornite\']', 'desconozco lo que preguntaste'),
(47, '[\'Call\', \'of\', \'Duty\', \':\', \'Warzone\']', 'desconozco lo que preguntaste'),
(48, '[\'warzone\']', 'desconozco lo que preguntaste'),
(49, '[\'minecrag\', \'que\', \'es\']', 'desconozco lo que preguntaste'),
(50, '[\'que\', \'es\', \'minecraft\']', 'desconozco lo que preguntaste'),
(51, '[\'minecraft\']', 'desconozco lo que preguntaste'),
(52, '[\'Minecraft\']', 'desconozco lo que preguntaste'),
(53, '[\'forzaf\']', 'desconozco lo que preguntaste'),
(54, '[\'mincrat\', \'que\', \'es\']', 'desconozco lo que preguntaste'),
(55, '[\'que\', \'es\', \'gears\', \'of\', \'warf\']', 'desconozco lo que preguntaste'),
(56, '[\'quien\', \'es\', \'luigi\']', 'desconozco lo que preguntaste'),
(57, '[\'luigui\']', 'desconozco lo que preguntaste'),
(58, '[\'warzonee\']', 'desconozco lo que preguntaste'),
(59, '[\'wazr\']', 'desconozco lo que preguntaste'),
(60, '[\'warzonn3\']', 'desconozco lo que preguntaste'),
(61, '[\'warzone3\']', 'desconozco lo que preguntaste'),
(62, '[\'warzon3\']', 'desconozco lo que preguntaste'),
(63, '[\'mario\', \'akart\']', 'desconozco lo que preguntaste'),
(64, '[\'kart\']', 'desconozco lo que preguntaste'),
(65, '[\'residnet\']', 'desconozco lo que preguntaste'),
(66, '[\'residentt\']', 'desconozco lo que preguntaste'),
(67, '[\'resm\']', 'desconozco lo que preguntaste'),
(68, '[\'resedin\']', 'desconozco lo que preguntaste'),
(69, '[\'resft\']', 'desconozco lo que preguntaste'),
(70, 'd', 'Desconozco lo que preguntaste'),
(71, 'fortnite', 'Desconozco lo que preguntaste'),
(72, 'fornite', 'Desconozco lo que preguntaste'),
(73, 's', 'Desconozco lo que preguntaste'),
(74, 'fortnie', 'Desconozco lo que preguntaste'),
(75, 'que', 'Desconozco lo que preguntaste'),
(76, ',l', 'Desconozco lo que preguntaste'),
(77, ';ll', 'Desconozco lo que preguntaste'),
(78, 'cccccccccc', 'Desconozco lo que preguntaste'),
(79, '[\'hola\']', 'desconozco lo que preguntaste'),
(80, '[\'hola\']', 'desconozco lo que preguntaste'),
(81, '[\'Hola\']', 'desconozco lo que preguntaste'),
(82, '[\'fortnite\']', 'desconozco lo que preguntaste'),
(83, '[\'que\', \'es\', \'wat\']', 'desconozco lo que preguntaste'),
(84, '[\'cars\']', 'desconozco lo que preguntaste'),
(85, '[\'Hola\']', 'desconozco lo que preguntaste'),
(86, '[\'hola\']', 'desconozco lo que preguntaste'),
(87, '[\'hola\']', 'desconozco lo que preguntaste'),
(88, '[\'hola\']', 'desconozco lo que preguntaste'),
(89, '[\'hola\']', 'desconozco lo que preguntaste'),
(90, '[\'hola\']', 'desconozco lo que preguntaste'),
(91, '[\'resident\', \'tevil\']', 'desconozco lo que preguntaste'),
(92, '[\'hola\']', 'desconozco lo que preguntaste'),
(93, '[\'fifia\', \'e\']', 'desconozco lo que preguntaste'),
(94, '[\'que\', \'es\', \'fifa\']', 'desconozco lo que preguntaste'),
(95, '[\'que\', \'es\', \'fifa\']', 'desconozco lo que preguntaste'),
(96, '[\'ffifa\']', 'desconozco lo que preguntaste'),
(97, '[\'que\', \'es\', \'difa\']', 'desconozco lo que preguntaste'),
(98, '[\'gta\']', 'desconozco lo que preguntaste'),
(99, '[\'tg\']', 'desconozco lo que preguntaste'),
(100, '[\'gt\', \'a\']', 'desconozco lo que preguntaste'),
(101, '[\'que\', \'es\', \'GTAB\']', 'desconozco lo que preguntaste'),
(102, '[\'GTA\']', 'desconozco lo que preguntaste'),
(103, '[\'FORZA\']', 'desconozco lo que preguntaste'),
(104, '[\'FORZA\']', 'desconozco lo que preguntaste'),
(105, '[\'mario\', \'bros\']', 'desconozco lo que preguntaste'),
(106, '[\'mario\', \'kart\']', 'desconozco lo que preguntaste'),
(107, '[\'mari0\', \'bros\']', 'desconozco lo que preguntaste'),
(108, '[\'mario\', \'9\', \'kart\']', 'desconozco lo que preguntaste'),
(109, '[\'kart\']', 'desconozco lo que preguntaste'),
(110, '[\'resident\', \'evil\', \'7\', \'y\', \'8\']', 'desconozco lo que preguntaste'),
(111, '[\'resident\', \'evil\', \'siete\', \'y\', \'icho\']', 'desconozco lo que preguntaste'),
(112, '[\'leon\', \'s\', \'kennedy\']', 'desconozco lo que preguntaste'),
(113, '[\'juegos\', \'de\', \'RPG\']', 'desconozco lo que preguntaste'),
(114, '[\'RPG\']', 'desconozco lo que preguntaste'),
(115, '[\'RPG\']', 'desconozco lo que preguntaste'),
(116, '[\'spider\', \'m4n\']', 'desconozco lo que preguntaste'),
(117, '[\'espider\']', 'desconozco lo que preguntaste'),
(118, '[\'que\', \'es\', \'spider\', \'man\']', 'desconozco lo que preguntaste'),
(119, '[\'que\', \'es\', \'spider\', \'man\']', 'desconozco lo que preguntaste'),
(120, '[\'q\', \'es\', \'man\']', 'desconozco lo que preguntaste'),
(121, '[\'spi4er\', \'man\']', 'desconozco lo que preguntaste'),
(122, '[\'miles\', \'morla3es\']', 'desconozco lo que preguntaste'),
(123, '[\'quien\', \'es\', \'el\', \'espider\', \'man\']', 'desconozco lo que preguntaste'),
(124, '[\'spider\', \'4\']', 'desconozco lo que preguntaste'),
(125, '[\'spider4\']', 'desconozco lo que preguntaste'),
(126, '[\'kart\']', 'desconozco lo que preguntaste'),
(127, '[\'kart\']', 'desconozco lo que preguntaste'),
(128, '[\'mario\', \'kart\', \'4\']', 'desconozco lo que preguntaste'),
(129, '[\'mario\', \'kart\']', 'desconozco lo que preguntaste'),
(130, '[\'kart\', \'mario\']', 'desconozco lo que preguntaste'),
(131, '[\'kart\', \'mario\']', 'desconozco lo que preguntaste'),
(132, '[\'kart\', \'mario\']', 'desconozco lo que preguntaste'),
(133, '[\'kart\', \'mario2\']', 'desconozco lo que preguntaste'),
(134, '[\'mario2\']', 'desconozco lo que preguntaste'),
(135, '[\'mario\', \'y\', \'luigui\']', 'desconozco lo que preguntaste'),
(136, '[\'luigui\']', 'desconozco lo que preguntaste'),
(137, '[\'Xbox\', \'One\']', 'desconozco lo que preguntaste'),
(138, '[\'juegos\', \'xbox\']', 'desconozco lo que preguntaste'),
(139, '[\'xbox\']', 'desconozco lo que preguntaste'),
(140, '[\'xboxXbox\', \'One\']', 'desconozco lo que preguntaste'),
(141, '[\'Xbox\', \'One\']', 'desconozco lo que preguntaste'),
(142, '[\'Xbox\', \'Ones\']', 'desconozco lo que preguntaste'),
(143, '[\'one\', \'s\']', 'desconozco lo que preguntaste'),
(144, '[\'xbox\', \'one\', \'s\']', 'desconozco lo que preguntaste'),
(145, '[\'qu\', \'xbox\']', 'desconozco lo que preguntaste'),
(146, '[\'xbox\']', 'desconozco lo que preguntaste'),
(147, '[\'mario\', \'kart\']', 'desconozco lo que preguntaste'),
(148, '[\'kart\']', 'desconozco lo que preguntaste'),
(149, '[\'Peach\']', 'desconozco lo que preguntaste'),
(150, '[\'princesa\', \'Peach\']', 'desconozco lo que preguntaste'),
(151, '[\'peachf\']', 'desconozco lo que preguntaste'),
(152, '[\'peach\']', 'desconozco lo que preguntaste'),
(153, '[\'Peach\']', 'desconozco lo que preguntaste'),
(154, '[\'mrio\']', 'desconozco lo que preguntaste'),
(155, '[\'luigui\']', 'desconozco lo que preguntaste'),
(156, '[\'espiderman\']', 'desconozco lo que preguntaste'),
(157, '[\'espider\']', 'desconozco lo que preguntaste'),
(158, '[\'spiderman\']', 'desconozco lo que preguntaste'),
(159, '[\'spider\', \'man\']', 'desconozco lo que preguntaste'),
(160, '[\'quien\', \'es\', \'moral\']', 'desconozco lo que preguntaste'),
(161, '[\'morales\', \'q\']', 'desconozco lo que preguntaste'),
(162, '[\'morle\']', 'desconozco lo que preguntaste'),
(163, '[\'morlaes\', \'mile\']', 'desconozco lo que preguntaste'),
(164, '[\'man\']', 'desconozco lo que preguntaste'),
(165, '[\'battt\', \';\', \'y\']', 'desconozco lo que preguntaste'),
(166, '[\'batlla\']', 'desconozco lo que preguntaste'),
(167, '[\'man\', \'mles\']', 'desconozco lo que preguntaste'),
(168, '[\'milesss\']', 'desconozco lo que preguntaste'),
(169, '[\'mile\', \'es\']', 'desconozco lo que preguntaste'),
(170, '[\'quien\', \'es\']', 'desconozco lo que preguntaste'),
(171, '[\'quien\', \'es\', \'spiderman\']', 'desconozco lo que preguntaste'),
(172, '[\'spiderman\', \'3\']', 'desconozco lo que preguntaste'),
(173, '[\'spidermaan\']', 'desconozco lo que preguntaste'),
(174, '[\'spidermann\']', 'desconozco lo que preguntaste'),
(175, '[\'spidermann\']', 'desconozco lo que preguntaste'),
(176, '[\'spdierman\']', 'desconozco lo que preguntaste'),
(177, '[\'spiderman\']', 'desconozco lo que preguntaste'),
(178, '[\'quien\', \'es\', \'spiderman\']', 'desconozco lo que preguntaste'),
(179, '[\'quien\', \'es\', \'spidermna\']', 'desconozco lo que preguntaste'),
(180, '[\'quien\', \'es\', \'piderman\']', 'desconozco lo que preguntaste'),
(181, '[\'quien\', \'es\', \'piterman\']', 'desconozco lo que preguntaste'),
(182, '[\'quien\', \'es\', \'spiderman\']', 'desconozco lo que preguntaste'),
(183, '[\'quien\', \'es\', \'spiderman\']', 'desconozco lo que preguntaste'),
(184, '[\'spiderman\']', 'desconozco lo que preguntaste'),
(185, '[\'spiderman\']', 'desconozco lo que preguntaste'),
(186, '[\'spidermans\']', 'desconozco lo que preguntaste'),
(187, '[\'spiderman\']', 'desconozco lo que preguntaste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penagos_app_residentevil`
--

CREATE TABLE `penagos_app_residentevil` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `plataforma` varchar(100) NOT NULL,
  `lanzamiento` date NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `penagos_app_residentevil`
--

INSERT INTO `penagos_app_residentevil` (`id`, `nombre`, `genero`, `plataforma`, `lanzamiento`, `descripcion`) VALUES
(1, 'Resident Evil 4', 'Terror Zombies', 'PS5', '2023-05-03', 'Resident Evil, también conocido como Biohazard en Japón, es una popular franquicia de videojuegos creada por Capcom en 1996. La serie se ha expandido a través de diversos medios, incluyendo películas, libros, cómics y otros productos relacionados. Resident Evil se ha convertido en un referente del género de terror y supervivencia, y ha dejado una marca significativa en la cultura popular.\n\nEl concepto principal de Resident Evil gira en torno a una serie de eventos que ocurren en un mundo ficticio plagado de horrores biológicos. La trama se centra en la corporación Umbrella Corporation, una empresa farmacéutica y de armas biológicas que está involucrada en la creación y liberación de un virus conocido como el Virus-T. Este virus es capaz de transformar a los seres humanos y animales en criaturas mutantes y sedientas de sangre, conocidas como zombis.'),
(2, 'Resident Evil 2', 'Survival horror', 'PlayStation 4', '2019-01-25', 'Remake del clásico juego de Resident Evil 2 que ofrece una experiencia de terror intensa.'),
(3, 'Resident Evil 7: Biohazard', 'Survival horror', 'Xbox One', '2017-01-24', 'Un juego de terror en primera persona que regresa a los orígenes de la saga.'),
(4, 'Resident Evil Village', 'Survival horror', 'PC', '2021-05-07', 'La octava entrega principal de la serie que sigue la historia de Ethan Winters en un pueblo aislado lleno de criaturas siniestras.'),
(5, 'Resident Evil 4', 'Acción, Aventura', 'Nintendo Switch', '2005-01-11', 'Considerado como uno de los mejores juegos de la franquicia, presenta una mezcla única de acción y terror.'),
(6, 'Resident Evil 5', 'Acción, Aventura', 'PlayStation 3', '2009-03-05', 'Un juego de acción cooperativo que lleva a los jugadores a una peligrosa misión en África.'),
(7, 'Resident Evil 6', 'Acción, Aventura', 'Xbox 360', '2012-10-02', 'La sexta entrega principal de la serie que ofrece una experiencia de juego intensa y llena de acción.'),
(8, 'Resident Evil Code: Veronica', 'Survival horror', 'Dreamcast', '2000-02-03', 'Un juego que sigue la historia de Claire Redfield mientras busca a su hermano desaparecido en una isla infestada de zombis.'),
(9, 'Resident Evil Zero', 'Survival horror', 'GameCube', '2002-11-21', 'Una precuela de los eventos del primer juego de Resident Evil, que explora los orígenes del brote del virus.'),
(10, 'Resident Evil: Revelations', 'Survival horror', 'Nintendo 3DS', '2012-01-26', 'Un juego que combina la jugabilidad clásica de Resident Evil con elementos de acción y exploración.'),
(11, 'Resident Evil 3', 'Survival horror', 'PlayStation', '1999-09-22', 'El tercer juego principal de la serie que sigue la historia de Jill Valentine mientras intenta escapar de Raccoon City en medio de un apocalipsis zombi.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `penagos_app_videojuegos`
--

CREATE TABLE `penagos_app_videojuegos` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `plataforma` varchar(50) NOT NULL,
  `lanzamiento` date NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `penagos_app_videojuegos`
--

INSERT INTO `penagos_app_videojuegos` (`id`, `nombre`, `genero`, `plataforma`, `lanzamiento`, `descripcion`) VALUES
(1, 'Super Mario Kart', 'Plataformas', 'Nintendo Switch', '2017-10-27', 'Únete a Mario en una aventura por diferentes reinos para rescatar a la Princesa Peach.'),
(2, 'The Legend of Zelda: Breath of the Wild', 'Acción, Aventura', 'Nintendo Switch', '2017-03-03', 'Explora el vasto mundo abierto de Hyrule y enfrenta desafiantes mazmorras para derrotar a Ganon.'),
(3, 'Grand Theft Auto V', 'Acción, Aventura', 'PlayStation 4, Xbox One, PC', '2014-11-18', 'Sumérgete en el peligroso mundo del crimen y la corrupción en Los Santos.'),
(4, 'Minecraft', 'Aventura, Construcción', 'Multiplataforma', '2011-11-18', 'Crea y explora tus propios mundos en este popular juego de construcción y supervivencia.'),
(5, 'Red Dead Redemption 2', 'Acción, Aventura', 'PlayStation 4, Xbox One, PC', '2018-10-26', 'Embárcate en un épico viaje en el salvaje oeste en busca de aventuras y redención.'),
(6, 'The Witcher 3: Wild Hunt', 'Acción, RPG', 'PlayStation 4, Xbox One, PC', '2015-05-19', 'Explora un vasto mundo abierto lleno de monstruos, intrigas políticas y decisiones morales impactantes.'),
(7, 'FIFA 22', 'Deportes', 'PlayStation 5, Xbox Series X/S, PC', '2021-10-01', 'Disfruta del fútbol virtual con mejoras en los gráficos, la jugabilidad y nuevos modos de juego.'),
(8, 'Call of Duty: Warzone', 'Battle Royale, Shooter', 'PlayStation 4, Xbox One, PC', '2020-03-10', 'Enfréntate a otros jugadores en intensas batallas multijugador en línea en un mapa masivo.'),
(9, 'Assassin\'s Creed Valhalla', 'Acción, Aventura', 'PlayStation 5, Xbox Series X/S, PC', '2020-11-10', 'Viaja al período vikingo y lidera a tu clan en busca de un nuevo hogar en Inglaterra.'),
(10, 'Cyberpunk 2077', 'Acción, RPG', 'PlayStation 4, Xbox One, PC', '2020-12-10', 'Sumérgete en Night City, una megalópolis obsesionada con el poder, la moda y las modificaciones cibernéticas.'),
(23, 'Spider-Man: Miles Morales', 'Acción, Aventura', 'PlayStation 5, PlayStation 4', '2020-11-12', 'Acompaña a Miles Morales en su aventura como el nuevo Spider-Man y protege la ciudad de Nueva York.'),
(24, 'Spider-Man (2018)', 'Acción, Aventura', 'PlayStation4', '2018-09-07', 'Vive la historia de Peter Parker como Spider-Man y enfrenta a los villanos más icónicos de la ciudad.'),
(25, 'Marvel\'s Avengers', 'Acción, Aventura', 'PlayStation 5, PlayStation 4, Xbox Series ', '2020-09-04', 'Reúne a los héroes más poderosos de Marvel y defiende el mundo de amenazas catastróficas.'),
(26, 'Marvel\'s Spider-Man: Remastered', 'Acción, Aventura', 'PlayStation 5', '2020-11-12', 'Disfruta de una versión mejorada y remasterizada del aclamado juego de Spider-Man para PlayStation 5.'),
(27, 'Grand Theft Auto V', 'Acción, Aventura', 'PlayStation 4, Xbox One, PC', '2014-11-18', 'Adéntrate en el mundo criminal de Los Santos y disfruta de una historia épica llena de acción y libertad.'),
(28, 'Grand Theft Auto: San Andreas', 'Acción, Aventura', 'PlayStation 2, Xbox, PC', '2004-10-26', 'Explora la ciudad de Los Santos en los años 90 y vive la vida de un pandillero en esta icónica entrega de GTA.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `penagos_app_fortnite`
--
ALTER TABLE `penagos_app_fortnite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `penagos_app_palabra`
--
ALTER TABLE `penagos_app_palabra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `penagos_app_residentevil`
--
ALTER TABLE `penagos_app_residentevil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `penagos_app_videojuegos`
--
ALTER TABLE `penagos_app_videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `penagos_app_fortnite`
--
ALTER TABLE `penagos_app_fortnite`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `penagos_app_palabra`
--
ALTER TABLE `penagos_app_palabra`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT de la tabla `penagos_app_residentevil`
--
ALTER TABLE `penagos_app_residentevil`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `penagos_app_videojuegos`
--
ALTER TABLE `penagos_app_videojuegos`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
