USE [master]
GO
/****** Object:  Database [presupuesto]    Script Date: 10/12/2019 6:45:38 PM ******/
CREATE DATABASE [presupuesto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'presupuesto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\presupuesto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'presupuesto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\presupuesto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [presupuesto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [presupuesto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [presupuesto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [presupuesto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [presupuesto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [presupuesto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [presupuesto] SET ARITHABORT OFF 
GO
ALTER DATABASE [presupuesto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [presupuesto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [presupuesto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [presupuesto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [presupuesto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [presupuesto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [presupuesto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [presupuesto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [presupuesto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [presupuesto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [presupuesto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [presupuesto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [presupuesto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [presupuesto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [presupuesto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [presupuesto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [presupuesto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [presupuesto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [presupuesto] SET  MULTI_USER 
GO
ALTER DATABASE [presupuesto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [presupuesto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [presupuesto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [presupuesto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [presupuesto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [presupuesto] SET QUERY_STORE = OFF
GO
USE [presupuesto]
GO
/****** Object:  Table [dbo].[aprovados]    Script Date: 10/12/2019 6:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aprovados](
	[id_rechazo] [int] IDENTITY(1,1) NOT NULL,
	[id_presupuesto] [int] NULL,
	[fecha] [date] NULL,
	[estado] [varchar](255) NULL,
	[id_user] [int] NULL,
	[comentarion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rechazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[areas]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[areas](
	[id_area] [int] IDENTITY(1,1) NOT NULL,
	[nom_area] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_presupuesto] [int] NOT NULL,
	[detalle] [varchar](255) NULL,
	[costo_estimado] [float] NOT NULL,
	[id_rubro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[documentos]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documentos](
	[id_documento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
	[id_tipo_doc] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[id_ejecucion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ejecucion]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ejecucion](
	[id_ejecucion] [int] IDENTITY(1,1) NOT NULL,
	[id_detalle] [int] NOT NULL,
	[costo_real] [float] NOT NULL,
	[detalle] [varchar](255) NOT NULL,
	[estado] [tinyint] NULL,
	[archivo] [varchar](255) NULL,
	[id_presupuesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ejecucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[razon_social] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_presu]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_presu](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modulos]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modulos](
	[id_modulo] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NULL,
	[comando] [varchar](255) NULL,
	[estado] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permisos]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[id_permiso] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_modulo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[presupuesto]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presupuesto](
	[id_presupuesto] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[fecha_publicacion] [date] NOT NULL,
	[fecha_vencimiento] [date] NOT NULL,
	[fecha_aprobacion] [date] NULL,
	[id_usuario] [int] NOT NULL,
	[estado] [tinyint] NOT NULL,
	[id_empresa] [int] NOT NULL,
	[presu_id_area] [int] NULL,
 CONSTRAINT [PK__presupue__3E94B4E50DD92064] PRIMARY KEY CLUSTERED 
(
	[id_presupuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rechazados]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rechazados](
	[id_rechazo] [int] IDENTITY(1,1) NOT NULL,
	[id_presupuesto] [int] NULL,
	[fecha] [date] NULL,
	[estado] [varchar](255) NULL,
	[coment] [varchar](60) NULL,
	[id_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rechazo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[revisiones]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[revisiones](
	[id_revision] [int] IDENTITY(1,1) NOT NULL,
	[id_presupuesto] [int] NOT NULL,
	[mejoras_requeridas] [varchar](255) NULL,
	[estado] [varchar](255) NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_revision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rubro]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rubro](
	[id_rubro] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_documento]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_documento](
	[id_tipo_doc] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apellidos] [varchar](255) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[clave] [varchar](50) NOT NULL,
	[estado] [tinyint] NOT NULL,
	[creacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [descripcion]
GO
ALTER TABLE [dbo].[documentos] ADD  DEFAULT (NULL) FOR [fecha]
GO
ALTER TABLE [dbo].[ejecucion] ADD  DEFAULT (NULL) FOR [estado]
GO
ALTER TABLE [dbo].[modulos] ADD  DEFAULT (NULL) FOR [titulo]
GO
ALTER TABLE [dbo].[modulos] ADD  DEFAULT (NULL) FOR [comando]
GO
ALTER TABLE [dbo].[revisiones] ADD  DEFAULT (NULL) FOR [mejoras_requeridas]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [FK_detalle_presupuesto] FOREIGN KEY([id_presupuesto])
REFERENCES [dbo].[presupuesto] ([id_presupuesto])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [FK_detalle_presupuesto]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [FK_detalle_rubro] FOREIGN KEY([id_rubro])
REFERENCES [dbo].[rubro] ([id_rubro])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [FK_detalle_rubro]
GO
ALTER TABLE [dbo].[documentos]  WITH CHECK ADD  CONSTRAINT [FK_documentos_ejecucion] FOREIGN KEY([id_ejecucion])
REFERENCES [dbo].[ejecucion] ([id_ejecucion])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [FK_documentos_ejecucion]
GO
ALTER TABLE [dbo].[documentos]  WITH CHECK ADD  CONSTRAINT [FK_documentos_tipo_documento] FOREIGN KEY([id_tipo_doc])
REFERENCES [dbo].[tipo_documento] ([id_tipo_doc])
GO
ALTER TABLE [dbo].[documentos] CHECK CONSTRAINT [FK_documentos_tipo_documento]
GO
ALTER TABLE [dbo].[ejecucion]  WITH CHECK ADD  CONSTRAINT [FK_ejecucion_detalle] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle] ([id_detalle])
GO
ALTER TABLE [dbo].[ejecucion] CHECK CONSTRAINT [FK_ejecucion_detalle]
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD  CONSTRAINT [FK_permisos_modulos] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[modulos] ([id_modulo])
GO
ALTER TABLE [dbo].[permisos] CHECK CONSTRAINT [FK_permisos_modulos]
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD  CONSTRAINT [FK_permisos_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[permisos] CHECK CONSTRAINT [FK_permisos_usuarios]
GO
ALTER TABLE [dbo].[presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_presupuesto_empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[presupuesto] CHECK CONSTRAINT [FK_presupuesto_empresa]
GO
ALTER TABLE [dbo].[presupuesto]  WITH CHECK ADD  CONSTRAINT [FK_presupuesto_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[presupuesto] CHECK CONSTRAINT [FK_presupuesto_usuarios]
GO
ALTER TABLE [dbo].[revisiones]  WITH CHECK ADD  CONSTRAINT [FK_revisiones_presupuesto] FOREIGN KEY([id_presupuesto])
REFERENCES [dbo].[presupuesto] ([id_presupuesto])
GO
ALTER TABLE [dbo].[revisiones] CHECK CONSTRAINT [FK_revisiones_presupuesto]
GO
/****** Object:  StoredProcedure [dbo].[login_pre]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[login_pre] 
@user varchar(255),@pass varchar(255) 
as
begin 

	select 
	a.id_usuario,
	a.nombre,
	a.usuario,
	c.titulo,
	c.id_modulo
	from 
	usuarios a 
	join permisos b on a.id_usuario = b.id_usuario
	join modulos c on b.id_modulo = c.id_modulo

	where a.usuario =@user and a.clave = @pass

end
GO
/****** Object:  StoredProcedure [dbo].[se]    Script Date: 10/12/2019 6:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[se]
as
begin 
 select 'estas' as nombre
end
GO
USE [master]
GO
ALTER DATABASE [presupuesto] SET  READ_WRITE 
GO
