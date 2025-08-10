-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2021 a las 17:00:49
-- Versión del servidor: 8.0.25
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id` int NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Id`, `Descripcion`, `Estado`) VALUES
(1, 'TODAS LAS CATEGORIAS', '1'),
(2, 'SUPLEMENTOS INYECTABLES', '1'),
(3, 'HORMONALES', '1'),
(4, 'NUTRICIONALES', '1'),
(5, 'OTROS', '1'),
(6, 'DESCRIPTIVA', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Celular` varchar(9) NOT NULL,
  `Mensaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`Id`, `Nombre`, `Correo`, `Celular`, `Mensaje`) VALUES
(1, 'Luis Zegarra', 'lzegarra@utp.edu.pe', '987541254', 'mensaje importante'),
(2, 'Luis Zegarra', 'lzegarra@utp.edu.pe', '987541254', 'mensaje importante'),
(3, 'Luis Zegarra', 'lzegarra@utp.edu.pe', '987541254', 'mensaje importante'),
(4, 'Luis Zegarra', 'lzegarra@utp.edu.pe', '987541254', 'mensaje importante'),
(5, 'Milagros Manrique Lariel', 'mmanrique@utp.edu.pe', '987541268', 'Necesito tener información de los medicamentos.'),
(6, 'Carla Rodriguez Morales', 'crodriguez@utp.edu.pe', '951265487', 'Necesito mayor información de contacto.'),
(7, 'Lady', 'lady@utp.edu.pe', '979432465', 'Mensaje importante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id` int NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Detalle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estado` varchar(1) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Informacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Precio` double NOT NULL,
  `Stock` int NOT NULL,
  `Categoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Id`, `Descripcion`, `Detalle`, `Estado`, `Imagen`, `Informacion`, `Precio`, `Stock`, `Categoria`) VALUES
(1, 'Ampicilina', 'Ampicilina Veterinaria Oral es un antibiótico betalactámico que pertenece al grupo de las aminopenicilinas. Es indicado para perros y gatos en el tratamiento de infecciones respiratorias, genitourinarias y gastrointestinales, además de otras ubicadas o sistémicas causadas por pasteurella multocida, Proteus mirabilis, Clostridium tetani, Escherichia coli, Klebsiella pneumoniae y Streptococcus zooepidemicus.', '1', 'producto1.png', 'Ampicilina es un antibiótico bactericida, semi – sintético, derivado del núcleo fundamental de las penicilinas, el ácido 6-amino-penicilánico. La ampicilina ejerce su efecto bactericida que impide la síntesis de la pared celular bacteriana y rompe su integridad. La ampicilina anhidra es bien absorbida por el tracto gastrointestinal. Después de la absorción, el volumen de distribución de la ampicilina es de aproximadamente 0,27 L/kg en perros y 0,12 L/kg en gatos; el promedio de vida biológica es de aproximadamente 0,8 hora en perros y 0,2 hora en gatos.', 45, 50, 4),
(2, 'Algivet', 'Algivet Veterinaria Oral es un antibiótico betalactámico que pertenece al grupo de las aminopenicilinas. Es indicado para perros y gatos en el tratamiento de infecciones respiratorias, genitourinarias y gastrointestinales, además de otras ubicadas o sistémicas causadas por pasteurella multocida, Proteus mirabilis, Clostridium tetani, Escherichia coli, Klebsiella pneumoniae y Streptococcus zooepidemicus.', '1', 'producto3.png', 'Algivet es un antibiótico bactericida, semi – sintético, derivado del núcleo fundamental de las penicilinas, el ácido 6-amino-penicilánico. La ampicilina ejerce su efecto bactericida que impide la síntesis de la pared celular bacteriana y rompe su integridad. La ampicilina anhidra es bien absorbida por el tracto gastrointestinal. Después de la absorción, el volumen de distribución de la ampicilina es de aproximadamente 0,27 L/kg en perros y 0,12 L/kg en gatos; el promedio de vida biológica es de aproximadamente 0,8 hora en perros y 0,2 hora en gatos.', 25, 15, 3),
(3, 'Tergenvet', 'Tergenvet Veterinaria Oral es un antibiótico betalactámico que pertenece al grupo de las aminopenicilinas. Es indicado para perros y gatos en el tratamiento de infecciones respiratorias, genitourinarias y gastrointestinales, además de otras ubicadas o sistémicas causadas por pasteurella multocida, Proteus mirabilis, Clostridium tetani, Escherichia coli, Klebsiella pneumoniae y Streptococcus zooepidemicus.', '1', 'producto2.png', 'Tergenvet es un antibiótico bactericida, semi – sintético, derivado del núcleo fundamental de las penicilinas, el ácido 6-amino-penicilánico. La ampicilina ejerce su efecto bactericida que impide la síntesis de la pared celular bacteriana y rompe su integridad. La ampicilina anhidra es bien absorbida por el tracto gastrointestinal. Después de la absorción, el volumen de distribución de la ampicilina es de aproximadamente 0,27 L/kg en perros y 0,12 L/kg en gatos; el promedio de vida biológica es de aproximadamente 0,8 hora en perros y 0,2 hora en gatos.', 52, 12, 2),
(4, 'Pencilline', 'Pencilline Veterinaria Oral es un antibiótico betalactámico que pertenece al grupo de las aminopenicilinas. Es indicado para perros y gatos en el tratamiento de infecciones respiratorias, genitourinarias y gastrointestinales, además de otras ubicadas o sistémicas causadas por pasteurella multocida, Proteus mirabilis, Clostridium tetani, Escherichia coli, Klebsiella pneumoniae y Streptococcus zooepidemicus.', '1', 'producto4.jpg', 'Pencilline es un antibiótico bactericida, semi – sintético, derivado del núcleo fundamental de las penicilinas, el ácido 6-amino-penicilánico. La ampicilina ejerce su efecto bactericida que impide la síntesis de la pared celular bacteriana y rompe su integridad. La ampicilina anhidra es bien absorbida por el tracto gastrointestinal. Después de la absorción, el volumen de distribución de la ampicilina es de aproximadamente 0,27 L/kg en perros y 0,12 L/kg en gatos; el promedio de vida biológica es de aproximadamente 0,8 hora en perros y 0,2 hora en gatos.', 50, 25, 2),
(5, 'Baytrill', 'Baytrill Veterinaria Oral es un antibiótico betalactámico que pertenece al grupo de las aminopenicilinas. Es indicado para perros y gatos en el tratamiento de infecciones respiratorias, genitourinarias y gastrointestinales, además de otras ubicadas o sistémicas causadas por pasteurella multocida, Proteus mirabilis, Clostridium tetani, Escherichia coli, Klebsiella pneumoniae y Streptococcus zooepidemicus.', '1', 'producto5.png', 'Baytrill es un antibiótico bactericida, semi – sintético, derivado del núcleo fundamental de las penicilinas, el ácido 6-amino-penicilánico. La ampicilina ejerce su efecto bactericida que impide la síntesis de la pared celular bacteriana y rompe su integridad. La ampicilina anhidra es bien absorbida por el tracto gastrointestinal. Después de la absorción, el volumen de distribución de la ampicilina es de aproximadamente 0,27 L/kg en perros y 0,12 L/kg en gatos; el promedio de vida biológica es de aproximadamente 0,8 hora en perros y 0,2 hora en gatos.', 62, 120, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Appaterno` varchar(100) NOT NULL,
  `Apmaterno` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `Appaterno`, `Apmaterno`, `Email`, `Direccion`, `Telefono`, `Contrasena`) VALUES
(1, 'Miguel', 'Caceres', 'Orozco', 'mcaceres@utp.edu.pe', 'Mz K Lt 15', '954154254', '123456'),
(2, 'Olinda', 'Gutierrez', 'Lopez', 'ogutierrez@utp.edu.pe', 'Mz L Lt 15', '945421542', '123456'),
(3, 'Luis', 'Zegarra', 'Alvarez', 'lzegarra@utp.edu.pe', 'Mz L Lt 16', '958452541', '123456'),
(4, 'Carlos', 'Medina', 'Portocarrero', 'cmedina@utp.edu.pe', 'Mz Z Lt 16', '987541254', '147258'),
(5, 'Carlos', 'Zevallos', 'Alcantara', 'calcantara@gmail.com', 'Mz O Li 17', '987541254', '123456'),
(6, 'Carlos', 'Zevallos', 'Alcantara', 'calcantara@gmail.com', 'Mz O Li 17', '1234567894', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20210605073310_MigracionInicial', '5.0.6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
