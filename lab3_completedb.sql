drop database if exists hotel_lab3;

create database hotel_lab3;

use hotel_lab3;

create table servicios(
servicio_id INT auto_increment primary key,
nombre VARCHAR(255),
descripcion VARCHAR(255)
);

create table clientes(
cliente_id INT auto_increment primary key,
nombre VARCHAR(255),
email VARCHAR(255)
);

create table hoteles(
hotel_id INT auto_increment primary key,
nombre VARCHAR(255),
direccion VARCHAR(255)
);

create table habitaciones(
habitacion_id INT auto_increment primary key,
numero INT,
hotel_id INT,
foreign key (hotel_id) references hoteles(hotel_id)
);

INSERT INTO servicios (nombre, descripcion) VALUES
('WiFi', 'Conexión inalámbrica a internet'),
('Desayuno', 'Desayuno buffet incluido'),
('Piscina', 'Acceso a la piscina del hotel'),
('Gimnasio', 'Acceso al gimnasio del hotel'),
('Spa', 'Servicios de spa y masajes'),
('Lavandería', 'Servicio de lavandería y planchado'),
('Aparcamiento', 'Aparcamiento gratuito'),
('Traslado al aeropuerto', 'Servicio de traslado al aeropuerto'),
('Bar', 'Acceso al bar del hotel'),
('Restaurante', 'Restaurante con menú internacional'),
('Sala de conferencias', 'Espacio para reuniones y conferencias'),
('Recepción 24 horas', 'Recepción abierta las 24 horas'),
('Servicio de habitaciones', 'Servicio de habitaciones 24 horas'),
('Caja fuerte', 'Caja fuerte en la habitación'),
('Aire acondicionado', 'Aire acondicionado en la habitación'),
('Calefacción', 'Calefacción en la habitación'),
('TV por cable', 'Televisión con canales por cable'),
('Mini bar', 'Mini bar en la habitación'),
('Servicio de niñera', 'Servicio de niñera bajo petición'),
('Acceso para discapacitados', 'Instalaciones accesibles para discapacitados'),
('Bicicletas de cortesía', 'Bicicletas disponibles para los huéspedes'),
('Club infantil', 'Actividades para niños'),
('Sauna', 'Sauna disponible para los huéspedes'),
('Centro de negocios', 'Centro de negocios con acceso a internet'),
('Servicio de despertador', 'Llamadas de despertador disponibles'),
('Sala de juegos', 'Sala de juegos y entretenimiento'),
('Mascotas permitidas', 'Permite mascotas en la habitación'),
('Tienda de regalos', 'Tienda de regalos en el hotel'),
('Terraza', 'Terraza con vistas panorámicas'),
('Servicio de conserjería', 'Conserjería para asistencia y reservas'),
('Cafetería', 'Cafetería con snacks y bebidas'),
('Salón de belleza', 'Servicios de peluquería y belleza'),
('Piscina climatizada', 'Piscina climatizada para todas las estaciones'),
('Campo de golf', 'Acceso a campo de golf cercano'),
('Alquiler de coches', 'Servicio de alquiler de coches disponible');

INSERT INTO clientes (nombre, email) VALUES
('Juan Pérez', 'juan.perez@example.com'),
('María García', 'maria.garcia@example.com'),
('Pedro López', 'pedro.lopez@example.com'),
('Ana Rodríguez', 'ana.rodriguez@example.com'),
('Luis Sánchez', 'luis.sanchez@example.com'),
('Lucía Fernández', 'lucia.fernandez@example.com'),
('Carlos Gómez', 'carlos.gomez@example.com'),
('Laura Martínez', 'laura.martinez@example.com'),
('Jorge Díaz', 'jorge.diaz@example.com'),
('Elena Romero', 'elena.romero@example.com'),
('Miguel Torres', 'miguel.torres@example.com'),
('Sofía Jiménez', 'sofia.jimenez@example.com'),
('Antonio Ruiz', 'antonio.ruiz@example.com'),
('Carmen Morales', 'carmen.morales@example.com'),
('Javier Ortiz', 'javier.ortiz@example.com'),
('Paula Vázquez', 'paula.vazquez@example.com'),
('Manuel Herrera', 'manuel.herrera@example.com'),
('Claudia Castillo', 'claudia.castillo@example.com'),
('Francisco Mendoza', 'francisco.mendoza@example.com'),
('Isabel Ramos', 'isabel.ramos@example.com'),
('Fernando Cruz', 'fernando.cruz@example.com'),
('Teresa Reyes', 'teresa.reyes@example.com'),
('David Núñez', 'david.nunez@example.com'),
('Patricia Delgado', 'patricia.delgado@example.com'),
('Andrés Peña', 'andres.pena@example.com'),
('Marta Herrera', 'marta.herrera@example.com'),
('José Castro', 'jose.castro@example.com'),
('Victoria Guzmán', 'victoria.guzman@example.com'),
('Raúl Silva', 'raul.silva@example.com'),
('Alba Soto', 'alba.soto@example.com'),
('Ricardo Campos', 'ricardo.campos@example.com'),
('Adriana León', 'adriana.leon@example.com'),
('Roberto Gil', 'roberto.gil@example.com'),
('Julia Molina', 'julia.molina@example.com'),
('Sergio Navarro', 'sergio.navarro@example.com');

INSERT INTO hoteles (nombre, direccion) VALUES
('Hotel Paraíso', 'Calle 123, Ciudad A'),
('Hotel Imperial', 'Avenida 456, Ciudad B'),
('Hotel Bella Vista', 'Calle 789, Ciudad C'),
('Hotel Central', 'Avenida 101, Ciudad D'),
('Hotel Sol y Mar', 'Calle 202, Ciudad E'),
('Hotel Luna Llena', 'Avenida 303, Ciudad F'),
('Hotel Las Estrellas', 'Calle 404, Ciudad G'),
('Hotel El Encanto', 'Avenida 505, Ciudad H'),
('Hotel El Refugio', 'Calle 606, Ciudad I'),
('Hotel Maravilla', 'Avenida 707, Ciudad J'),
('Hotel La Paz', 'Calle 808, Ciudad K'),
('Hotel Serenidad', 'Avenida 909, Ciudad L'),
('Hotel Primavera', 'Calle 111, Ciudad M'),
('Hotel Oasis', 'Avenida 222, Ciudad N'),
('Hotel El Mirador', 'Calle 333, Ciudad O'),
('Hotel Armonía', 'Avenida 444, Ciudad P'),
('Hotel Costa Azul', 'Calle 555, Ciudad Q'),
('Hotel Jardín Secreto', 'Avenida 666, Ciudad R'),
('Hotel La Montaña', 'Calle 777, Ciudad S'),
('Hotel Vista al Mar', 'Avenida 888, Ciudad T'),
('Hotel Estrella de Mar', 'Calle 999, Ciudad U'),
('Hotel Puerta del Sol', 'Avenida 1010, Ciudad V'),
('Hotel Laguna', 'Calle 1111, Ciudad W'),
('Hotel El Paraíso', 'Avenida 1212, Ciudad X'),
('Hotel La Luna', 'Calle 1313, Ciudad Y'),
('Hotel La Estancia', 'Avenida 1414, Ciudad Z'),
('Hotel La Cima', 'Calle 1515, Ciudad AA'),
('Hotel El Bosque', 'Avenida 1616, Ciudad BB'),
('Hotel La Isla', 'Calle 1717, Ciudad CC'),
('Hotel La Paloma', 'Avenida 1818, Ciudad DD'),
('Hotel El Faro', 'Calle 1919, Ciudad EE'),
('Hotel Las Olas', 'Avenida 2020, Ciudad FF'),
('Hotel La Marina', 'Calle 2121, Ciudad GG'),
('Hotel La Brisa', 'Avenida 2222, Ciudad HH'),
('Hotel El Horizonte', 'Calle 2323, Ciudad II');

INSERT INTO habitaciones (numero, hotel_id) VALUES
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(101, 5),
(102, 5),
(103, 5),
(104, 5),
(101, 6),
(102, 6),
(103, 6),
(104, 6),
(101, 7),
(102, 7),
(103, 7),
(104, 7),
(101, 8),
(102, 8),
(103, 8),
(104, 8),
(101, 9),
(102, 9),
(103, 9);

create table reservas(
reserva_id INT auto_increment primary key,
cliente_id INT,
habitacion_id INT,
fecha_inicio DATE,
fecha_fin DATE,
fecha_checkin DATE,
fecha_checkout DATE,
servicio_1 VARCHAR(255),
servicio_2 VARCHAR(255),
servicio_3 VARCHAR(255),
servicio_4 VARCHAR(255),
servicio_5 VARCHAR(255),
foreign key (cliente_id) references clientes(cliente_id),
foreign key (habitacion_id) references habitaciones(habitacion_id)
);

INSERT INTO reservas (cliente_id, habitacion_id, fecha_inicio, fecha_fin, fecha_checkin, fecha_checkout, servicio_1, servicio_2, servicio_3, servicio_4, servicio_5) VALUES
(1, 1, '2023-01-01', '2023-01-05', '2023-01-01', '2023-01-05', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(2, 2, '2023-02-10', '2023-02-15', '2023-02-10', '2023-02-15', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(3, 3, '2023-03-01', '2023-03-07', '2023-03-01', '2023-03-07', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(4, 4, '2023-04-15', '2023-04-20', '2023-04-15', '2023-04-20', 'Calefacción', 'TV por cable', 'Mini bar', 'Servicio de niñera', 'Acceso para discapacitados'),
(5, 5, '2023-05-05', '2023-05-10', '2023-05-05', '2023-05-10', 'Bicicletas de cortesía', 'Club infantil', 'Sauna', 'Centro de negocios', 'Servicio de despertador'),
(6, 6, '2023-06-01', '2023-06-07', '2023-06-01', '2023-06-07', 'Sala de juegos', 'Mascotas permitidas', 'Tienda de regalos', 'Terraza', 'Servicio de conserjería'),
(7, 7, '2023-07-15', '2023-07-20', '2023-07-15', '2023-07-20', 'Cafetería', 'Salón de belleza', 'Piscina climatizada', 'Campo de golf', 'Alquiler de coches'),
(8, 8, '2023-08-01', '2023-08-05', '2023-08-01', '2023-08-05', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(9, 9, '2023-09-10', '2023-09-15', '2023-09-10', '2023-09-15', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(10, 10, '2023-10-01', '2023-10-07', '2023-10-01', '2023-10-07', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(11, 11, '2023-11-15', '2023-11-20', '2023-11-15', '2023-11-20', 'Calefacción', 'TV por cable', 'Mini bar', 'Servicio de niñera', 'Acceso para discapacitados'),
(12, 12, '2023-12-05', '2023-12-10', '2023-12-05', '2023-12-10', 'Bicicletas de cortesía', 'Club infantil', 'Sauna', 'Centro de negocios', 'Servicio de despertador'),
(13, 13, '2024-01-01', '2024-01-05', '2024-01-01', '2024-01-05', 'Sala de juegos', 'Mascotas permitidas', 'Tienda de regalos', 'Terraza', 'Servicio de conserjería'),
(14, 14, '2024-02-10', '2024-02-15', '2024-02-10', '2024-02-15', 'Cafetería', 'Salón de belleza', 'Piscina climatizada', 'Campo de golf', 'Alquiler de coches'),
(15, 15, '2024-03-01', '2024-03-07', '2024-03-01', '2024-03-07', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(16, 16, '2024-04-15', '2024-04-20', '2024-04-15', '2024-04-20', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(17, 17, '2024-05-05', '2024-05-10', '2024-05-05', '2024-05-10', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(18, 18, '2024-06-01', '2024-06-07', '2024-06-01', '2024-06-07', 'Calefacción', 'TV por cable', 'Mini bar', 'Servicio de niñera', 'Acceso para discapacitados'),
(19, 19, '2024-07-15', '2024-07-20', '2024-07-15', '2024-07-20', 'Bicicletas de cortesía', 'Club infantil', 'Sauna', 'Centro de negocios', 'Servicio de despertador'),
(20, 20, '2024-08-01', '2024-08-05', '2024-08-01', '2024-08-05', 'Sala de juegos', 'Mascotas permitidas', 'Tienda de regalos', 'Terraza', 'Servicio de conserjería'),
(21, 21, '2024-09-10', '2024-09-15', '2024-09-10', '2024-09-15', 'Cafetería', 'Salón de belleza', 'Piscina climatizada', 'Campo de golf', 'Alquiler de coches'),
(22, 22, '2024-10-01', '2024-10-07', '2024-10-01', '2024-10-07', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(23, 23, '2024-11-15', '2024-11-20', '2024-11-15', '2024-11-20', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(24, 24, '2024-12-05', '2024-12-10', '2024-12-05', '2024-12-10', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(25, 25, '2023-01-01', '2023-01-05', '2023-01-01', '2023-01-05', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(26, 26, '2023-02-10', '2023-02-15', '2023-02-10', '2023-02-15', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(27, 27, '2023-03-01', '2023-03-07', '2023-03-01', '2023-03-07', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(28, 28, '2023-04-15', '2023-04-20', '2023-04-15', '2023-04-20', 'Calefacción', 'TV por cable', 'Mini bar', 'Servicio de niñera', 'Acceso para discapacitados'),
(29, 29, '2023-05-05', '2023-05-10', '2023-05-05', '2023-05-10', 'Bicicletas de cortesía', 'Club infantil', 'Sauna', 'Centro de negocios', 'Servicio de despertador'),
(30, 30, '2023-06-01', '2023-06-07', '2023-06-01', '2023-06-07', 'Sala de juegos', 'Mascotas permitidas', 'Tienda de regalos', 'Terraza', 'Servicio de conserjería'),
(31, 31, '2023-07-15', '2023-07-20', '2023-07-15', '2023-07-20', 'Cafetería', 'Salón de belleza', 'Piscina climatizada', 'Campo de golf', 'Alquiler de coches'),
(32, 32, '2023-08-01', '2023-08-05', '2023-08-01', '2023-08-05', 'WiFi', 'Desayuno', 'Piscina', 'Gimnasio', 'Spa'),
(33, 33, '2023-09-10', '2023-09-15', '2023-09-10', '2023-09-15', 'Lavandería', 'Aparcamiento', 'Traslado al aeropuerto', 'Bar', 'Restaurante'),
(34, 34, '2023-10-01', '2023-10-07', '2023-10-01', '2023-10-07', 'Sala de conferencias', 'Recepción 24 horas', 'Servicio de habitaciones', 'Caja fuerte', 'Aire acondicionado'),
(35, 35, '2023-11-15', '2023-11-20', '2023-11-15', '2023-11-20', 'Calefacción', 'TV por cable', 'Mini bar', 'Servicio de niñera', 'Acceso para discapacitados');

create table reservas_servicios(
id_reserva INT,
id_servicio INT,
primary key (id_reserva, id_servicio),
foreign key (id_reserva) references reservas (reserva_id),
foreign key (id_servicio) references servicios (servicio_id)
);

insert into reservas_servicios (id_reserva, id_servicio)
select r.reserva_id, s.servicio_id
from reservas r
join servicios s where r.servicio_1 = s.nombre;

insert into reservas_servicios (id_reserva, id_servicio)
select r.reserva_id, s.servicio_id
from reservas r
join servicios s where r.servicio_2 = s.nombre;

insert into reservas_servicios (id_reserva, id_servicio)
select r.reserva_id, s.servicio_id
from reservas r
join servicios s where r.servicio_3 = s.nombre;

insert into reservas_servicios (id_reserva, id_servicio)
select r.reserva_id, s.servicio_id
from reservas r
join servicios s where r.servicio_4 = s.nombre;

insert into reservas_servicios (id_reserva, id_servicio)
select r.reserva_id, s.servicio_id
from reservas r
join servicios s where r.servicio_5 = s.nombre;

alter table reservas 
drop column servicio_1,
drop column servicio_2,
drop column servicio_3,
drop column servicio_4,
drop column servicio_5;

-- Consulta con JOIN:

select c.nombre as Cliente, s.nombre as Servicio, s.descripcion as Descripcion
from clientes c
join reservas r on c.cliente_id = r.cliente_id
join reservas_servicios rs on r.reserva_id = rs.id_reserva 
join servicios s on rs.id_servicio = s.servicio_id
where c.nombre = "Carlos Gómez";


-- Retos adicionales:

-- 7

select 
    (select count(*)
     from reservas r
     join habitaciones h ON r.habitacion_id = h.habitacion_id
     where h.hotel_id = 2 -- Hotel específico
     and month(r.fecha_inicio) = 5 -- Mes y... 
     and year(r.fecha_inicio) = 2023) -- ... año determinados.
as Reservas_totales; 

-- 8 
-- Para la consulta de habitaciones disponibles:
select r.habitacion_id, h2.nombre
from reservas r
join habitaciones h on h.habitacion_id = r.habitacion_id 
join hoteles h2 on h.hotel_id = h2.hotel_id 
where fecha_fin <= '2024-07-12';

-- Creamos indices que mejoren el rendimiento de la consulta:
create index idx_fecha_fin ON reservas(fecha_fin);
CREATE INDEX idx_habitacion_id_reservas ON reservas(habitacion_id);
CREATE INDEX idx_habitacion_id_habitaciones ON habitaciones(habitacion_id);
CREATE INDEX idx_hotel_id ON habitaciones(hotel_id);


-- 9 
-- Vamos a hacer una reserva sólo en caso de que la habitación no esté reservada:

start transaction;

select count(*) as total
from reservas
where habitacion_id = 3
  and fecha_inicio < '2024-08-05'
  and fecha_fin > '2024-08-01'
  for update;

insert into reservas (cliente_id, habitacion_id, fecha_inicio, fecha_fin)
values (4, 3, '2024-08-01', '2024-08-05');

commit;

-- 10

DELIMITER $$

-- Crear el trigger
create trigger after_insert_reservas
after insert on reservas
for each row
begin
    declare service_count INT;

    -- Contar el número de servicios asociados a la nueva reserva
    select count(*) into service_count
    from reservas_servicios
    where reserva_id = NEW.reserva_id;

END$$

DELIMITER ;

-- 11 
-- Hecho en el ejercicio 7

