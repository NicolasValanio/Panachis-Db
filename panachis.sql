-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 14:24:26
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panachis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcliente`
--

CREATE TABLE `tblcliente` (
  `id_cliente` varchar(5) NOT NULL,
  `Nom_cliente` varchar(30) NOT NULL,
  `apell_cliente` varchar(40) NOT NULL,
  `CC_cliente` varchar(12) NOT NULL,
  `cumple_cliente` date NOT NULL,
  `direc_cliente` varchar(40) NOT NULL,
  `tel_cliente` varchar(10) NOT NULL,
  `adress_cliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcliente`
--

INSERT INTO `tblcliente` (`id_cliente`, `Nom_cliente`, `apell_cliente`, `CC_cliente`, `cumple_cliente`, `direc_cliente`, `tel_cliente`, `adress_cliente`) VALUES
('001', 'Enzo', 'Escobar Lopez', '1003555212', '1995-05-10', 'Cll 2 #4-12', '3165552212', 'ejemplo15@gmail.com'),
('002', 'Jorge', 'Betin Gomez', '1057910012', '2001-10-05', 'Cll 21 #13-52', '3205552212', 'ejemplo16@gmail.com'),
('003', 'Sergio', 'Sepulveda Castillo', '1044445212', '1980-01-08', 'Cll 9 #25-36', '3164952212', 'ejemplo17@gmail.com'),
('004', 'Carmen', 'Portillo Lopez', '635128556', '1997-03-11', 'Cll 30A #10-12', '3165599942', 'ejemplo18@gmail.com'),
('005', 'Nubia', 'Cortez Aguilar', '63555441', '1975-09-22', 'Cll 21 #31-10', '3165468412', 'ejemplo19@gmail.com'),
('006', 'Liliana', 'Duarte Baldivieso', '100254612', '1985-06-20', 'Cll 10 #5-12', '319942212', 'ejemplo20@gmail.com'),
('007', 'Raquel', 'Lozada Malaver', '1054199212', '1998-02-26', 'Cll 1 #9-10', '3155205221', 'ejemplo21@gmail.com'),
('008', 'Juliana', 'Villamizar Murillo', '1003524612', '2002-11-08', 'Cll 32 #32-12', '3257752212', 'ejemplo22@gmail.com'),
('009', 'Bryan', 'Mora Meza', '1004153415', '1999-12-24', 'Cll 9 #51-10', '3162514312', 'ejemplo23@gmail.com'),
('010', 'Alix', 'Ardila Dominguez', '1057914612', '1980-10-10', 'Cll 21 #31-10', '3165555012', 'ejemplo24@gmail.com'),
('011', 'Gladys', 'Russi Rodriguez', '1003111462', '1970-10-25', 'Cll 1 #12-12', '3165599712', 'ejemplo25@gmail.com'),
('012', 'Andres', 'Palacios Carrillo', '1003556692', '1982-02-19', 'Cll 105 #25-12', '3166663912', 'ejemplo26@gmail.com'),
('013', 'Fabian', 'Remolina Alvarez', '10035457711', '1979-08-22', 'Cll 100 #25-13', '3209552212', 'ejemplo27@gmail.com'),
('014', 'Cielo', 'Valentina Arenas', '1001234567', '2003-01-22', 'Cll 101 #2-12', '3165523456', 'ejemplo28@gmail.com'),
('015', 'Jesus', 'Martinez Rey', '1098805777', '1975-05-25', 'Cll 103A #22-12', '3215552212', 'ejemplo29@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcocineros`
--

CREATE TABLE `tblcocineros` (
  `id_cocineros` varchar(4) NOT NULL,
  `nom_cocineros` varchar(30) NOT NULL,
  `apllidos_cocineros` varchar(40) NOT NULL,
  `CC_cocineros` varchar(12) NOT NULL,
  `fecha_nac_coci` date NOT NULL,
  `tel_coci` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcocineros`
--

INSERT INTO `tblcocineros` (`id_cocineros`, `nom_cocineros`, `apllidos_cocineros`, `CC_cocineros`, `fecha_nac_coci`, `tel_coci`) VALUES
('1020', 'Sergio', 'Triana Rojas', '1098805234', '2001-03-21', '3158639570'),
('1022', 'Valentina', 'Galeano Barbosa', '1003545788', '2000-12-10', '3204557818'),
('2215', 'Juan', 'Giraldo Perez', '622625544', '1987-04-21', '3155877885'),
('4500', 'Miguel', 'Mantilla Barajas', '645501544', '1980-05-01', '3204594378'),
('4510', 'Daniel', 'Figueroa Barajas', '1003525676', '2002-09-14', '3204554970'),
('6210', 'Keidy', 'Roncallo Garcia', '1003566478', '2003-02-10', '3204558888'),
('6216', 'Andres', 'Cadena Diaz', '13876655', '1985-02-25', '3204532165');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetallefactura`
--

CREATE TABLE `tbldetallefactura` (
  `id_det_fac` varchar(4) NOT NULL,
  `det_id_fac` varchar(4) NOT NULL,
  `det_id_cocinero` varchar(4) NOT NULL,
  `det_nom_plato` varchar(40) NOT NULL,
  `det_pagar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetallefactura`
--

INSERT INTO `tbldetallefactura` (`id_det_fac`, `det_id_fac`, `det_id_cocinero`, `det_nom_plato`, `det_pagar`) VALUES
('01', '211', '1020', 'Pulpo a la parrilla', 35000),
('02', '205', '4510', 'Papas Bravas', 20000),
('03', '230', '6216', 'Lomo Chimichurri', 52000),
('04', '225', '6210', 'Langostinos Salteados', 35000),
('05', '221', '2215', 'Julianas en lomo de res', 25000),
('06', '232', '1020', 'Lomo y Pasta', 55000),
('07', '212', '4500', 'Crema de Camarones', 15000),
('08', '240', '6216', 'Papas Bravas', 20000),
('09', '210', '6210', 'Julianas en lomo de res', 25000),
('10', '213', '4510', 'Lomo Chimichurri', 52000),
('11', '214', '4500', 'Lomo y Pasta', 55000),
('12', '215', '6216', 'Langostinos Salteados', 35000),
('13', '216', '1020', 'Lomo Chimichurri', 52000),
('14', '217', '4510', 'Pulpo a la parrilla', 35000),
('15', '218', '1020', 'Crema de Camarones', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblenvios`
--

CREATE TABLE `tblenvios` (
  `id_envio` int(11) NOT NULL,
  `en_id_fac` varchar(4) NOT NULL,
  `Nom_repartidor` varchar(30) NOT NULL,
  `apell_repartidor` varchar(40) NOT NULL,
  `CC_repartidor` varchar(12) NOT NULL,
  `tel_repartidor` varchar(10) NOT NULL,
  `direc_cliente` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblenvios`
--

INSERT INTO `tblenvios` (`id_envio`, `en_id_fac`, `Nom_repartidor`, `apell_repartidor`, `CC_repartidor`, `tel_repartidor`, `direc_cliente`) VALUES
(1, '100', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 21 #13-52'),
(2, '101', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 9 #51-10'),
(3, '102', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 10 #13-52'),
(4, '103', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 35 #13-52'),
(5, '104', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 101 #13-52'),
(6, '105', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 20 #13-52'),
(7, '106', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 22 #13-52'),
(8, '107', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 41 #13-52'),
(9, '108', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 10 #13-52'),
(10, '109', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 15 #13-52'),
(11, '110', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 23 #13-52'),
(12, '111', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 11 #13-52'),
(13, '112', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 33 #13-52'),
(14, '113', 'Jorge', 'Velasquez', '1003505411', '3114505236', 'Cll 32 #13-52'),
(15, '114', 'Miguel', 'Ortiz', '100415153636', '3114505237', 'Cll 25 #13-52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfactura`
--

CREATE TABLE `tblfactura` (
  `id_fac` varchar(4) NOT NULL,
  `facidplato` varchar(5) NOT NULL,
  `fac_fecha` date NOT NULL,
  `fac_id_cliente` varchar(5) NOT NULL,
  `fac_id_mesero` varchar(4) NOT NULL,
  `fac_id_mesa` varchar(2) DEFAULT NULL,
  `fac_nom_plato` varchar(40) NOT NULL,
  `total_pagar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblfactura`
--

INSERT INTO `tblfactura` (`id_fac`, `facidplato`, `fac_fecha`, `fac_id_cliente`, `fac_id_mesero`, `fac_id_mesa`, `fac_nom_plato`, `total_pagar`) VALUES
('205', '104', '2022-11-10', '002', '185', '01', 'Papas Bravas', 20000),
('210', '1020', '2022-11-10', '007', '131', '06', 'Julianas en lomo de res', 25000),
('211', '101', '2022-11-10', '004', '123', '03', 'Pulpo a la parrilla', 35000),
('212', '1018', '2022-11-10', '005', '185', '03', 'Crema de Camarones', 15000),
('213', '109', '2022-11-10', '008', '147', '01', 'Lomo Chimichurri', 52000),
('214', '106', '2022-11-10', '009', '185', '13', 'Lomo y pasta', 55000),
('215', '103', '2022-11-10', '010', '221', '06', 'Langostinos Salteados', 35000),
('216', '109', '2022-11-10', '012', '185', '05', 'Lomo Chimichurri', 52000),
('217', '101', '2022-11-10', '014', '131', '02', 'Pulpo a la parrilla', 35000),
('218', '1018', '2022-11-10', '015', '123', '03', 'Crema de Camarones', 15000),
('221', '1020', '2022-11-10', '001', '185', '01', 'Julianas en lomo de res', 25000),
('225', '103', '2022-11-10', '013', '147', '07', 'Langostinos Salteados', 35000),
('230', '109', '2022-11-10', '011', '131', '13', 'Lomo Chimichurri', 52000),
('232', '106', '2022-11-10', '003', '221', '02', 'Lomo y Pasta', 55000),
('240', '104', '2022-11-10', '006', '123', '01', 'Papas Bravas', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmenu`
--

CREATE TABLE `tblmenu` (
  `id_plato` varchar(5) NOT NULL,
  `Nom_plato` varchar(40) NOT NULL,
  `precio_plato` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmenu`
--

INSERT INTO `tblmenu` (`id_plato`, `Nom_plato`, `precio_plato`) VALUES
('101', 'Pulpo a la parrilla', 35000),
('1010', 'Bandiola de Cerdo', 28000),
('1011', 'Di Mare', 35000),
('1012', 'Al pesto', 32000),
('1013', 'Pasta Bolognesa', 22000),
('1014', 'La Peruana', 28000),
('1015', 'Tres Quesos', 18000),
('1016', 'Contraste de mar', 32000),
('1017', 'Zarzuela de mariscos', 55000),
('1018', 'Crema de Camarones', 15000),
('1019', 'Crema de tomate', 15000),
('102', 'Cocktail de camarones', 25000),
('1020', 'Julianas en lomo de res', 25000),
('103', 'Langostinos Salteados', 35000),
('104', 'Papas Bravas', 20000),
('105', 'Lomo Salteado', 40000),
('106', 'Lomo y Pasta', 55000),
('107', 'Lomo Marcella', 55000),
('108', 'Costillas de Cerdo', 35000),
('109', 'Lomo Chimichurri', 52000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmesa`
--

CREATE TABLE `tblmesa` (
  `id_mesa` varchar(2) NOT NULL,
  `max_comensales` varchar(2) NOT NULL,
  `ubicacion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmesa`
--

INSERT INTO `tblmesa` (`id_mesa`, `max_comensales`, `ubicacion`) VALUES
('01', '2', 'Zona norte'),
('02', '2', 'Zona norte'),
('03', '2', 'Zona norte'),
('04', '4', 'Zona Central'),
('05', '4', 'Zona Central'),
('06', '4', 'Zona Central'),
('07', '4', 'Zona Central'),
('08', '6', 'Zona Sur'),
('09', '6', 'Zona Sur'),
('10', '12', 'Zona Oriente'),
('11', '12', 'Zona Occidente'),
('12', '6', 'Patio'),
('13', '4', 'Patio'),
('14', '6', 'Patio'),
('15', '12', 'Terraza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmeseros`
--

CREATE TABLE `tblmeseros` (
  `id_mesero` varchar(4) NOT NULL,
  `nom_mesero` varchar(20) NOT NULL,
  `apell_mesero` varchar(40) NOT NULL,
  `cc_mesero` varchar(12) NOT NULL,
  `tel_mesero` varchar(10) NOT NULL,
  `mail_mesero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmeseros`
--

INSERT INTO `tblmeseros` (`id_mesero`, `nom_mesero`, `apell_mesero`, `cc_mesero`, `tel_mesero`, `mail_mesero`) VALUES
('057', 'Lucia', 'Mora Galvis', '1391555446', '3554655223', 'ejemplo10@gmail.com'),
('104', 'Daniel', 'Garrido Cuevas', '107330432', '3161234510', 'ejemplo2@gmail.com'),
('105', 'Arturo', 'Perez Carrasco', '109637832', '3167736900', 'ejemplo3@gmail.com'),
('111', 'Anderson', 'Trillos Cordoba', '191444432', '3161299990', 'ejemplo5@gmail.com'),
('112', 'Luisa', 'Morgado Garrido', '1004562212', '316254438', 'ejemplo7@gmail.com'),
('113', 'Juan', 'Ochoa Petro', '1352225446', '3221777923', 'ejemplo12@gmail.com'),
('123', 'Daniela', 'Basto Giraldo', '1003525637', '3155845621', 'ejemplo6@gmail.com'),
('124', 'Pablo', 'Lopez Cano', '100425432', '3162542210', 'ejemplo1@gmail.com'),
('127', 'Alvaro', 'Uribe Velez', '1356661746', '3227705223', 'ejemplo14@gmail.com'),
('131', 'Camila', 'Valenzuela Ascanio', '1098805636', '3164478588', 'ejemplo10@hmail.com'),
('135', 'Sandra', 'Nu?ez Galvis', '1354255446', '3221455223', 'ejemplo9@gmail.com'),
('147', 'Gustavo', 'Petro Urrego', '1300355446', '3221991223', 'ejemplo13@gmail.com'),
('154', 'Carlos', 'Mantilla Villamil', '1073334752', '3167771500', 'ejemplo4@gmail.com'),
('185', 'Miguel', 'G?mez Calderon', '1444521238', '355212245', 'ejemplo8@gmail.com'),
('221', 'Santiago', 'Villamizar Mora', '1300005446', '3221111223', 'ejemplo11@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsalarios`
--

CREATE TABLE `tblsalarios` (
  `id_salario` float NOT NULL,
  `sal_id_mesero` varchar(4) DEFAULT NULL,
  `sal_id_cocinero` varchar(4) DEFAULT NULL,
  `sal_base` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblsalarios`
--

INSERT INTO `tblsalarios` (`id_salario`, `sal_id_mesero`, `sal_id_cocinero`, `sal_base`) VALUES
(1, '057', NULL, 1100000),
(2, '104', NULL, 1100000),
(3, '105', NULL, 1100000),
(4, '111', NULL, 1100000),
(5, '112', NULL, 1100000),
(6, '113', NULL, 1100000),
(7, '123', NULL, 1100000),
(8, '124', NULL, 1100000),
(9, '127', NULL, 1100000),
(10, '131', NULL, 1100000),
(11, '135', NULL, 1100000),
(12, '147', NULL, 1100000),
(13, '154', NULL, 1100000),
(14, '185', NULL, 1100000),
(15, '221', NULL, 1100000),
(16, NULL, '1020', 1800000),
(17, NULL, '1022', 1800000),
(18, NULL, '2215', 1800000),
(19, NULL, '4500', 1800000),
(20, NULL, '4510', 1800000),
(21, NULL, '6210', 1800000),
(22, NULL, '6216', 1800000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `id_usuario` varchar(4) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contrasena` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`id_usuario`, `Usuario`, `Contrasena`, `rol`) VALUES
('01', 'Admin1', '1005373507', 'Administrador'),
('02', 'Admin2', '1234', 'Administrador'),
('03', 'Cajero1', '321', 'Cajero'),
('04', 'Cajero2', '0000', 'Cajero'),
('05', 'Gerencia', '1005373507', 'Gerente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `UNcccliente` (`CC_cliente`),
  ADD UNIQUE KEY `UNtelcliente` (`tel_cliente`),
  ADD UNIQUE KEY `UNmailcliente` (`adress_cliente`);

--
-- Indices de la tabla `tblcocineros`
--
ALTER TABLE `tblcocineros`
  ADD PRIMARY KEY (`id_cocineros`),
  ADD UNIQUE KEY `UNcccocineros` (`CC_cocineros`),
  ADD UNIQUE KEY `UNtelcocineros` (`tel_coci`);

--
-- Indices de la tabla `tbldetallefactura`
--
ALTER TABLE `tbldetallefactura`
  ADD PRIMARY KEY (`id_det_fac`),
  ADD KEY `FKdetidfactura` (`det_id_fac`),
  ADD KEY `FLdetidcocinero` (`det_id_cocinero`),
  ADD KEY `FKdetnomplato` (`det_nom_plato`);

--
-- Indices de la tabla `tblenvios`
--
ALTER TABLE `tblenvios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `tblfactura`
--
ALTER TABLE `tblfactura`
  ADD PRIMARY KEY (`id_fac`),
  ADD KEY `FKfacidplato` (`facidplato`),
  ADD KEY `FKidcliente` (`fac_id_cliente`),
  ADD KEY `FKidmesero` (`fac_id_mesero`),
  ADD KEY `FKidmesa` (`fac_id_mesa`),
  ADD KEY `FKnombreplato` (`fac_nom_plato`);

--
-- Indices de la tabla `tblmenu`
--
ALTER TABLE `tblmenu`
  ADD PRIMARY KEY (`id_plato`),
  ADD UNIQUE KEY `UNnombreplato` (`Nom_plato`);

--
-- Indices de la tabla `tblmesa`
--
ALTER TABLE `tblmesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `tblmeseros`
--
ALTER TABLE `tblmeseros`
  ADD PRIMARY KEY (`id_mesero`),
  ADD UNIQUE KEY `UNccmesero` (`cc_mesero`),
  ADD UNIQUE KEY `UNtelmesero` (`tel_mesero`),
  ADD UNIQUE KEY `UNmailmesero` (`mail_mesero`);

--
-- Indices de la tabla `tblsalarios`
--
ALTER TABLE `tblsalarios`
  ADD PRIMARY KEY (`id_salario`),
  ADD KEY `FKidmeseros` (`sal_id_mesero`),
  ADD KEY `FKidcocinero` (`sal_id_cocinero`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetallefactura`
--
ALTER TABLE `tbldetallefactura`
  ADD CONSTRAINT `FKdetidfactura` FOREIGN KEY (`det_id_fac`) REFERENCES `tblfactura` (`id_fac`),
  ADD CONSTRAINT `FKdetnomplato` FOREIGN KEY (`det_nom_plato`) REFERENCES `tblmenu` (`Nom_plato`),
  ADD CONSTRAINT `FLdetidcocinero` FOREIGN KEY (`det_id_cocinero`) REFERENCES `tblcocineros` (`id_cocineros`);

--
-- Filtros para la tabla `tblfactura`
--
ALTER TABLE `tblfactura`
  ADD CONSTRAINT `FKfacidplato` FOREIGN KEY (`facidplato`) REFERENCES `tblmenu` (`id_plato`),
  ADD CONSTRAINT `FKidcliente` FOREIGN KEY (`fac_id_cliente`) REFERENCES `tblcliente` (`id_cliente`),
  ADD CONSTRAINT `FKidmesa` FOREIGN KEY (`fac_id_mesa`) REFERENCES `tblmesa` (`id_mesa`),
  ADD CONSTRAINT `FKidmesero` FOREIGN KEY (`fac_id_mesero`) REFERENCES `tblmeseros` (`id_mesero`),
  ADD CONSTRAINT `FKnombreplato` FOREIGN KEY (`fac_nom_plato`) REFERENCES `tblmenu` (`Nom_plato`);

--
-- Filtros para la tabla `tblsalarios`
--
ALTER TABLE `tblsalarios`
  ADD CONSTRAINT `FKidcocinero` FOREIGN KEY (`sal_id_cocinero`) REFERENCES `tblcocineros` (`id_cocineros`),
  ADD CONSTRAINT `FKidmeseros` FOREIGN KEY (`sal_id_mesero`) REFERENCES `tblmeseros` (`id_mesero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
