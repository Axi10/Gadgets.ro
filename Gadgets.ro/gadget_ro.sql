-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 19, 2023 at 08:02 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadget_ro`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE IF NOT EXISTS `brand` (
  `BrandID` int(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(100) NOT NULL,
  `BrandRegistrationDate` date NOT NULL,
  PRIMARY KEY (`BrandID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandID`, `BrandName`, `BrandRegistrationDate`) VALUES
(1, 'Samsung', '2000-01-02'),
(2, 'Apple', '2001-05-06'),
(3, 'Huawei', '2016-12-20'),
(4, 'Skullcandy', '2012-09-20'),
(5, 'Bose', '2013-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Telefoane'),
(2, 'Casti'),
(3, 'Accesorii');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Full Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telephone` varchar(10) NOT NULL,
  `Address` varchar(150) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Full Name`, `Email`, `Telephone`, `Address`) VALUES
(1, 'Istrate Marcel', 'ismarcel@gmail.com', '0712345678', 'Str. Universitatii'),
(2, 'Ionica Andrei', 'ioandrei@gmail.com', '0725416481', 'Str. Universitatii'),
(3, 'Murgeanu Dragos', 'mudragos@gmail.com', '0761581265', 'Str. Universitatii');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `SubcategoryID` int(11) NOT NULL,
  `Cost` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `BrandID` (`BrandID`,`SubcategoryID`),
  KEY `SubcategoryID` (`SubcategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Color`, `BrandID`, `SubcategoryID`, `Cost`, `Description`) VALUES
(1, 'Samsung Galaxy Note 20 Ultra', 'Bronz', 1, 1, '5000 RON', 'Primul care a imbinat un instrument de scris cu un telefon, Note ti-a pus o lume cu totul noua in buzunar. Pe masura ce ne confruntam cu o noua normalitate, viata cere un nou tip de dispozitiv. Noul Galaxy Note nu este un smartphone obisnuit, ci o suita de calculatoare in buzunarul tau. Acesta este nivelul urmator al jocurilor pe mobil. Aceasta este o camera de nivel profesional, filmare 8K si un set complet de editare. Descopera telefonul puternic care schimba pentru totdeauna modul in care lucrezi si te joci.Design minimal, cu un corp metalic pus in valoare de detalii rafinate si culori transcendente, precum si o sticla durabila Corning® Gorilla® Victus, cea mai dura sticla dintr-un smartphone.  Fiecare Galaxy Note20 Ultra este completat de un S Pen asortat la culoarea telefonului.Videoclipul 8K iti ofera imagini clare, cu detalii incredibile, iar controlul profesional iti pune la dispozitie o putere creativa in timp real, astfel incat sa poti edita direct in aparat. Filmezi o actiune super fluenta in 120fps sau izolezi vocile cu un microfon Bluetooth. Apoi adaugi finisaje rapide prin editarea videoclipurilor tale chiar pe telefon.'),
(2, 'Iphone 13', 'Negru', 2, 2, '2500 RON', 'Ecran superstralucitor intr-un design rezistent. Filmari demne de Hollywood, mai usor de realizat ca niciodata. Cip uluitor de rapid. Crestere consistenta a autonomiei bateriei, pe care o vei remarca zi de zi. Un afisaj OLED cu, culori mai vii, care este, in acelasi timp, mai usor de vazut in lumina soarelui si mai eficient din punct de vedere energetic. Cu un design durabil, care este rezistent la apa si praf. Creeaza in mod automat efecte de adancime si tranzitii ale focalizarii in clipurile video. Treci la un nou nivel cu arta povestirii in scenele pe care le fimezi.\r\n\r\nModul Cinematic este disponibil si pentru camera frontala TrueDepth. Un upgrade urias pentru poze si filmari mai bune. Mai multa lumina captata cu obiectivul superangular. Stabilizare optica a imaginii prin deplasarea senzorului. Mai multe detalii in zonele intunecate ale fotografiilor realizate cu obiectivul ultra-superangular.\r\n\r\nUn nou design pe diagonala permite un obiectiv superangular si un senzor de dimensiuni mai mari.'),
(3, 'Casti Crusher', 'Negru', 4, 3, '600 RON', 'Nicio alta casca nu iti poate reda bass-ul pe care sa il simti. Daca vrei sa ai o experienta audio ca la un concert live sau un film de la cinema, incearca Skullcandy Crusher Wireless. Cele 40h ore de autonomie, iti redau confortul si libertatea mai multor zile. Tehnologia proprie a castilor Skullcandy Crusher Wireless iti ofera posibilitatea de ajustare a nivelului de intensitate a bass-ului sau a volumului, alaturi de izolarea fonica. '),
(4, 'Incarcator Samsung', 'Alb', 1, 4, '80 RON', 'Ofera dispozitivelor tale suportul de incarcare puternic pe care il merita. Incarcatorul de priza asigura incarcarea super rapida de pana la 25 W pentru dispozitivele compatibile. Foloseste incarcatorul de priza cu un cablu de incarcare oficial Samsung USB tip C pentru rezultate optime. Incarcatorul de priza alimenteaza rapid cele mai rapide dispozitive si, de asemenea, este compatibil si cu alte modele. Pentru dispozitivele compatibile Standard PD 3.0 vei obtine o incarcare de maximum 25W, iar celelalte se incarca la viteza proprie. '),
(5, 'Casti Huawei CM33', 'Alb', 3, 5, '100 RON', 'Huawei isi impartaseste viziunea cu oamenii care isi urmaresc visele, cu oamenii care sunt vizionari, cu persoane proactive, cu o credinta puternica in incercarea de a-si atinge obiectivele. Sunt dedicati aducerii celor mai noi tehnologii pentru consumatori si pentru crearea de experiente extraordinare pentru oamenii de pretutindeni.\r\n '),
(6, 'Samsung Galaxy S22 Ultra', 'Negru', 1, 1, '6000 RON', ''),
(7, 'Samsung Galaxy A53 5G', 'Albastru', 1, 1, '1800 RON', ''),
(8, 'Iphone 14 pro', 'Verde', 2, 2, '6000 RON', ''),
(9, 'Iphone X', 'Alb', 2, 2, '2000 RON', ''),
(10, 'Iphone SE', 'Alb', 2, 2, '2510 RON', ''),
(11, 'Iphone 7', 'Negru', 2, 2, '1562 RON', ''),
(12, 'Bose QuietComfort 45', 'Negru', 5, 3, '2000 RON', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `SubcategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `SubcategoryName` varchar(100) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  PRIMARY KEY (`SubcategoryID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`SubcategoryID`, `SubcategoryName`, `CategoryID`) VALUES
(1, 'Samsung', 1),
(2, 'Apple', 1),
(3, 'Fara fir', 2),
(4, 'Incarcator', 3),
(5, 'Cu fir', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `surname`) VALUES
(1, 'test1@test.com', 'test', 'Ion', 'Craciun'),
(2, 'aisofache10@gmail.com', '123', 'Isofache', 'Alexandru');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brand` (`BrandID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SubcategoryID`) REFERENCES `subcategory` (`SubcategoryID`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
