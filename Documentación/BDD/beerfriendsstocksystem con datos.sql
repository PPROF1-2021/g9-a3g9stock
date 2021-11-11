-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2021 a las 15:06:23
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `beerfriendsstocksystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cerveza`
--

CREATE TABLE `cerveza` (
  `idCerveza` int(11) NOT NULL,
  `nombreCerveza` varchar(45) DEFAULT NULL,
  `idTipoCerveza` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precioUnitario` double DEFAULT NULL,
  `idLoteCoccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cerveza`
--

INSERT INTO `cerveza` (`idCerveza`, `nombreCerveza`, `idTipoCerveza`, `stock`, `precioUnitario`, `idLoteCoccion`) VALUES
(1, 'J Dorada', 1, 36, 280, 1),
(2, 'J Pale', 7, 105, 295, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `apellido`, `telefono`, `direccion`, `email`) VALUES
(1, 'Juan Carlos', 'Juarez', '3514879852', 'Caseros 897, Cordoba', 'juancajuarez@gmail.com'),
(2, 'Josefina', 'Tecera', '3546879542', 'San Martin 125, Villa del Dique', 'josetecera89@gmail.com'),
(3, 'Pablo', 'Estebanez', '3576478954', '9 de julio 354', 'pablopicante@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coccion`
--

CREATE TABLE `coccion` (
  `idLoteCoccion` int(11) NOT NULL,
  `densidadDespuesLavado` int(11) DEFAULT NULL,
  `densidadAntesFermentar` int(11) DEFAULT NULL,
  `DensidadAntesEnvasar` int(11) DEFAULT NULL,
  `volumenObjetivo` int(11) DEFAULT NULL,
  `AguaParaMacerado` int(11) DEFAULT NULL,
  `tiempoMaceradoEnMinutos` int(11) DEFAULT NULL,
  `temperaturaMacerado` varchar(45) DEFAULT NULL,
  `temperaturaLavado` int(11) DEFAULT NULL,
  `litrosAguaLavado` double DEFAULT NULL,
  `tiempococcion` varchar(45) DEFAULT NULL,
  `fechaDeCocción` datetime DEFAULT NULL,
  `litrosResultantes` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coccion`
--

INSERT INTO `coccion` (`idLoteCoccion`, `densidadDespuesLavado`, `densidadAntesFermentar`, `DensidadAntesEnvasar`, `volumenObjetivo`, `AguaParaMacerado`, `tiempoMaceradoEnMinutos`, `temperaturaMacerado`, `temperaturaLavado`, `litrosAguaLavado`, `tiempococcion`, `fechaDeCocción`, `litrosResultantes`) VALUES
(1, 1040, 1044, 1006, 20, 17, 90, '68-65', 75, 12, '65', '2021-11-04 14:47:12', 17),
(2, 1050, 1045, 1010, 20, 18, 85, '65', 73, 10, '75', '2021-11-02 10:47:12', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coccionxmateriaprima`
--

CREATE TABLE `coccionxmateriaprima` (
  `idLoteCoccion` int(11) NOT NULL,
  `idMateriaPrima` int(11) NOT NULL,
  `cantidadUsada` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coccionxmateriaprima`
--

INSERT INTO `coccionxmateriaprima` (`idLoteCoccion`, `idMateriaPrima`, `cantidadUsada`) VALUES
(1, 2, 11),
(1, 5, 450),
(2, 3, 500),
(2, 5, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalledepedido`
--

CREATE TABLE `detalledepedido` (
  `idPedido` int(11) NOT NULL,
  `idCerveza` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalledepedido`
--

INSERT INTO `detalledepedido` (`idPedido`, `idCerveza`, `cantidad`) VALUES
(1, 1, 6),
(1, 2, 6),
(2, 2, 12),
(3, 1, 12),
(3, 2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima`
--

CREATE TABLE `materiaprima` (
  `idMateriaPrima` int(11) NOT NULL,
  `nombreComercial` varchar(45) DEFAULT NULL,
  `tipoInsumo` varchar(45) DEFAULT NULL,
  `cantidadXEmpaque` int(11) DEFAULT NULL,
  `unidadDeMedida` varchar(15) DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materiaprima`
--

INSERT INTO `materiaprima` (`idMateriaPrima`, `nombreComercial`, `tipoInsumo`, `cantidadXEmpaque`, `unidadDeMedida`, `Marca`) VALUES
(1, 'Turbo Hidromiel Dulce - Sweet Mead', 'Levadura', 12, 'Gramos', 'PATAGONIAN YEAST'),
(2, 'Levadura K 97', 'Levadura', 12, 'Gramos', 'Fermentis'),
(3, 'Levadura S-23 Lager', 'Levadura', 12, 'Gramos', 'Fermentis'),
(4, 'Levadura S-23 Lager', 'Levadura', 500, 'Gramos', 'Levadura S-23 tipo Lager'),
(5, 'Azúcar Cervecera', 'Azúcar', 1, 'Kg', 'Todo Cerveza'),
(6, 'Azúcar de Maíz', 'Azúcar', 1, 'kg', 'Todo Cerveza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprimaxproveedor`
--

CREATE TABLE `materiaprimaxproveedor` (
  `idProveedor` int(11) NOT NULL,
  `idMateriaPrima` int(11) NOT NULL,
  `cantidadStock` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materiaprimaxproveedor`
--

INSERT INTO `materiaprimaxproveedor` (`idProveedor`, `idMateriaPrima`, `cantidadStock`) VALUES
(1, 5, '5'),
(1, 6, '5'),
(2, 1, '2'),
(4, 2, '3'),
(4, 4, '10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `fechaPedido` date DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `estadoPedido` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `fechaPedido`, `idUsuario`, `estadoPedido`) VALUES
(1, 2, '2021-11-03', 1, 0),
(2, 3, '2021-11-04', 2, 0),
(3, 1, '2021-11-01', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `Telefono1` varchar(15) NOT NULL,
  `Mail` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `Telefono1`, `Mail`, `nombre`, `direccion`) VALUES
(1, '1146789521', 'pedidos@cervezasargentinas.com', 'Cervezas Argentinas', 'Av de mayo 522, Buenos Aires'),
(2, '3516427854', 'infoypedidos@gmail.com', 'Antonio Carrizo', 'Isabel la Catolica 1535'),
(3, '3525487960', 'lacervezeria@hotmail.com', 'Cristina', 'Holstenboer Perez'),
(4, '3518974562', '-', 'Carina Acuña insumos', 'Marcelo T. de Alvear 368');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocerveza`
--

CREATE TABLE `tipocerveza` (
  `idTipoCerveza` int(11) NOT NULL,
  `tipoCerveza` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipocerveza`
--

INSERT INTO `tipocerveza` (`idTipoCerveza`, `tipoCerveza`) VALUES
(1, 'Rubia'),
(2, 'Roja'),
(3, 'Negra'),
(4, 'Ipa'),
(5, 'Apa'),
(6, 'Pilsen'),
(7, 'Pale Lager'),
(8, 'Bock'),
(9, 'Stout'),
(10, 'Porter');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idtipoUsuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcionPermisos` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idtipoUsuario`, `nombre`, `descripcionPermisos`) VALUES
(1, 'Administrador', 'Acceso a todas las funciones'),
(2, 'Usuario Materias Primas', 'Acceso a Stock de MP, Pedidos, Proveedores'),
(3, 'Usuario Productos Elaborados', 'Acceso a stock de productos elaborados, recet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `idTipoUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombre`, `apellido`, `telefono`, `fechaNacimiento`, `nombreUsuario`, `contrasenia`, `idTipoUsuario`) VALUES
(1, 'Pedro', 'Quiñones', '3516456452', '1991-11-01', 'PedroQuiniones', '123456', 2),
(2, 'Maria Antonieta', 'De las Nieves', '3519876541', '1978-06-15', 'manieves', '123456', 1),
(3, 'Pedro', 'Aznar', '3584569871', '1965-01-05', 'PedroAznar', '123456', 3),
(4, 'Mercedes', 'Granda', '3546494117', '1993-05-10', 'MercedesGranda', '123456', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cerveza`
--
ALTER TABLE `cerveza`
  ADD PRIMARY KEY (`idCerveza`),
  ADD KEY `idTipoCerveza_idx` (`idTipoCerveza`),
  ADD KEY `idCoccion_idx` (`idLoteCoccion`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `coccion`
--
ALTER TABLE `coccion`
  ADD PRIMARY KEY (`idLoteCoccion`);

--
-- Indices de la tabla `coccionxmateriaprima`
--
ALTER TABLE `coccionxmateriaprima`
  ADD PRIMARY KEY (`idLoteCoccion`,`idMateriaPrima`),
  ADD KEY `idMateriaPrima_idx` (`idMateriaPrima`);

--
-- Indices de la tabla `detalledepedido`
--
ALTER TABLE `detalledepedido`
  ADD PRIMARY KEY (`idPedido`,`idCerveza`),
  ADD KEY `idCerveza_idx` (`idCerveza`);

--
-- Indices de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  ADD PRIMARY KEY (`idMateriaPrima`);

--
-- Indices de la tabla `materiaprimaxproveedor`
--
ALTER TABLE `materiaprimaxproveedor`
  ADD PRIMARY KEY (`idProveedor`,`idMateriaPrima`),
  ADD KEY `idMateriaPrimaP` (`idMateriaPrima`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente_idx` (`idCliente`),
  ADD KEY `idUsuario_idx` (`idUsuario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `tipocerveza`
--
ALTER TABLE `tipocerveza`
  ADD PRIMARY KEY (`idTipoCerveza`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idtipoUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTipoUsuario_idx` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cerveza`
--
ALTER TABLE `cerveza`
  MODIFY `idCerveza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `coccion`
--
ALTER TABLE `coccion`
  MODIFY `idLoteCoccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  MODIFY `idMateriaPrima` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipocerveza`
--
ALTER TABLE `tipocerveza`
  MODIFY `idTipoCerveza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idtipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cerveza`
--
ALTER TABLE `cerveza`
  ADD CONSTRAINT `idCoccion` FOREIGN KEY (`idLoteCoccion`) REFERENCES `coccion` (`idLoteCoccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idTipoCerveza` FOREIGN KEY (`idTipoCerveza`) REFERENCES `tipocerveza` (`idTipoCerveza`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `coccionxmateriaprima`
--
ALTER TABLE `coccionxmateriaprima`
  ADD CONSTRAINT `idLoteCoccionC` FOREIGN KEY (`idLoteCoccion`) REFERENCES `coccion` (`idLoteCoccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idMateriaPrimaC` FOREIGN KEY (`idMateriaPrima`) REFERENCES `materiaprima` (`idMateriaPrima`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalledepedido`
--
ALTER TABLE `detalledepedido`
  ADD CONSTRAINT `idCervezaP` FOREIGN KEY (`idCerveza`) REFERENCES `cerveza` (`idCerveza`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idPedidoC` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materiaprimaxproveedor`
--
ALTER TABLE `materiaprimaxproveedor`
  ADD CONSTRAINT `idMateriaPrimaP` FOREIGN KEY (`idMateriaPrima`) REFERENCES `materiaprima` (`idMateriaPrima`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idProveedorMP` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `idTipoUsuario` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idtipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
