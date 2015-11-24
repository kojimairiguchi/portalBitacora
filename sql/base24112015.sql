-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2015 a las 15:33:28
-- Versión del servidor: 5.5.45
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bitacora_test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chklist_dias`
--

CREATE TABLE IF NOT EXISTS `chklist_dias` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `descripcion` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chklist_list_main`
--

CREATE TABLE IF NOT EXISTS `chklist_list_main` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(45) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `horario` time NOT NULL DEFAULT '00:00:00',
  `L` tinyint(1) NOT NULL DEFAULT '0',
  `M` tinyint(1) NOT NULL DEFAULT '0',
  `N` tinyint(1) NOT NULL DEFAULT '0',
  `J` tinyint(1) NOT NULL DEFAULT '0',
  `V` tinyint(1) NOT NULL DEFAULT '0',
  `S` tinyint(1) NOT NULL DEFAULT '0',
  `D` tinyint(1) NOT NULL DEFAULT '0',
  `P` tinyint(1) NOT NULL DEFAULT '0',
  `US` tinyint(1) NOT NULL DEFAULT '0',
  `X` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `chklist_list_main`
--

INSERT INTO `chklist_list_main` (`id`, `nombre`, `descripcion`, `horario`, `L`, `M`, `N`, `J`, `V`, `S`, `D`, `P`, `US`, `X`) VALUES
(1, 'Libros de Siniestros Generales', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '00:05:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 'Inventario de Siniestros Vida', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '00:10:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 'Inventario de Siniestros Cnlife', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '00:15:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(4, 'Respaldo TSM Cela (dmp)', 'Ejecutar Respaldo TSM /DMP de Servidor Pcon118', '01:40:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(5, 'Ejecución de Carga SharePoint Colectivo', 'Revisar ejecución de Carga SharePoint de Archivos de Colectivos.', '12:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(6, 'VJ002P', 'Generar y Enviar Reportes de Proceso VJ002P', '17:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(7, 'Cotizador - CNS/CNL', 'Ejecutar Procesos En  Pcope3 - Pcope4', '18:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(8, 'Validador - CNS/CNL', 'Ejecutar Procesos En  Pcact2 - Pcgte3', '18:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(9, 'Carga PIN Incremental PIN', 'Ejecutar DTS Carga PIN Incremental en DataStage', '19:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(10, 'Cuotas Impagas Impacu', 'Ejecutar Script en Eridanus Luego Generar Reporte en Huasco', '02:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(11, 'Export Scorpius', 'Ejecutar Exports de COTIZA y SRVOW en Scorpius', '02:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(12, 'Carga PIN Peoplesoft2', 'Ejecutar DTS Carga PIN Peoplesoft en DataStage', '20:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(13, 'Export Choapa', 'Ejecutar Exports de Base de Datos en Servidor AIX', '20:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(14, 'Export Pcon003', 'Export de Base de Datos en Servidor AIX', '20:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(15, 'Export Cela', 'Export de Base de Datos en Servidor AIX', '20:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(16, 'Bajar Sistema (Aplicaciones Visual Time)', 'Bajar Servicios en Servidores Visual Time', '20:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(17, 'Pareadores', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '20:40:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(18, 'Bacinver', 'Pcon105', '21:05:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(19, 'Saldaciones Col800', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '21:10:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(20, 'Saldaciones Col801', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '21:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(21, 'Renovaciones Masivas Generales', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '22:10:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(22, 'Respaldo TSM Eridanus', 'Ejecutar Respaldo TSM Eridanus', '22:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(23, 'Rezagos Diarios Col837', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '22:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(24, 'Respaldo Choapa', 'Ejecutar Respaldo TSM de Servidor Choapa', '23:20:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(25, 'Respaldo Cucao', 'Ejecutar Respaldo TSM de Servidor Cucao', '23:45:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(26, 'Respaldo Pcon002', 'Ejecutar Respaldo TSM de Servidor Pcon002', '23:45:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(27, 'Respaldo Pcon003', 'Ejecutar Respaldo TSM de Servidor Pcon003', '23:45:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(28, 'Libros Timbrados', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '03:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(29, 'Respaldo Scorpius', 'Ejecutar Respaldo TSM de Scorpius', '04:20:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(30, 'Sometimientos', 'Ejecutar Sometimeintos en Bases Acces Según Parametros', '04:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(31, 'Col1000', 'Ejecutar Proceso en Visual Time Según Claves Enviadas', '04:50:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(32, 'Respaldo DataStage', 'Verificar Correcta Finalizacion de Respaldo y Tiempo ', '05:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(33, 'Actualización de Empleados', 'Ejecutar Actualizacion en Servidor Almendro', '05:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(34, 'Respaldos en Ejecución', 'Enviuar Correo con Ruta de Pauta de Respaldos', '06:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(35, 'Envió de Bitácora Diaria.', 'Envio de Correo con Link de Bitacora Diaria', '06:55:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(36, 'Subir Sistema (Aplicaciones Visual Time)', 'Activar Servicios en Servidores Visual Time', '07:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(37, 'Reinicio (Ara - Peumo)', 'Reinicio de Servidores y Subida de Servicios', '07:40:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(38, 'Envió de respaldos con error al 4133', 'Enviar Correo de Respaldos con Error a 4133', '08:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(39, 'Envió estado Diario', 'Enviar Correo con Ruta de Estado Diario', '08:00:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(40, 'VJ002P', 'Eridanus - Servidores Time', '08:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(41, 'Envió Informe Matinal', 'Enviar Correo con Informacion de Incidentes', '08:30:00', 1, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(42, 'Revisión ETL programados', 'Generar y Enviar Estado de Ejecucion de ETL Programados', '10:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(43, 'Log Hrprod ', 'Enviar Reportes de Lascar y Datastage', '11:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(44, 'Reporte de Disponibilidad', 'Extraer Informacion - Traspaso a Archivo y Luego Envio', '19:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(45, 'Revisión ETL programados', 'Generar y Enviar Estado de Ejecucion de ETL Programados', '20:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(46, 'Revision Host V-7000', 'Revision de Host V-7000 El Bosque y CDLV', '21:15:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(47, 'Estado Storage V-7000', 'Revision de Storage V-7000 El Bosque y CDLV', '21:20:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(48, 'Impresión de compaginador Masivo', 'Realizar Revision de Archivos PDF Vida e Impresión de Polizas de Generales', '23:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(49, 'Retoma de Respaldos TSM', 'Realizar Retoma de Respaldos Fallidos - Llenar Planilla', '05:00:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(50, 'DTS Cargar Fondos Mutuos', 'Ejecutar DTS Carga Fondos Mutuos en Pcon105', '05:00:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(51, 'Respaldo Datastage', 'Realizar Revision de Respaldo Datage', '06:00:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(52, 'Replicadores Diarios', 'Ejecutar y Verificar Correcta Finalizacion de Replicadores', '06:20:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(53, 'Reinicio Álamo - Pegasus', 'Reinicio de Servidores Álamo y Pegasus', '06:30:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(54, 'Revision Host V-7000', 'Revision de Host V-7000 El Bosque y CDLV', '08:10:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(55, 'Carga Valor Cuotas', 'Rescatar Archivos de FTP L.V y Realizar Carga en Visual Time Según Procedimiento', '08:20:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(56, 'Revicion de factor (Reparto)', 'Si existe reparto se debe Generar la carga de factor y la Skey de reparto de dividendo para la noche.', '08:25:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(57, 'Revision Servidor Nice', 'Chequear Correcto Funcionamiento de Servidor', '09:40:00', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(58, 'Reinicio Lascar', 'Reinicio Lascar', '00:30:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(59, 'Reinicio CNS Forum', 'Reiniciar Servidor En Horario Solicitado', '11:40:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(60, 'Respaldo Impresoras', 'Ejecutar Respaldos de Servidores de Impresión con PRINTMIG', '18:00:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(61, 'Respaldo DCON002_NEW', 'Respaldar Servidor en Cinta', '22:30:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(62, 'Carga PIN Ejecución Total', 'Ejecutar DTS Carga PIN Proyecto CargaPin', '03:30:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(63, 'Pruebas de Internet', '', '05:50:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(64, 'Pruebas de Enlaces', '', '06:10:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(65, 'Carga PIN Post Carga', 'Ejecutar DTS Carga Pin Post Carga', '08:30:00', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(66, 'Reinicio de Amon', 'Reinicio Amon', '01:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(67, 'Mantención de Replicadores', 'Ejecutar Mantencion de Replicadores en Eridanus', '13:30:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(68, 'Eliminar Export PCON224a', 'Eliminación de los Export de Base de Datos del PCON224a, previa confirmación de respaldo', '22:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(69, 'Test Acos', 'Ejecutar Test de Conexión En Peumo Previo a Ejecucion de Compaginador Masivo', '22:20:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(70, 'Compaginador Masivo', 'Ejecutar Compaginador Masivo Para Generales - Revisar Generacion de Log y Archivo de Impresión', '22:21:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(71, 'Compaginador Masivo', 'Ejecutar Compaginador Masivo Para Vida - Revisar Generacion de Log y Archivos PDFS', '22:21:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(72, 'Revisión ETL programados', 'Generar y Enviar Estado de Ejecucion de ETL Programados', '15:30:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(73, 'Respaldo Diario Desarrollo y Cambio de Cintas', 'Ejecutar y Validar Respaldos de Desarrollo', '20:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(74, 'ETL Cartera Pendiente', 'Ejecutar y Verificar ETL Seq_main Proyecto Vtime en Datastage', '03:05:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(75, 'Convid y Congen', 'Copia de Archivos a Sitio FTP SERVIPAG', '04:00:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(76, 'Estado Storage V-7000', 'Revision de Storage V-7000 El Bosque y CDLV', '08:15:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 1),
(77, 'VIL7002', 'Generar y Ejecutar Procesos de Saldos e Inversiones', '09:30:00', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(78, 'Reserva Matemática Cnlife', 'Ejecutar Reserva Matematica Según Parametros', '01:00:00', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(79, 'Pedido Pipax', 'Solicitud de Cajas a Pipax', '11:00:00', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(80, 'Limpieza de base Access de cotizadores', 'Reemplazar Base Acces en Ruta Según Manual', '16:30:00', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(81, 'Respaldo Semanal Desarrollo y Cambio de Cinta', 'Ejecutar y Validar Respaldos de Desarrollo', '22:00:00', 0, 0, 0, 0, 1, 1, 1, 0, 0, 0),
(82, 'VIL7002', 'Generar y Ejecutar Procesos de Saldos e Inversiones', '23:00:00', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(83, 'Reinicio Pcon113', 'Reinicio de Servidores PCON113', '06:35:00', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chklist_list_reg`
--

CREATE TABLE IF NOT EXISTS `chklist_list_reg` (
  `id` int(10) unsigned NOT NULL,
  `marca` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `objeto` int(10) unsigned NOT NULL DEFAULT '0',
  `usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `estado` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

CREATE TABLE IF NOT EXISTS `lista` (
  `id` int(10) unsigned NOT NULL,
  `marca` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha` date NOT NULL,
  `hora_inicio` varchar(5) NOT NULL DEFAULT '',
  `hora_termino` varchar(5) NOT NULL DEFAULT '',
  `proceso` int(10) unsigned NOT NULL DEFAULT '0',
  `usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `estatus` int(10) unsigned NOT NULL DEFAULT '0',
  `turno` int(10) unsigned NOT NULL DEFAULT '0',
  `titulo` varchar(45) NOT NULL DEFAULT '',
  `descripcion` text NOT NULL,
  `bitacora` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lista`
--

INSERT INTO `lista` (`id`, `marca`, `fecha`, `hora_inicio`, `hora_termino`, `proceso`, `usuario`, `estatus`, `turno`, `titulo`, `descripcion`, `bitacora`) VALUES
(1, '2015-11-23 15:11:01', '2015-03-25', '07:37', '07:37', 1, 1, 1, 2, 'esto es una prueba', 'estamos probando la cosa', 1),
(5, '2015-11-24 13:27:59', '0000-00-00', '06:30', 'EE:EE', 1, 2, 6, 2, 'fdssfdfsd', 'fasdfasdf', 1),
(6, '2015-11-23 15:11:01', '0000-00-00', '19:37', '20:40', 1, 2, 3, 1, 'dssdfsdf', 'fsdfs', 1),
(7, '2015-11-24 13:27:56', '2015-10-27', '19:35', 'EE:EE', 1, 2, 6, 2, 'entrada de pruebas', 'viendo si la wquery esta bien', 1),
(8, '2015-11-24 11:03:40', '2015-10-27', '19:35', 'EE:EE', 2, 2, 6, 1, 'dsb', 'fsdfsdff', 1),
(9, '2015-11-23 15:11:01', '2015-10-27', '19:35', '19:40', 3, 2, 3, 1, 'dsbs', 'fsdfsdffdd', 1),
(10, '2015-11-23 15:11:01', '2015-10-27', '19:37', '19:35', 2, 2, 6, 1, 'prueba pendientes', 'pendiente de ejecucion', 1),
(11, '2015-11-23 15:11:01', '2015-10-27', '20:05', '20:02', 1, 2, 1, 1, 'test', 'se realiza revision ', 1),
(12, '2015-11-23 15:11:01', '2015-10-27', '20:05', '20:02', 1, 2, 1, 1, 'test', 'se realiza revision denuevo', 1),
(13, '2015-11-23 15:11:01', '2015-11-20', '12:25', '05:25', 1, 2, 3, 1, 'asdas', 'asdas', 1),
(15, '2015-11-23 15:11:01', '2015-11-20', '12:00', '01:00', 1, 2, 1, 1, 'fghg', 'fhgh', 1),
(16, '2015-11-23 15:11:01', '2015-11-20', '00:05', '00:25', 7, 2, 6, 3, 'test', 'pruebas', 1),
(17, '2015-11-23 15:11:01', '2015-11-20', '18:30', '00:00', 2, 2, 1, 1, 'ddd', 'sadfsd', 1),
(18, '2015-11-23 15:11:01', '2015-11-21', '07:30', '18:25', 2, 2, 3, 1, 'ss', 'sss', 1),
(19, '2015-11-23 15:11:01', '2015-11-21', '06:25', '07:35', 1, 2, 1, 1, 'test', '123', 1),
(20, '2015-11-24 13:27:54', '2015-11-23', '06:30', 'EE:EE', 1, 2, 6, 1, 'fff', 'dfdf', 1),
(21, '2015-11-23 18:18:40', '2015-11-23', '18:25', '18:35', 1, 2, 1, 2, 'sss', 'asdas', 10000),
(22, '2015-11-24 13:27:52', '2015-11-24', '18:30', '07:35', 2, 2, 6, 1, 'fff', '131', 10002),
(23, '2015-11-24 10:39:39', '2015-11-24', '08:40', '09:45', 2, 2, 1, 1, 'dfdgdfg', 'dfgdfg', 10002),
(24, '2015-11-24 11:00:51', '2015-11-24', '09:55', '18:30', 2, 2, 3, 1, 'addqa', 'adsdasd', 10002),
(25, '2015-11-24 13:37:13', '2015-11-24', '10:35', '10:37', 3, 2, 3, 1, 'Carga de PAC Vida', 'Se ejecuta EjecuciÃ³n de ETL - Carga de PAC Vida - (RA4 05)', 10002),
(26, '2015-11-24 13:27:27', '2015-11-24', '10:14', '10:27', 2, 2, 1, 1, 'Pareador Especial', 'Se crean Skey de Pareador DÃ­a 24/11/2015', 10002),
(27, '2015-11-24 13:32:53', '2015-11-24', '10:31', '10:31', 11, 2, 4, 1, 'CPD', 'Marcelo NuÃ±ez informa correcion de hora en servidor DataStage', 10002),
(28, '2015-11-24 13:44:01', '2015-11-24', '10:41', '10:42', 2, 2, 1, 1, 'Reparto de Dividendos', 'Se ejecuta DTS pendiente de Reparto de dividendos correspondiente a dia 20-11-2015 sin problemas', 10002),
(29, '2015-11-24 13:45:51', '2015-11-24', '09:47', '09:47', 4, 2, 5, 1, 'Interfaz', 'Solange Baigorria solicita realizar Solicitud EjecuciÃ³n Interfaz Remuneraciones Noviembre 2015 a las 04:00hrs', 10002),
(30, '2015-11-24 14:17:21', '2015-11-24', '09:00', '09:56', 4, 2, 1, 1, 'ERPXCash', 'Se ejecuta proceso Ejecutar ERPXCash.exe, solicitado por Joel Acevedo, finalizando OK', 10002),
(31, '2015-11-24 14:24:14', '2015-11-24', '09:05', '09:13', 11, 2, 1, 1, 'CNSMAIL01', 'Se solicita a S&A generar Ticket respecto a estado de respaldo "PENDING" en CNSLMAIL01', 10002),
(32, '2015-11-24 14:37:53', '2015-11-24', '09:40', '09:57', 4, 2, 1, 1, 'Carga TAD', 'Se realiza carga Datos Master Base 23/11/2015', 10002),
(33, '2015-11-24 14:51:24', '2015-11-24', '11:41', '11:51', 2, 2, 1, 1, 'AprobaciÃ³n CAL1005 Vida', 'Se ejecuta proceso de Aprob. Aut. de prop. de emis  Vida. Finalizando ok\r\n', 10002),
(34, '2015-11-24 15:08:19', '2015-11-24', '12:00', '12:08', 4, 2, 1, 1, 'Carga AFA', 'Se realiza carga de archivos BancoChile segÃºn pauta, se envian correos informativos\r\n', 10002),
(35, '2015-11-24 15:59:50', '2015-11-24', '12:55', '12:57', 1, 2, 1, 1, 'SharePoint', 'Se realiza revision de carga de archivos a SharePoint en Pcon104', 10002),
(36, '2015-11-24 16:17:45', '2015-11-24', '13:05', '13:07', 4, 2, 1, 1, 'HRPROD', 'Se ejecuta Pauta y envÃ­o de Log HRPROD\r\n', 10002),
(37, '2015-11-24 16:43:00', '2015-11-24', '13:40', '13:45', 2, 2, 1, 1, 'AprobaciÃ³n CAL1005 Vida', 'Se ejecuta proceso de Aprob. Aut. de prop. de emis  Vida. Finalizando ok\r\n', 10002),
(39, '2015-11-24 18:10:08', '2015-11-24', '15:04', '15:09', 10, 13, 3, 2, ' ERPXCash.exe', 'Se ejecuta  ERPXCash.exe solicitado por Joel Acevedo', 10002),
(41, '2015-11-24 18:27:26', '2015-11-24', '15:05', '15:09', 2, 3, 1, 1, 'Cancelacion Masiva', 'Se ejecuta Proceso de CancelaciÃƒÂ³n Masivo 24-11-2015 Falabella - Los Parques', 10002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_procesos`
--

CREATE TABLE IF NOT EXISTS `lista_procesos` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lista_procesos`
--

INSERT INTO `lista_procesos` (`id`, `descripcion`) VALUES
(1, 'Monitoreo'),
(2, 'Visual Time'),
(3, 'ETL - DataStage'),
(4, 'Carga de Archivos'),
(5, 'Respaldos'),
(6, 'Impresion'),
(7, 'Reinicios'),
(8, 'Cotizador - Validador'),
(9, 'Turno'),
(10, 'Varios'),
(11, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_status`
--

CREATE TABLE IF NOT EXISTS `lista_status` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lista_status`
--

INSERT INTO `lista_status` (`id`, `valor`, `descripcion`) VALUES
(1, 'ejecutado', 'proceso ejecutado y finalizado en el mismo tu'),
(2, 'en ejecucion', 'proceso que pasa de un turno a otros'),
(3, 'finalizado', 'proceso de otro turno finalizado'),
(4, 'inmediato', 'proceso de ejecucion y finalizacion inmediata'),
(5, 'Pendiente', 'Entradas pendientes de ejecucion'),
(6, 'eliminada', 'Entrada eliminada, no disponible en historial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_bitacora`
--

CREATE TABLE IF NOT EXISTS `meta_bitacora` (
  `id` int(10) unsigned NOT NULL,
  `estampa` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `apertura` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cierre` datetime DEFAULT NULL,
  `usr_apertura` int(11) NOT NULL DEFAULT '0',
  `usr_cierre` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `meta_bitacora`
--

INSERT INTO `meta_bitacora` (`id`, `estampa`, `apertura`, `cierre`, `usr_apertura`, `usr_cierre`) VALUES
(10000, '2015-11-23 18:12:48', '2015-11-23 15:12:48', '2015-11-24 07:10:17', 2, 2),
(10001, '2015-11-24 10:10:30', '2015-11-24 07:10:30', '2015-11-24 07:12:28', 2, 2),
(10002, '2015-11-24 10:13:52', '2015-11-24 07:13:52', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_notas`
--

CREATE TABLE IF NOT EXISTS `meta_notas` (
  `id` int(10) unsigned NOT NULL,
  `nota_id` int(10) unsigned NOT NULL DEFAULT '0',
  `original_descripcion` text,
  `original_estado` int(10) unsigned NOT NULL DEFAULT '0',
  `original_importancia` int(10) unsigned NOT NULL DEFAULT '0',
  `original_usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `nuevo_descripcion` text,
  `nuevo_estado` int(10) unsigned NOT NULL DEFAULT '0',
  `nuevo_importancia` int(10) unsigned NOT NULL DEFAULT '0',
  `nuevo_usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `stampa` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `meta_notas`
--

INSERT INTO `meta_notas` (`id`, `nota_id`, `original_descripcion`, `original_estado`, `original_importancia`, `original_usuario`, `nuevo_descripcion`, `nuevo_estado`, `nuevo_importancia`, `nuevo_usuario`, `stampa`) VALUES
(1, 10001, '', 0, 0, 0, NULL, 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_status`
--

CREATE TABLE IF NOT EXISTS `meta_status` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `id` int(10) unsigned NOT NULL,
  `stampa` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_crea` date NOT NULL DEFAULT '0000-00-00',
  `fecha_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `estado` int(10) unsigned NOT NULL DEFAULT '0',
  `importancia` int(10) unsigned NOT NULL DEFAULT '0',
  `usuario` int(10) unsigned NOT NULL DEFAULT '0',
  `descripcion` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10023 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `stampa`, `fecha_crea`, `fecha_edit`, `estado`, `importancia`, `usuario`, `descripcion`) VALUES
(10001, '2015-03-12 01:18:14', '2015-03-11', '2015-10-23 20:35:01', 2, 1, 2, 'Esta es solo una noticia de prueba'),
(10002, '2015-03-19 10:23:05', '2015-03-19', '2015-11-24 10:47:34', 2, 1, 2, 'Aviso Normal'),
(10003, '2015-03-19 10:23:05', '2015-03-19', '2015-11-24 10:47:34', 2, 4, 2, 'Aviso Importante'),
(10004, '2015-03-19 10:24:58', '2015-03-19', '2015-11-04 09:20:42', 2, 3, 2, 'notificacion '),
(10005, '2015-03-21 07:45:00', '2015-03-20', '2015-10-28 19:46:43', 2, 1, 2, 'Noticiaprue'),
(10006, '2015-07-09 15:00:34', '2015-07-09', '2015-10-23 20:35:01', 2, 2, 2, 'insercion de pruebas nuevamente'),
(10007, '2015-07-09 15:01:13', '2015-07-09', '2015-10-23 20:35:01', 2, 2, 2, 'insercion de pruebas nuevamente'),
(10008, '2015-10-21 22:45:02', '2015-10-21', '2015-10-23 20:35:01', 2, 1, 2, ''),
(10009, '2015-10-21 22:52:07', '2015-10-21', '2015-10-23 18:07:39', 2, 1, 2, ''),
(10010, '2015-10-21 22:53:07', '2015-10-21', '2015-10-23 18:07:39', 2, 1, 2, 'asdasdasda'),
(10011, '2015-10-21 22:53:22', '2015-10-21', '2015-10-23 18:07:39', 2, 1, 2, 'nota de prueba'),
(10012, '2015-10-22 00:08:47', '2015-10-21', '2015-11-24 10:47:34', 2, 3, 2, 'nota editada con exito'),
(10013, '2015-10-26 19:50:07', '2015-10-26', '2015-11-21 07:17:52', 2, 2, 2, 'a partir de ahora las notas siempre como predeterminado van a tener el esatuts de vigente y tipo normal'),
(10014, '2015-10-27 22:37:07', '2015-10-27', '2015-10-27 19:37:15', 2, 1, 2, 'sdfdsd'),
(10015, '2015-11-19 03:06:31', '2015-11-19', '2015-11-21 01:11:44', 2, 1, 2, 'esta nota nuevamente de pruebas'),
(10016, '2015-11-19 03:11:04', '2015-11-19', '2015-11-19 00:12:14', 2, 1, 2, 'dasdas'),
(10017, '2015-11-19 03:12:05', '2015-11-19', '2015-11-19 00:12:14', 2, 1, 2, 'dasdas'),
(10018, '2015-11-19 03:13:04', '2015-11-19', '2015-11-24 10:47:34', 2, 2, 2, 'f'),
(10019, '2015-11-20 01:44:46', '2015-11-19', '2015-11-21 04:26:20', 2, 1, 2, 'adsdasd'),
(10020, '2015-11-24 13:47:57', '2015-11-24', '2015-11-24 11:12:44', 2, 1, 2, 'Rodrigo Ojeda informa que maÃ±ana SE realizaran trabajos en piso 1 y 3 por lo que debera dar acceso a racks de dichos pisos'),
(10021, '2015-11-24 13:48:14', '2015-11-24', '2015-11-24 10:48:14', 1, 3, 2, 'Mauricio Maturana informa que se realizo el apagado del servidor TSM antiguo (Pcon128)'),
(10022, '2015-11-24 13:48:31', '2015-11-24', '2015-11-24 10:48:31', 3, 2, 2, 'Radius Controler presenta sonido en ventilador mayor al normal se informa a Cristian Aliaga quien se encuentra revisando. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_nivel`
--

CREATE TABLE IF NOT EXISTS `notas_nivel` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `descipcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_nivel`
--

INSERT INTO `notas_nivel` (`id`, `valor`, `descipcion`) VALUES
(1, 'normal', 'notas normales de procedimientos y solicitude'),
(2, 'importante', 'solicitudes importantes'),
(3, 'aviso', 'aviso sin incidencia en los procesos futuros'),
(4, 'noticia', 'notificaciones de movimientos y estructuras e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_status`
--

CREATE TABLE IF NOT EXISTS `notas_status` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `descipcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notas_status`
--

INSERT INTO `notas_status` (`id`, `valor`, `descipcion`) VALUES
(1, 'vigente', 'nota en ejecucion duracion maxima, dos ciclos'),
(2, 'finalizada', 'nota finalizada, se conserva por historial'),
(3, 'importante', 'nota importante duracion indefinida'),
(4, 'en observacion', 'nota para evaluar por operadores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` int(10) unsigned NOT NULL,
  `titulo` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `valor` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `modificador` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `titulo`, `valor`, `modificador`) VALUES
(1, 'nombreSitio', 'Bitacora Operadores', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fullname` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `level` int(10) unsigned NOT NULL DEFAULT '2'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `fullname`, `email`, `password`, `level`) VALUES
(1, 'usuariop1', 'usuario de prueba', 'procesos.masivos@consorcio.cl', '89c088cb82290563a94ef44ffc7d4d0c', 1),
(2, 'test', 'segundo usuario de pruebas', 'operacpd@consorcio.cl', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(3, 'nmartinez', 'nicolas martinez villarroel', 'nicolas.martinez@consorcio.cl', 'be5059bbb942f9e1fcc0b7daf1f40efe', 2),
(11, 'mbustamante', 'Manuel Bustamante F', 'manuel.bustamante@consorcio.cl', 'd75a5d7fa99eb560a5d4a2b3d7aeae19', 2),
(12, 'nico', 'usuario de pruebas mill', 'nicolas.mart@consorcio.cl', 'e39b419f06905f50a73d31ec4c0083cf', 1),
(13, '8', 'Salvador Maureira Briones', 'salvador.maureira@consorcio.cl', '89c088cb82290563a94ef44ffc7d4d0c', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_nivel`
--

CREATE TABLE IF NOT EXISTS `usuarios_nivel` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `descripcion` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_nivel`
--

INSERT INTO `usuarios_nivel` (`id`, `nombre`, `descripcion`) VALUES
(1, 'administrador', 'administrador de sitio'),
(2, 'operador', 'puede ingresar / editar entradas'),
(3, 'supervisor', 'reservado solo para supervisor de operaciones'),
(4, 'lector', 'usuarios con solo permiso de lectura'),
(5, 'bloqueado', 'sin permisos de ingreso ni lectura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_turnos`
--

CREATE TABLE IF NOT EXISTS `usuarios_turnos` (
  `id` int(10) unsigned NOT NULL,
  `valor` varchar(45) NOT NULL DEFAULT '',
  `hora_entrada` time NOT NULL DEFAULT '00:00:00',
  `hora_salida` time NOT NULL DEFAULT '00:00:00',
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_turnos`
--

INSERT INTO `usuarios_turnos` (`id`, `valor`, `hora_entrada`, `hora_salida`, `descripcion`) VALUES
(1, 'mañana', '07:00:00', '16:00:00', ''),
(2, 'tarde', '13:00:00', '22:00:00', ''),
(3, 'noche', '22:00:00', '07:00:00', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chklist_dias`
--
ALTER TABLE `chklist_dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chklist_list_main`
--
ALTER TABLE `chklist_list_main`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chklist_list_reg`
--
ALTER TABLE `chklist_list_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chklist_list_reg_1` (`objeto`),
  ADD KEY `FK_chklist_list_reg_2` (`usuario`),
  ADD KEY `FK_chklist_list_reg_3` (`estado`);

--
-- Indices de la tabla `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lista_1` (`proceso`),
  ADD KEY `FK_lista_2` (`estatus`),
  ADD KEY `FK_lista_3` (`usuario`),
  ADD KEY `FK_lista_4` (`turno`);

--
-- Indices de la tabla `lista_procesos`
--
ALTER TABLE `lista_procesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_status`
--
ALTER TABLE `lista_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meta_bitacora`
--
ALTER TABLE `meta_bitacora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meta_notas`
--
ALTER TABLE `meta_notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_old_id` (`nota_id`);

--
-- Indices de la tabla `meta_status`
--
ALTER TABLE `meta_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_notas_1` (`importancia`),
  ADD KEY `FK_notas_2` (`estado`),
  ADD KEY `FK_notas_3` (`usuario`);

--
-- Indices de la tabla `notas_nivel`
--
ALTER TABLE `notas_nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas_status`
--
ALTER TABLE `notas_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_1` (`level`);

--
-- Indices de la tabla `usuarios_nivel`
--
ALTER TABLE `usuarios_nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_turnos`
--
ALTER TABLE `usuarios_turnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chklist_dias`
--
ALTER TABLE `chklist_dias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `chklist_list_main`
--
ALTER TABLE `chklist_list_main`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT de la tabla `chklist_list_reg`
--
ALTER TABLE `chklist_list_reg`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lista`
--
ALTER TABLE `lista`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `lista_procesos`
--
ALTER TABLE `lista_procesos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `lista_status`
--
ALTER TABLE `lista_status`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `meta_bitacora`
--
ALTER TABLE `meta_bitacora`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10003;
--
-- AUTO_INCREMENT de la tabla `meta_notas`
--
ALTER TABLE `meta_notas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `meta_status`
--
ALTER TABLE `meta_status`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10023;
--
-- AUTO_INCREMENT de la tabla `notas_nivel`
--
ALTER TABLE `notas_nivel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `notas_status`
--
ALTER TABLE `notas_status`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `usuarios_nivel`
--
ALTER TABLE `usuarios_nivel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuarios_turnos`
--
ALTER TABLE `usuarios_turnos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chklist_list_reg`
--
ALTER TABLE `chklist_list_reg`
  ADD CONSTRAINT `FK_chklist_list_reg_1` FOREIGN KEY (`objeto`) REFERENCES `chklist_list_main` (`id`),
  ADD CONSTRAINT `FK_chklist_list_reg_2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FK_chklist_list_reg_3` FOREIGN KEY (`estado`) REFERENCES `lista_status` (`id`);

--
-- Filtros para la tabla `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `FK_lista_1` FOREIGN KEY (`proceso`) REFERENCES `lista_procesos` (`id`),
  ADD CONSTRAINT `FK_lista_2` FOREIGN KEY (`estatus`) REFERENCES `lista_status` (`id`),
  ADD CONSTRAINT `FK_lista_3` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FK_lista_4` FOREIGN KEY (`turno`) REFERENCES `usuarios_turnos` (`id`);

--
-- Filtros para la tabla `meta_notas`
--
ALTER TABLE `meta_notas`
  ADD CONSTRAINT `fk_old_id` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `FK_notas_1` FOREIGN KEY (`importancia`) REFERENCES `notas_nivel` (`id`),
  ADD CONSTRAINT `FK_notas_2` FOREIGN KEY (`estado`) REFERENCES `notas_status` (`id`),
  ADD CONSTRAINT `FK_notas_3` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_users_1` FOREIGN KEY (`level`) REFERENCES `usuarios_nivel` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
