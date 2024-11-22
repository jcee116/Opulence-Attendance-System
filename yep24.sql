-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 10:13 AM
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
-- Database: `yep24`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `QLID` varchar(150) NOT NULL,
  `Beverage` varchar(150) NOT NULL,
  `tableno` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `Name`, `QLID`, `Beverage`, `tableno`) VALUES
(1, 'Abigail Rea Paner', 'AP185431', 'COCKTAIL', '21'),
(2, 'Addie Nathalie Panuncillo', 'AP185340', 'COCKTAIL', '4'),
(3, 'Aivalyn Derramas', 'AD185256', 'MOCKTAIL', '21'),
(4, 'Aiya Lapera', 'AL185198', 'COCKTAIL', '11'),
(5, 'Aiza Tecson', 'AT385001', 'COCKTAIL', '24'),
(6, 'Allan Rey Sumile', 'AS385025', 'COCKTAIL', '18'),
(7, 'Althessa Del Mar', 'AL185093', 'MOCKTAIL', '3'),
(8, 'Ammabelle Almodiel', 'AA185607', 'MOCKTAIL', '25'),
(9, 'Analiza Ibon', 'AR185252', 'COCKTAIL', '18'),
(10, 'Andrew Taran', 'AT185236', 'BEER', '11'),
(11, 'Angel Cabuguas', 'AC185362', 'BEER', '13'),
(12, 'Angelica Daguman', 'AD385017', 'COCKTAIL', '25'),
(13, 'Angelie Donayre', 'AB185360', 'MOCKTAIL', '10'),
(14, 'Angeline Emia', 'AS186068', 'COCKTAIL', '26'),
(15, 'Angelito Cariliman', 'AC185480', 'COCKTAIL', '18'),
(16, 'Anthony Ryan Aquino', 'AA385000', 'COCKTAIL', '19'),
(17, 'Arnoluz Bayon', 'AB185359', 'MOCKTAIL', '4'),
(18, 'Arvin Ryan Manongas', 'AM185531', 'BEER', '25'),
(19, 'Ben David Baladya', 'BB185075', 'MOCKTAIL', '14'),
(20, 'Bernard Roy Tipan', 'BT185052', 'COCKTAIL', '15'),
(21, 'Bryan Paradela', 'BP185061', 'BEER', '26'),
(22, 'Calvin Jonathan Atienza', 'CA185150', 'COCKTAIL', '5'),
(23, 'Carl Balais', 'CB185109', 'COCKTAIL', '26'),
(24, 'Carl Julius Icarangal', 'CI250033', 'MOCKTAIL', '16'),
(25, 'Catherine Mabano', 'CM385008', 'COCKTAIL', '24'),
(26, 'Cecilia Tatoy', 'CT185118', 'COCKTAIL', '16'),
(27, 'Cecille Superales', 'CS185392', 'COCKTAIL', '19'),
(28, 'Charlene Codilla', 'CC385009', 'MOCKTAIL', '7'),
(29, 'Cheska Dawn Barba', 'CB185307', 'MOCKTAIL', '24'),
(30, 'Christian Sevilla', 'CS185310', 'COCKTAIL', '11'),
(31, 'Christina De Dios', 'CD185198', 'MOCKTAIL', '25'),
(32, 'Christine Contridas', 'CC185327', 'COCKTAIL', '25'),
(33, 'Christine Marie Cantillas', 'CC385000', 'COCKTAIL', '2'),
(34, 'Clarence Sorrera', 'CS185298', 'COCKTAIL', '5'),
(35, 'Clarisse Moldez', 'CM385002', 'COCKTAIL', '19'),
(36, 'Clemence Orl Cadano', 'CC185259', 'COCKTAIL', '5'),
(37, 'Cloyd Garcia', 'CG185163', 'MOCKTAIL', '5'),
(38, 'Colleen Patual', 'CP185082', 'COCKTAIL', '9'),
(39, 'Cora Janice Dipay', 'CD185102', 'COCKTAIL', '18'),
(40, 'Cris Arellano', 'JA185326', 'COCKTAIL', '24'),
(41, 'Cris Olano', 'CO185039', 'MOCKTAIL', '10'),
(42, 'Cristy Joy Razo', 'CR250171', 'COCKTAIL', '7'),
(43, 'Dale Rose Ostria', 'DO385001', 'COCKTAIL', '21'),
(44, 'Darlanne Bless Duterte', 'DD185322', 'MOCKTAIL', '23'),
(45, 'Dennis Canlas', 'DC185377', 'MOCKTAIL', '11'),
(46, 'Deo Compania', 'DC185255', 'MOCKTAIL', '26'),
(47, 'Diana Luar', 'DL185088', 'MOCKTAIL', '18'),
(48, 'Diosdado Tagapan', 'DT385004', 'COCKTAIL', '24'),
(49, 'Earl Joseph Gascon', 'EG185095', 'MOCKTAIL', '5'),
(50, 'Edgar Allan Niere', 'EN185019', 'BEER', '3'),
(51, 'Eillien May Canada', 'EC185108', 'COCKTAIL', '26'),
(52, 'Elaine Binong', 'EB185112', 'MOCKTAIL', '17'),
(53, 'Elmo Villaceran', 'GV185025', 'MOCKTAIL', '19'),
(54, 'Elvin Hortelano', 'EH250234', 'BEER', '7'),
(55, 'Emelyn Vallerie Longakit', 'EL185102', 'MOCKTAIL', '26'),
(56, 'Emilynn Metillo', 'EM185094', 'MOCKTAIL', '9'),
(57, 'Eric Lim', 'EL185036', 'MOCKTAIL', '4'),
(58, 'Eugene Cawit', 'EC185106', 'BEER', '14'),
(59, 'Eugene V Ynclino', 'EY185015', 'COCKTAIL', '5'),
(60, 'Fatima Remigoso', 'FR385002', 'COCKTAIL', '12'),
(61, 'Febra Gay Asufra', 'FA385001', 'COCKTAIL', '2'),
(62, 'Francis John Samson', 'FS385004', 'COCKTAIL', '25'),
(63, 'Francis Veloso', 'FV185025', 'COCKTAIL', '9'),
(64, 'Garrick Cabije', 'GC185129', 'BEER', '26'),
(65, 'Gemma Rae Solomon', 'GS385003', 'MOCKTAIL', '23'),
(66, 'Gemrick Go', 'GG185173', 'BEER', '23'),
(67, 'Geneva Mae Lariosa', 'GL185123', 'COCKTAIL', '24'),
(68, 'Geraldine Padua', 'GP185060', 'COCKTAIL', '23'),
(69, 'Gerardo III Tulingin', 'GT185041', 'COCKTAIL', '14'),
(70, 'Ghai Aldemita', 'EA185024', 'BEER', '3'),
(71, 'Giana Claire Codilla', 'GC185076', 'MOCKTAIL', '20'),
(72, 'Glady Rose Langit', 'GL185109', 'MOCKTAIL', '9'),
(73, 'Glenda Abastillas', 'GA185053', 'COCKTAIL', '18'),
(74, 'Grace Manos', 'GM185197', 'COCKTAIL', '11'),
(75, 'Gwendolyn Empleo', 'GE185034', 'MOCKTAIL', '8'),
(76, 'Gwyneth Valdehueza', 'GV185048', 'COCKTAIL', '13'),
(77, 'Hearthy Honevy Vertudazo', 'HV185043', 'MOCKTAIL', '4'),
(78, 'Heidilise Tan', 'HT185028', 'MOCKTAIL', '9'),
(79, 'Henry Castillo', 'AC185306', 'COCKTAIL', '1'),
(80, 'Herbert Villarante', 'HV185001', 'COCKTAIL', '3'),
(81, 'Honey Tibon', 'HT185041', 'COCKTAIL', '3'),
(82, 'Honey Yu', 'HY385001', 'COCKTAIL', '18'),
(83, 'Ian Ronil Vergara', 'IV185018', 'MOCKTAIL', '14'),
(84, 'Irish Balaba', 'IB185021', 'COCKTAIL', '10'),
(85, 'Irish Mae Subingsubing', 'IS385006', 'MOCKTAIL', '20'),
(86, 'Isah Ong', 'IO185018', 'MOCKTAIL', '7'),
(87, 'Ivan Anthony Tambuli', 'IT185027', 'BEER', '18'),
(88, 'Ivan Credo', 'IC185021', 'BEER', '3'),
(89, 'Ivan Invinzor Ayuste', 'IA185026', 'COCKTAIL', '23'),
(90, 'Izza Mae Arano', 'IA385005', 'MOCKTAIL', '6'),
(91, 'Jacqueline Pelario', 'JP185220', 'MOCKTAIL', '26'),
(92, 'Jamaica Guerrero', 'JG385006', 'COCKTAIL', '6'),
(93, 'Jamel Montano', 'JM185496', 'COCKTAIL', '17'),
(94, 'Jamm Moen Pameroyan', 'JP185438', 'BEER', '13'),
(95, 'Jane Marie Garcia', 'JG385004', 'COCKTAIL', '12'),
(96, 'Janese Manabat', 'JM185492', 'COCKTAIL', '21'),
(97, 'Janice Recto', 'JR385004', 'MOCKTAIL', '16'),
(98, 'Janis Lota Gerundio', 'JG185384', 'MOCKTAIL', '11'),
(99, 'Janna Vaye Bitoon', 'JB185226', 'MOCKTAIL', '17'),
(100, 'Jant Albrent Caceres', 'JC385006', 'MOCKTAIL', '1'),
(101, 'Jasmin Geolin', 'JG185278', 'MOCKTAIL', '10'),
(102, 'Jason Paquibot', 'JP185369', 'COCKTAIL', '9'),
(103, 'Jay Bukiron', 'JB185236', 'MOCKTAIL', '4'),
(104, 'Jeanine Villanueva', 'JB185408', 'MOCKTAIL', '14'),
(105, 'Jecren Imbo', 'JI185029', 'BEER', '7'),
(106, 'Jelly Mompar', 'JM185684', 'BEER', '16'),
(107, 'Jemmellee Tanghal', 'JT185117', 'COCKTAIL', '19'),
(108, 'Jenice Lausa', 'JL185420', 'COCKTAIL', '4'),
(109, 'Jeniffer Manlunas', 'JM185437', 'MOCKTAIL', '20'),
(110, 'Jerald Melloga', 'JM385019', 'COCKTAIL', '23'),
(111, 'Jerson Capuyan', 'JC185255', 'BEER', '16'),
(112, 'Jerwin Loberiza', 'JL185415', 'COCKTAIL', '1'),
(113, 'Jesse John Navaja', 'JN385004', 'COCKTAIL', '20'),
(114, 'Jesus Delantar', 'JD185321', 'BEER', '21'),
(115, 'Jhea Marinella Escario', 'JE185088', 'COCKTAIL', '26'),
(116, 'Jhon Michael Turtosa', 'JT185227', 'MOCKTAIL', '15'),
(117, 'Joanne Conoso', 'JC385000', 'COCKTAIL', '2'),
(118, 'Joemill Flordelis', 'JF185175', 'COCKTAIL', '1'),
(119, 'Joewahr James Panuncia', 'JP185331', 'COCKTAIL', '4'),
(120, 'Joey Chrisna Brigoli', 'JF185232', 'MOCKTAIL', '6'),
(121, 'John De Guzman', 'JD385010', 'BEER', '14'),
(122, 'John Marven Mariot', 'JM185542', 'BEER', '1'),
(123, 'John Phil Tanseco', 'JT185188', 'BEER', '17'),
(124, 'Jonah Zacarias', 'JZ250304', 'MOCKTAIL', '6'),
(125, 'Jonas Del Mar', 'JD185213', 'COCKTAIL', '9'),
(126, 'Jonathan Molon', 'JM185423', 'BEER', '15'),
(127, 'Joni Olid', 'JO185053', 'COCKTAIL', '11'),
(128, 'Joseph Dominic Manatad', 'JM185731', 'COCKTAIL', '15'),
(129, 'Joseph Michael Tolentino', 'JT185241', 'MOCKTAIL', '13'),
(130, 'Joshua Luistro', 'JL385002', 'BEER', '14'),
(131, 'Journanil Daquio', 'JD185270', 'MOCKTAIL', '10'),
(132, 'Judith Campaner', 'JC185621', 'MOCKTAIL', '11'),
(133, 'Julie Pearl Macleod', 'JM385024', 'MOCKTAIL', '23'),
(134, 'Julius Cesar Ombajen', 'JO185126', 'MOCKTAIL', '19'),
(135, 'Justine Erediano', 'JE185103', 'MOCKTAIL', '5'),
(136, 'Juveyr Juanillo', 'JJ185082', 'MOCKTAIL', '23'),
(137, 'K Kho', 'KK385009', 'MOCKTAIL', '12'),
(138, 'Karen Torrejos', 'KT185150', 'MOCKTAIL', '4'),
(139, 'Karen Villamor', 'KV385000', 'COCKTAIL', '19'),
(140, 'Kathleen Hubahib', 'KH385000', 'COCKTAIL', '19'),
(141, 'Keena Caseres', 'KC185187', 'COCKTAIL', '24'),
(142, 'Kenneth Blanca', 'KB185261', 'BEER', '6'),
(143, 'Kenneth Rivera', 'KR185218', 'BEER', '5'),
(144, 'Kheziah Wrechelle Turtosa', 'KT185168', 'COCKTAIL', '20'),
(145, 'Khristian Rey Napoles', 'KN385000', 'MOCKTAIL', '14'),
(146, 'Kimberley Halasan', 'KH185135', 'COCKTAIL', '1'),
(147, 'Kimberly Perez', 'KP385004', 'BEER', '6'),
(148, 'Kyla Negparanon', 'KN185111', 'COCKTAIL', '21'),
(149, 'Lance Ranier Tabel', 'LT385000', 'COCKTAIL', '8'),
(150, 'Lesly De Guzman', 'LD185147', 'MOCKTAIL', '21'),
(151, 'Lloyd Celis', 'LC385005', 'MOCKTAIL', '15'),
(152, 'Lordes Mae Ylaya', 'LY185030', 'COCKTAIL', '21'),
(153, 'Louie Albert Murillo', 'LM185151', 'MOCKTAIL', '15'),
(154, 'Lyndee Grace Crisanto', 'LC250356', 'COCKTAIL', '12'),
(155, 'MA. CLEOFE SUICO', 'MS185617', 'COCKTAIL', '17'),
(156, 'Ma. Fatima Lopez', 'ML385005', 'MOCKTAIL', '18'),
(157, 'Madeline Tubalado', 'MT185254', 'MOCKTAIL', '10'),
(158, 'Maniya Cabangal', 'MC385010', 'MOCKTAIL', '2'),
(159, 'Maria Alrin Mocoy', 'AM185244', 'COCKTAIL', '15'),
(160, 'Maria Alsie Espineli', 'ME385002', 'COCKTAIL', '24'),
(161, 'Maria Cresanda Mahinay', 'MM185718', 'MOCKTAIL', '6'),
(162, 'Marielle Ponce', 'MP185420', 'COCKTAIL', '6'),
(163, 'Marjorie Ann Rocamora', 'MR385000', 'MOCKTAIL', '15'),
(164, 'Mark Japeth Sarientas', 'MS185782', 'MOCKTAIL', '12'),
(165, 'Mark Neil Quenn Gequillo', 'MG185399', 'MOCKTAIL', '11'),
(166, 'Marlowe Prado', 'MP185289', 'COCKTAIL', '16'),
(167, 'Mary Chris Lacerna', 'ML185290', 'COCKTAIL', '20'),
(168, 'Mary Feliza Irag', 'MI185072', 'COCKTAIL', '25'),
(169, 'Mary Jane Velasquez-Amay', 'MV185061', 'MOCKTAIL', '16'),
(170, 'Mary Sherryl M. Tribunal', 'MT385012', 'MOCKTAIL', '17'),
(171, 'Mary Vez Nina Tura', 'MT185241', 'COCKTAIL', '15'),
(172, 'Mauverick Pardillo', 'MP185479', 'MOCKTAIL', '12'),
(173, 'Mequia Angelo Quiachon', 'MQ185019', 'COCKTAIL', '17'),
(174, 'Michael Alinsub', 'MA185251', 'MOCKTAIL', '19'),
(175, 'Michael Aliviado', 'MA185205', 'MOCKTAIL', '16'),
(176, 'Michael Jaz Ingking', 'MI385000', 'BEER', '15'),
(177, 'Michael Villariasa', 'MV185098', 'COCKTAIL', '23'),
(178, 'Michael Vincent Saloma', 'MS185850', 'COCKTAIL', '2'),
(179, 'Monique Revil', 'MR185213', 'COCKTAIL', '24'),
(180, 'Nazaryl Manatad', 'NM185291', 'MOCKTAIL', '7'),
(181, 'Nicasio Rojas', 'NR350007', 'MOCKTAIL', '8'),
(182, 'Nina May Abrea', 'NT185077', 'COCKTAIL', '20'),
(183, 'Nino Arda', 'NA185087', 'BEER', '7'),
(184, 'Nino Rey Buslon', 'NB185173', 'COCKTAIL', '8'),
(185, 'Olga Mae Cani', 'OC185033', 'MOCKTAIL', '21'),
(186, 'Paul John dela Pena', 'PD185189', 'COCKTAIL', '14'),
(187, 'Quirino II Pacina', 'QP185004', 'MOCKTAIL', '1'),
(188, 'Ramon Christopher Padua', 'RP185326', 'COCKTAIL', '21'),
(189, 'Randhel Monterde', 'RM185550', 'COCKTAIL', '12'),
(190, 'Raul Quijano', 'RQ185014', 'BEER', '9'),
(191, 'Ray Sonny Perales', 'RP185265', 'BEER', '13'),
(192, 'Raymart Reboton', 'RR185273', 'MOCKTAIL', '10'),
(193, 'Raymon Kristomar Mackay', 'RM185318', 'COCKTAIL', '18'),
(194, 'Raymond Pejante', 'RP385011', 'MOCKTAIL', '5'),
(195, 'Raymund Daguil', 'RD185169', 'COCKTAIL', '10'),
(196, 'Regine Solano', 'RS185479', 'BEER', '4'),
(197, 'Reymar Sabayanan', 'RS185723', 'COCKTAIL', '26'),
(198, 'Rheymart Tampus', 'RT385000', 'COCKTAIL', '5'),
(199, 'Rhiena Mae Belandres', 'RB185327', 'COCKTAIL', '14'),
(200, 'Richie Ebrado', 'RE185096', 'BEER', '12'),
(201, 'Ricjohn Paul Batucan', 'RB185416', 'COCKTAIL', '25'),
(202, 'Rino Sardon', 'RS185031', 'MOCKTAIL', '3'),
(203, 'Riza Lorraine Toring', 'RT185151', 'COCKTAIL', '9'),
(204, 'Ronald Romero', 'RR185164', 'BEER', '13'),
(205, 'Rosemarie Cuyno', 'RC185287', 'COCKTAIL', '11'),
(206, 'Ruby Alquizola', 'RA385010', 'MOCKTAIL', '7'),
(207, 'Rudelyn Bucio', 'RB185428', 'MOCKTAIL', '7'),
(208, 'Ruvalyn Teofilo', 'RT185127', 'COCKTAIL', '25'),
(209, 'Ryan Democrito', 'RD185257', 'MOCKTAIL', '10'),
(210, 'Ryle Mae Quindao', 'RQ185020', 'COCKTAIL', '16'),
(211, 'Sandy Mae Masecampo', 'SM185398', 'COCKTAIL', '10'),
(212, 'Sarah Jean Rico', 'SR185461', 'BEER', '20'),
(213, 'Sarah Lorico', 'SL185179', 'MOCKTAIL', '16'),
(214, 'Sed Belonguel', 'SB185574', 'COCKTAIL', '6'),
(215, 'Shania Mae Huyo-a', 'SH185307', 'COCKTAIL', '25'),
(216, 'Stephanie Isip', 'SI385000', 'COCKTAIL', '24'),
(217, 'Sue Ann Delleva', 'SA185149', 'MOCKTAIL', '20'),
(218, 'Svend Castillo', 'SC185194', 'COCKTAIL', '4'),
(219, 'Therese Marie MANGAPIS', 'TM185143', 'COCKTAIL', '19'),
(220, 'Van Christian Mangubat', 'VM185181', 'COCKTAIL', '1'),
(221, 'Vern Boholst', 'VB350004', 'BEER', '2'),
(222, 'Veyra Mae Perpetua', 'VP185078', 'COCKTAIL', '7'),
(223, 'Ysrael Donne Villondo', 'YV185015', 'COCKTAIL', '20'),
(224, 'Zenne Stavross London', 'ZL185041', 'BEER', '6');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `QLID` varchar(150) NOT NULL,
  `Beverage` varchar(150) NOT NULL,
  `Log_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `Credits` int(11) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remarks` varchar(50) NOT NULL,
  `Credits2` int(11) NOT NULL,
  `tableno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`,`Name`,`QLID`,`Beverage`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`,`Name`,`QLID`,`Beverage`,`Log_in`,`Credits`,`modified`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
