CREATE SCHEMA IF NOT EXISTS `paseos_turisticos`;
USE `paseos_turisticos`;

CREATE TABLE IF NOT EXISTS `paseos_turisticos`.`paseos_turisticos`(
  `idActividad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `diaHorario` VARCHAR(100) NOT NULL,
  `ubicacion` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `valor` VARCHAR(15) NOT NULL,
  `imagen` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`idActividad`)
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Túneles y Misterio. Un viaje a los orígenes de la ciudad', 
	'Lunes a viernes y domingo 11h', 
	'Defensa 755, San Telmo', 
	'Este complejo es la obra de arqueología más importante de la ciudad. Como resultado de las excavaciones, se recuperaron bajo este edificio y los linderos, restos de los túneles que alguna vez encauzaron un arroyo conocido como el \"Zanjón de Granados\".', 
    '$',
    './img/tuneles.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Recorré el Jardín Botánico', 
	'Sábado, domingo y feriado 10.30 a 15h', 
	'Av. Santa Fe 3951, Palermo', 
	'Visita guiada por el Jardín Botánico y sobre la conservación vegetal, la biodiversidad, la botánica y el paisaje, entre otros. No requiere inscripción previa.', 
    'Gratuito',
    './img/jardinbotanico.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Teatro Colón visita guiada', 
	'Todos los días 11 a 16:45h', 
    'Cerrito 628/ Libertad 621, San Nicolas', 
    'Para los amantes de la música, la ópera, orquestas y los teatros, asistir a un espectáculo en el Teatro Colón es algo imperdible. Prácticamente todos los días hay funciones, desde ballet, orquestas sinfónicas, tango, óperas. Hay funciones en las cuales las entradas son muy económicas y a veces gratis. También se llevan a cabo homenajes y recitales de artistas consagrados.', 
    '$$ y Gratuito',
    './img/teatrocolon.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Recoleta: entre la vida y la muerte', 
	'A coordinar con el prestador', 
	'Antonio Beruti 3338, Palermo', 
	'En este tour descubrirás el tercer cementerio más importante en el mundo después del cementerio Arlington en Washington y del Pierre Lachaise en París. La Iglesia de Recoleta (Iglesia del Pilar) y su convento fueron testigos de los orígenes de este barrio. Actualmente puede visitarse la iglesia, además de realizar una visita al Cementerio de la Recoleta (primer cementerio público de la ciudad).', 
	'$$',
    './img/cementeriorecoleta.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Rosedal de Palermo', 
	'Martes a domingos 9 a 18h', 
	'Av. Libertador y Av. Sarmiento, Palermo', 
	'El parque conserva miles de rosales de cerca de 100 especies de dichas plantas. Además se destacan el lago con su puente, la pérgola, la colección de bustos de poetas, el patio andaluz y el anfiteatro.', 
	'Gratuito',
    './img/rosedal.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Planetario de Buenos Aires', 
	'Lunes, miércoles y viernes 11h, sábados y domingos 10 y 11h', 
	'Avenida Sarmiento y Belisario Roldán, Palermo', 
	'El Planetario invita a descubrir el fascinante mundo de los planetas, las estrellas y las galaxias. Un paseo familiar para aprender de astronomía.', 
	'$ y Gratuito',
    './img/planetario.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Visita nocturna al Palacio Barolo', 
	'Lunes, miércoles a sábados 19 y 20h', 
	'Av de Mayo 1370, Monserrat', 
	'Se recorre el Palacio en un horario privilegiado, cuando los oficinistas van retirándose silenciando sus rutinas cotidianas y el Barolo adquiere una atmósfera surrealista que lo acerca a sus leyendas. Visitá el Palacio Barolo de noche con copa de vino.', 
	'$$',
    './img/palaciobarolo.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Barrio Chino', 
	'Todos los días 9 a 21h', 
	'Arribeños 2100, Belgrano', 
	'A lo largo de la calle se encuentran los diferentes negocios y comercios donde se destacan aquellos que venden productos propios de la gastronomía oriental. También se puede comprar artículos asiáticos.', 
	'Gratuito',
    './img/barriochino.jpg'
);

INSERT INTO `paseos_turisticos`.`paseos_turisticos` (`nombre`, `diaHorario`, `ubicacion`, `descripcion`, `valor`, `imagen`) VALUES (
	'Jardin Japones', 
	'Todos los días 10 a 18.45h', 
	'Av. Casares 2966, Palermo', 
	'El Jardín Japonés representa un típico parque de Japón, con sus lagos, puentes y cascadas. Tiene una gran colección de plantas y árboles. Además funciona un típico restaurante (sushi) y casa de té, en una tradicional pagoda.', 
	'$ y Gratuito',
    './img/jardinjapones.jpg'
);