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

create table reservas(
reserva_id INT auto_increment primary key,
cliente_id INT,
habitacion_id INT,
fecha_inicio DATE,
fecha_fin DATE,
fecha_checkin DATE,
fecha_checkout DATE,
foreign key (cliente_id) references clientes(cliente_id),
foreign key (habitacion_id) references habitaciones(habitacion_id)
);

create table reservas_servicios(
id_reserva INT,
id_servicio INT,
primary key (id_reserva, id_servicio),
foreign key (id_reserva) references reservas (reserva_id),
foreign key (id_servicio) references servicios (servicio_id)
);

-- Insertar registros en la tabla servicios
INSERT INTO servicios (nombre, descripcion) VALUES
('Wi-Fi', 'Internet inalámbrico en todas las áreas'),
('Desayuno', 'Desayuno buffet incluido'),
('Piscina', 'Acceso a la piscina'),
('Gimnasio', 'Acceso al gimnasio'),
('Spa', 'Servicios de spa y bienestar'),
('Transporte', 'Transporte al aeropuerto'),
('Estacionamiento', 'Estacionamiento gratuito'),
('Lavandería', 'Servicio de lavandería'),
('Room Service', 'Servicio a la habitación'),
('Guardería', 'Servicio de guardería infantil');

-- Insertar registros en la tabla clientes
INSERT INTO clientes (nombre, email) VALUES
('Juan Pérez', 'juan.perez@example.com'),
('María López', 'maria.lopez@example.com'),
('Carlos Sánchez', 'carlos.sanchez@example.com'),
('Ana Gómez', 'ana.gomez@example.com'),
('Luis Fernández', 'luis.fernandez@example.com'),
('Lucía Martínez', 'lucia.martinez@example.com'),
('Pedro Ramírez', 'pedro.ramirez@example.com'),
('Sofía Torres', 'sofia.torres@example.com'),
('Diego García', 'diego.garcia@example.com'),
('Valentina Ruiz', 'valentina.ruiz@example.com');

-- Insertar registros en la tabla hoteles
INSERT INTO hoteles (nombre, direccion) VALUES
('Hotel Central', 'Av. Principal 123'),
('Hotel Playa', 'Calle de la Playa 456'),
('Hotel Montaña', 'Camino a la Montaña 789'),
('Hotel Urbano', 'Calle Urbana 101'),
('Hotel Bosque', 'Ruta del Bosque 202'),
('Hotel Costa', 'Av. Costera 303'),
('Hotel Desierto', 'Camino del Desierto 404'),
('Hotel Río', 'Calle del Río 505'),
('Hotel Valle', 'Av. del Valle 606'),
('Hotel Ciudad', 'Calle de la Ciudad 707');

-- Insertar registros en la tabla habitaciones
INSERT INTO habitaciones (numero, hotel_id) VALUES
(101, 1), (102, 1), (101, 2), (104, 2), (201, 3), (202, 4), (203, 5), (301, 5), (302, 6), (303, 7);

-- Insertar registros en la tabla reservas
INSERT INTO reservas (cliente_id, habitacion_id, fecha_inicio, fecha_fin, fecha_checkin, fecha_checkout) VALUES
(1, 1, '2024-07-01', '2024-07-05', '2024-07-01', '2024-07-05'),
(2, 2, '2024-07-02', '2024-07-06', '2024-07-02', '2024-07-06'),
(3, 3, '2024-07-03', '2024-07-07', '2024-07-03', '2024-07-07'),
(4, 4, '2024-07-04', '2024-07-08', '2024-07-04', '2024-07-08'),
(5, 5, '2024-07-05', '2024-07-09', '2024-07-05', '2024-07-09'),
(6, 6, '2024-07-06', '2024-07-10', '2024-07-06', '2024-07-10'),
(7, 7, '2024-07-07', '2024-07-11', '2024-07-07', '2024-07-11'),
(8, 8, '2024-07-08', '2024-07-12', '2024-07-08', '2024-07-12'),
(9, 9, '2024-07-09', '2024-07-13', '2024-07-09', '2024-07-13'),
(10, 10, '2024-07-10', '2024-07-14', '2024-07-10', '2024-07-14');

-- Insertar registros en la tabla reservas_servicios
INSERT INTO reservas_servicios (id_reserva, id_servicio) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
(6, 1), (6, 2), (7, 3), (7, 4), (8, 5), (8, 6), (9, 7), (9, 8), (10, 9), (10, 10);

-- Consulta con JOIN:

select c.nombre as Cliente, s.nombre as Servicio, s.descripcion as Descripcion
from clientes c
join reservas r on c.cliente_id = r.cliente_id
join reservas_servicios rs on r.reserva_id = rs.id_reserva 
join servicios s on rs.id_servicio = s.servicio_id
where c.nombre = 'Carlos Sánchez';


-- Retos adicionales:

-- 7

select 
    (select count(*)
     from reservas r
     join habitaciones h ON r.habitacion_id = h.habitacion_id
     where h.hotel_id = 2 -- Hotel específico
     and month(r.fecha_inicio) = 7 -- Mes y... 
     and year(r.fecha_inicio) = 2024) -- ... año determinados.
as Reservas_totales; 

-- 8 
-- Para la consulta de habitaciones disponibles:
select r.habitacion_id, h2.nombre
from reservas r
join habitaciones h on h.habitacion_id = r.habitacion_id 
join hoteles h2 on h.hotel_id = h2.hotel_id 
where fecha_fin <= '2024-07-08';

-- Creamos indices que mejoren el rendimiento de la consulta:
create index idx_fecha_fin ON reservas(fecha_fin);
create index idx_habitacion_id_reservas ON reservas(habitacion_id);
create index idx_habitacion_id_habitaciones ON habitaciones(habitacion_id);
create index idx_hotel_id ON habitaciones(hotel_id);


-- 9 
-- Vamos a hacer una reserva sólo en caso de que la habitación no esté reservada:

start transaction;

select count(*) as total
from reservas
where habitacion_id = 9
  and fecha_inicio < '2024-08-05'
  and fecha_fin > '2024-08-01';

insert into reservas (cliente_id, habitacion_id, fecha_inicio, fecha_fin)
values (10, 9, '2024-08-01', '2024-08-05');

commit;
rollback;

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
    where reserva_id = new.reserva_id;

end$$

DELIMITER ;

-- 11 
-- Hecho en el ejercicio 7

