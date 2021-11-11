-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BeerFriendsStockSystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BeerFriendsStockSystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BeerFriendsStockSystem` DEFAULT CHARACTER SET utf8 ;
USE `BeerFriendsStockSystem` ;

-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Proveedor` (
  `idProveedor` INT NOT NULL AUTO_INCREMENT,
  `Telefono1` INT(15) NOT NULL,
  `Mail` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`idProveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`TipoCerveza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`TipoCerveza` (
  `idTipoCerveza` INT NOT NULL AUTO_INCREMENT,
  `tipoCerveza` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipoCerveza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Coccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Coccion` (
  `idLoteCoccion` INT NOT NULL AUTO_INCREMENT,
  `densidadDespuesLavado` INT NULL,
  `densidadAntesFermentar` INT NULL,
  `DensidadAntesEnvasar` INT NULL,
  `volumenObjetivo` INT NULL,
  `AguaParaMacerado` INT NULL,
  `tiempoMaceradoEnMinutos` INT NULL,
  `temperaturaMacerado` VARCHAR(45) NULL,
  `temperaturaLavado` INT NULL,
  `litrosAguaLavado` DOUBLE NULL,
  `tiempococcion` VARCHAR(45) NULL,
  `fechaDeCocción` DATETIME NULL,
  `litrosResultantes` DOUBLE NULL,
  PRIMARY KEY (`idLoteCoccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Cerveza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Cerveza` (
  `idCerveza` INT NOT NULL AUTO_INCREMENT,
  `nombreCerveza` VARCHAR(45) NULL,
  `idTipoCerveza` INT NULL,
  `stock` INT NULL,
  `precioUnitario` DOUBLE NULL,
  `idLoteCoccion` INT NULL,
  PRIMARY KEY (`idCerveza`),
  INDEX `idTipoCerveza_idx` (`idTipoCerveza` ASC) ,
  INDEX `idCoccion_idx` (`idLoteCoccion` ASC) ,
  CONSTRAINT `idTipoCerveza`
    FOREIGN KEY (`idTipoCerveza`)
    REFERENCES `BeerFriendsStockSystem`.`TipoCerveza` (`idTipoCerveza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCoccion`
    FOREIGN KEY (`idLoteCoccion`)
    REFERENCES `BeerFriendsStockSystem`.`Coccion` (`idLoteCoccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`MateriaPrima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`MateriaPrima` (
  `idMateriaPrima` INT NOT NULL AUTO_INCREMENT,
  `nombreComercial` VARCHAR(45) NULL,
  `tipoInsumo` VARCHAR(45) NULL,
  `cantidadXEmpaque` INT NULL,
  `unidadDeMedida` VARCHAR(15) NULL,
  `Marca` VARCHAR(45) NULL,
  PRIMARY KEY (`idMateriaPrima`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`MateriaPrimaxProveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`MateriaPrimaxProveedor` (
  `idProveedor` INT NOT NULL,
  `idMateriaPrima` INT NOT NULL,
  `cantidadStock` VARCHAR(45) NULL,
  PRIMARY KEY (`idProveedor`, `idMateriaPrima`),
  INDEX `idMateriaPrimaP` (`idMateriaPrima` ASC) ,
  CONSTRAINT `idProveedorMP`
    FOREIGN KEY (`idProveedor`)
    REFERENCES `BeerFriendsStockSystem`.`Proveedor` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idMateriaPrimaP`
    FOREIGN KEY (`idMateriaPrima`)
    REFERENCES `BeerFriendsStockSystem`.`MateriaPrima` (`idMateriaPrima`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`CoccionxMateriaPrima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`CoccionxMateriaPrima` (
  `idLoteCoccion` INT NOT NULL,
  `idMateriaPrima` INT NOT NULL,
  `cantidadUsada` DOUBLE NULL,
  PRIMARY KEY (`idLoteCoccion`, `idMateriaPrima`),
  INDEX `idMateriaPrima_idx` (`idMateriaPrima` ASC) ,
  CONSTRAINT `idLoteCoccionC`
    FOREIGN KEY (`idLoteCoccion`)
    REFERENCES `BeerFriendsStockSystem`.`Coccion` (`idLoteCoccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idMateriaPrimaC`
    FOREIGN KEY (`idMateriaPrima`)
    REFERENCES `BeerFriendsStockSystem`.`MateriaPrima` (`idMateriaPrima`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`tipoUsuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`tipoUsuario` (
  `idtipoUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `descripcionPermisos` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipoUsuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `fechaNacimiento` DATE NULL,
  `nombreUsuario` VARCHAR(45) NOT NULL,
  `contrasenia` VARCHAR(45) NOT NULL,
  `idTipoUsuario` INT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `idTipoUsuario_idx` (`idTipoUsuario` ASC) ,
  CONSTRAINT `idTipoUsuario`
    FOREIGN KEY (`idTipoUsuario`)
    REFERENCES `BeerFriendsStockSystem`.`tipoUsuario` (`idtipoUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NULL,
  `fechaPedido` DATE NULL,
  `idUsuario` INT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `idCliente_idx` (`idCliente` ASC) ,
  INDEX `idUsuario_idx` (`idUsuario` ASC) ,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `BeerFriendsStockSystem`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idUsuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `BeerFriendsStockSystem`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BeerFriendsStockSystem`.`DetalleDePedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BeerFriendsStockSystem`.`DetalleDePedido` (
  `idPedido` INT NOT NULL,
  `idCerveza` INT NOT NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`idPedido`, `idCerveza`),
  INDEX `idCerveza_idx` (`idCerveza` ASC) ,
  CONSTRAINT `idPedidoC`
    FOREIGN KEY (`idPedido`)
    REFERENCES `BeerFriendsStockSystem`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idCervezaP`
    FOREIGN KEY (`idCerveza`)
    REFERENCES `BeerFriendsStockSystem`.`Cerveza` (`idCerveza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
