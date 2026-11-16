CREATE DATABASE Práctica; 

USE Practica;

CREATE TABLE Clientes(
IDCliente int NOT NULL IDENTITY(1,1) PRIMARY KEY,
NombreCliente varchar(100) NOT NULL,
Perfil_bio text NOT NULL, 
Fecha_registro date NOT NULL
);

CREATE TABLE Productos(
ID_Producto int NOT NULL PRIMARY KEY,
Descripcion text, 
Precio decimal(10,2) NOT NULL, 
Esta_activo varchar(2)
);
-- Use Varchar(2) para limitar la extensión de las respuestas. De tal manera, conduce a responder con SI o NO.
