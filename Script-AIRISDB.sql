USE [master]
GO
/****** Object:  Database [AIRISDB]    Script Date: 8/05/2024 12:55:37 a. m. ******/
CREATE DATABASE [AIRISDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AIRISDB', FILENAME = N'ruta-base-de-datos\AIRISDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AIRISDB_log', FILENAME = N'ruta-base-de-datos\AIRISDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

USE [AIRISDB]
GO
/****** Object:  Table [dbo].[Camara]    Script Date: 8/05/2024 12:55:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camara](
	[Id_Camara] [int] IDENTITY(1,1) NOT NULL,
	[Id_Municipio] [int] NOT NULL,
	[Ip] [nvarchar](40) NOT NULL,
	[IdSoporte] [int] NOT NULL,
	[Altura] [decimal](6, 2) NOT NULL,
	[GradosOrientacion] [int] NOT NULL,
	[Marca] [nvarchar](50) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Posicion] [nvarchar](150) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[TipoCamara] [nvarchar](80) NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_Camara] PRIMARY KEY CLUSTERED 
(
	[Id_Camara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventosCam]    Script Date: 8/05/2024 12:55:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventosCam](
	[Id_Evento] [int] IDENTITY(1,1) NOT NULL,
	[Id_Camara] [int] NOT NULL,
	[Archivo] [nvarchar](max) NOT NULL,
	[Error] [nvarchar](50) NULL,
	[Error_Descripcion] [nvarchar](max) NULL,
	[Fecha_Imagen] [datetime] NOT NULL,
	[Fecha_Imagen_UTC] [datetime] NOT NULL,
	[Fecha_Imagen_Local] [datetime] NOT NULL,
	[Deteccion] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_EventosCam] PRIMARY KEY CLUSTERED 
(
	[Id_Evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipios]    Script Date: 8/05/2024 12:55:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipios](
	[Id_Municipio] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](80) NOT NULL,
	[Provincia] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[Id_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Camara] ON 
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (1, 1, N'192.168.1.10', 1001, CAST(5.00 AS Decimal(6, 2)), 180, N'Sony', N'Alpha', N'Norte', N'Cámara Norte', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (2, 1, N'192.168.1.20', 1002, CAST(3.50 AS Decimal(6, 2)), 90, N'Panasonic', N'Lumix', N'Sur', N'Cámara Sur', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (3, 2, N'192.168.1.30', 1003, CAST(4.00 AS Decimal(6, 2)), 270, N'Canon', N'Rebel', N'Este', N'Cámara Este', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (4, 3, N'192.168.1.40', 1004, CAST(6.00 AS Decimal(6, 2)), 360, N'Nikon', N'D3500', N'Oeste', N'Cámara Oeste', N'Webcam', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (5, 4, N'192.168.1.50', 1005, CAST(7.00 AS Decimal(6, 2)), 45, N'GoPro', N'Hero', N'Centro', N'Cámara Centro', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (6, 2, N'192.168.2.10', 2001, CAST(4.50 AS Decimal(6, 2)), 135, N'Samsung', N'SCX-4833', N'Este', N'Cámara Este El Bagre', N'Dome', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (7, 2, N'192.168.2.20', 2002, CAST(3.00 AS Decimal(6, 2)), 45, N'Logitech', N'C920', N'Oeste', N'Cámara Oeste El Bagre', N'Webcam', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (9, 4, N'192.168.4.10', 4001, CAST(3.20 AS Decimal(6, 2)), 120, N'Hikvision', N'2019', N'Entrada', N'Cámara Entrada 4', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (10, 4, N'192.168.4.20', 4002, CAST(2.80 AS Decimal(6, 2)), 180, N'Bosch', N'2022', N'Patio', N'Cámara Patio 4', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (11, 4, N'192.168.4.30', 4003, CAST(4.00 AS Decimal(6, 2)), 270, N'Dahua', N'2023', N'Parqueadero', N'Cámara Parqueadero 4', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (12, 3, N'192.168.3.10', 3001, CAST(5.50 AS Decimal(6, 2)), 90, N'Axis', N'Q1755', N'Fachada', N'Cámara Fachada 3', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (13, 3, N'192.168.3.20', 3002, CAST(4.50 AS Decimal(6, 2)), 270, N'Foscam', N'FI9900P', N'Jardín', N'Cámara Jardín 3', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (14, 7, N'192.168.7.10', 7001, CAST(5.00 AS Decimal(6, 2)), 90, N'Axis', N'AXIS P1365', N'Puerta Principal', N'Cámara Principal 7', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (15, 7, N'192.168.7.20', 7002, CAST(3.50 AS Decimal(6, 2)), 180, N'Samsung', N'SNC-EM632RC', N'Zona de Carga', N'Cámara Carga 7', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (16, 7, N'192.168.7.30', 7003, CAST(4.00 AS Decimal(6, 2)), 270, N'Sony', N'SNC-VB770', N'Estacionamiento', N'Cámara Estacionamiento 7', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (17, 6, N'192.168.6.10', 6001, CAST(5.00 AS Decimal(6, 2)), 110, N'Axis', N'AXIS M3045-V', N'Entrada Principal', N'Cámara Entrada Principal 6', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (18, 6, N'192.168.6.20', 6002, CAST(2.00 AS Decimal(6, 2)), 90, N'Samsung', N'SNC-B5399', N'Acceso Secundario', N'Cámara Acceso Secundario 6', N'CCTV', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (19, 6, N'192.168.6.30', 6003, CAST(3.50 AS Decimal(6, 2)), 180, N'Canon', N'VB-H43', N'Patio Trasero', N'Cámara Patio Trasero 6', N'IP', 1)
GO
INSERT [dbo].[Camara] ([Id_Camara], [Id_Municipio], [Ip], [IdSoporte], [Altura], [GradosOrientacion], [Marca], [Modelo], [Posicion], [Nombre], [TipoCamara], [Activa]) VALUES (20, 6, N'192.168.6.40', 6004, CAST(4.50 AS Decimal(6, 2)), 270, N'Sony', N'SNC-EB600', N'Área de Parqueo', N'Cámara Área de Parqueo 6', N'CCTV', 1)
GO
SET IDENTITY_INSERT [dbo].[Camara] OFF
GO
SET IDENTITY_INSERT [dbo].[EventosCam] ON 
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (1, 1, N'Evento1.jpg', N'No', NULL, CAST(N'2023-10-01T12:00:00.000' AS DateTime), CAST(N'2023-10-01T16:00:00.000' AS DateTime), CAST(N'2023-10-01T12:00:00.000' AS DateTime), N'Movimiento')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (2, 2, N'Evento2.jpg', N'No', NULL, CAST(N'2023-10-02T12:30:00.000' AS DateTime), CAST(N'2023-10-02T16:30:00.000' AS DateTime), CAST(N'2023-10-02T12:30:00.000' AS DateTime), N'Movimiento')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (3, 3, N'Evento3.jpg', N'Sí', N'Error de conexión', CAST(N'2023-10-03T13:00:00.000' AS DateTime), CAST(N'2023-10-03T17:00:00.000' AS DateTime), CAST(N'2023-10-03T13:00:00.000' AS DateTime), N'Intrusión')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (4, 4, N'Evento4.jpg', N'No', NULL, CAST(N'2023-10-04T13:30:00.000' AS DateTime), CAST(N'2023-10-04T17:30:00.000' AS DateTime), CAST(N'2023-10-04T13:30:00.000' AS DateTime), N'Movimiento')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (5, 5, N'Evento5.jpg', N'No', NULL, CAST(N'2023-10-05T14:00:00.000' AS DateTime), CAST(N'2023-10-05T18:00:00.000' AS DateTime), CAST(N'2023-10-05T14:00:00.000' AS DateTime), N'Movimiento')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (6, 4, N'Evento4_1.jpg', N'No', NULL, CAST(N'2023-10-10T14:00:00.000' AS DateTime), CAST(N'2023-10-10T18:00:00.000' AS DateTime), CAST(N'2023-10-10T14:00:00.000' AS DateTime), N'Movimiento detectado')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (7, 4, N'Evento4_2.jpg', N'No', NULL, CAST(N'2023-10-12T15:00:00.000' AS DateTime), CAST(N'2023-10-12T19:00:00.000' AS DateTime), CAST(N'2023-10-12T15:00:00.000' AS DateTime), N'Objeto no identificado')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (8, 4, N'Evento4_3.jpg', N'No', NULL, CAST(N'2023-10-15T16:00:00.000' AS DateTime), CAST(N'2023-10-15T20:00:00.000' AS DateTime), CAST(N'2023-10-15T16:00:00.000' AS DateTime), N'Actividad sospechosa')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (9, 12, N'Evento12_1.jpg', N'No', NULL, CAST(N'2023-11-01T10:00:00.000' AS DateTime), CAST(N'2023-11-01T14:00:00.000' AS DateTime), CAST(N'2023-11-01T10:00:00.000' AS DateTime), N'Actividad normal')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (10, 12, N'Evento12_2.jpg', N'No', NULL, CAST(N'2023-11-02T11:00:00.000' AS DateTime), CAST(N'2023-11-02T15:00:00.000' AS DateTime), CAST(N'2023-11-02T11:00:00.000' AS DateTime), N'Movimiento detectado')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (11, 14, N'Evento14_1.jpg', N'No', NULL, CAST(N'2023-11-01T12:00:00.000' AS DateTime), CAST(N'2023-11-01T16:00:00.000' AS DateTime), CAST(N'2023-11-01T12:00:00.000' AS DateTime), N'Actividad normal')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (12, 14, N'Evento14_2.jpg', N'Sí', N'Interrupción de señal', CAST(N'2023-11-02T13:00:00.000' AS DateTime), CAST(N'2023-11-02T17:00:00.000' AS DateTime), CAST(N'2023-11-02T13:00:00.000' AS DateTime), N'Perdida de conexión')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (13, 18, N'Evento18_1.jpg', N'No', NULL, CAST(N'2023-11-10T09:00:00.000' AS DateTime), CAST(N'2023-11-10T13:00:00.000' AS DateTime), CAST(N'2023-11-10T09:00:00.000' AS DateTime), N'Entrada de vehículo')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (14, 18, N'Evento18_2.jpg', N'Sí', N'Fallo de energía', CAST(N'2023-11-11T10:30:00.000' AS DateTime), CAST(N'2023-11-11T14:30:00.000' AS DateTime), CAST(N'2023-11-11T10:30:00.000' AS DateTime), N'Sin detección')
GO
INSERT [dbo].[EventosCam] ([Id_Evento], [Id_Camara], [Archivo], [Error], [Error_Descripcion], [Fecha_Imagen], [Fecha_Imagen_UTC], [Fecha_Imagen_Local], [Deteccion]) VALUES (15, 18, N'Evento18_3.jpg', N'No', NULL, CAST(N'2023-11-12T11:45:00.000' AS DateTime), CAST(N'2023-11-12T15:45:00.000' AS DateTime), CAST(N'2023-11-12T11:45:00.000' AS DateTime), N'Movimiento en zona restringida')
GO
SET IDENTITY_INSERT [dbo].[EventosCam] OFF
GO
SET IDENTITY_INSERT [dbo].[Municipios] ON 
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (1, N'Medellín', N'Antioquia')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (2, N'El Bagre', N'Antioquia')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (3, N'Rionegro', N'Antioquia')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (4, N'Envigado', N'Antioquia')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (5, N'Bello', N'Antioquia')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (6, N'Cartagena', N'Bolívar')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (7, N'Magangué', N'Bolívar')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (8, N'Mompós', N'Bolívar')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (9, N'Turbaco', N'Bolívar')
GO
INSERT [dbo].[Municipios] ([Id_Municipio], [Nombre], [Provincia]) VALUES (10, N'Arjona', N'Bolívar')
GO
SET IDENTITY_INSERT [dbo].[Municipios] OFF
GO
ALTER TABLE [dbo].[Camara]  WITH CHECK ADD  CONSTRAINT [FK_Camara_Municipios] FOREIGN KEY([Id_Municipio])
REFERENCES [dbo].[Municipios] ([Id_Municipio])
GO
ALTER TABLE [dbo].[Camara] CHECK CONSTRAINT [FK_Camara_Municipios]
GO
ALTER TABLE [dbo].[EventosCam]  WITH CHECK ADD  CONSTRAINT [FK_EventosCam_Camara] FOREIGN KEY([Id_Camara])
REFERENCES [dbo].[Camara] ([Id_Camara])
GO
ALTER TABLE [dbo].[EventosCam] CHECK CONSTRAINT [FK_EventosCam_Camara]
GO
USE [master]
GO
ALTER DATABASE [AIRISDB] SET  READ_WRITE 
GO
