CREATE DATABASE IF NOT EXISTS `musiclists` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `musiclists`;


CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `usuari` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO `usuarios` (`usuari`, `pass`) VALUES
('admin','admin'),
('pili','isaac'),
('isaac', 'pili');


CREATE TABLE `canciones` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `artista` varchar(100) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO `canciones` (`titulo`, `artista`, `genero`, `url`) VALUES
('El viejo', 'La vela puerca', 'Rock', 'http://cobrar-deudas.com/M9-Isaac/musica/elviejo.mp3'),
('El mejor hotel', 'Andres Calamaro', 'Synthpop', 'http://cobrar-deudas.com/M9-Isaac/musica/elmejorhotel.mp3'),
('El angel de la guarda', 'Albertucho', 'Rock', 'http://cobrar-deudas.com/M9-Isaac/musica/elangeldelaguarda.mp3'),
('Altamira', 'Mark Knopfler', 'OST', 'http://cobrar-deudas.com/M9-Isaac/musica/altamira.mp3'),
('Nubes negras (directo)', 'La M.O.D.A.', 'Folk', 'http://cobrar-deudas.com/M9-Isaac/musica/nubesnegrasdirecto.mp3'),
('Sin documentos', 'Los Rodriguez', 'Rock', 'http://cobrar-deudas.com/M9-Isaac/musica/sindocumentos.mp3'),
('Stylo', 'Gorillaz', 'Indie', 'http://cobrar-deudas.com/M9-Isaac/musica/stylo.mp3');

-- --------------------------------------------------------

CREATE TABLE `listas` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(250) NOT NULL DEFAULT 'Mi lista'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `listas` (`nombre`) VALUES 
('Mi lista'),
('Lista pili'); 

CREATE TABLE `usuario_lista_cancion` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `usuario` int(11) NOT NULL,
  `lista` int(11) NOT NULL,
  `cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


INSERT INTO `usuario_lista_cancion` (`usuario`, `lista`, `cancion`) VALUES
(3, 1, 4),
(3, 1, 2),
(2, 2, 3),
(2, 2, 2);
  
ALTER TABLE `usuario_lista_cancion`
  ADD CONSTRAINT `usuario_lista_cancion_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_lista_cancion_ibfk_2` FOREIGN KEY (`lista`) REFERENCES `listas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_lista_cancion_ibfk_3` FOREIGN KEY (`cancion`) REFERENCES `canciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
