USE [presupuesto]
GO
SET IDENTITY_INSERT [dbo].[empresa] ON 

INSERT [dbo].[empresa] ([id_empresa], [nombre], [razon_social]) VALUES (1, N'2M', N'Terceriarizacion de servicios')
SET IDENTITY_INSERT [dbo].[empresa] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellidos], [usuario], [clave], [estado], [creacion]) VALUES (2, N'Marlon eulises', N'Sanchez', N'mportillo', N'portillo123', 1, CAST(N'2019-09-28T06:45:00.000' AS DateTime))
INSERT [dbo].[usuarios] ([id_usuario], [nombre], [apellidos], [usuario], [clave], [estado], [creacion]) VALUES (9, N'Marlon1JKlsdnkvr', N'Sanchez', N'mportillo', N'portillo123', 1, CAST(N'2019-09-29T05:29:02.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[usuarios] OFF
SET IDENTITY_INSERT [dbo].[presupuesto] ON 

INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (1, N'presupuesto modificado', N'presupuesto de pruebas', CAST(N'2019-09-09' AS Date), CAST(N'2019-09-12' AS Date), NULL, 2, 3, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (2, N'presupuesto2', N'preubas de creacion de presupuesto', CAST(N'2019-09-04' AS Date), CAST(N'2019-09-06' AS Date), NULL, 2, 2, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (3, N'presupuesto 3', N'presupuesto de prueba 3', CAST(N'2019-10-07' AS Date), CAST(N'2019-10-25' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (4, N'p5', N'preos', CAST(N'2019-10-10' AS Date), CAST(N'2019-10-05' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (5, N'presupuesto 5', N'presupuesto descripcion', CAST(N'2019-10-14' AS Date), CAST(N'2019-10-18' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (6, N'Ã±kprwin', N'', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (7, N'Presupuesto Informatica', N' gasto area de informatica', CAST(N'2019-10-01' AS Date), CAST(N'2019-10-31' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (8, N'presupuesto ', N'presupuesto prueba', CAST(N'2019-10-07' AS Date), CAST(N'2019-10-20' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (9, N'presupuesto cableado bj305', N'cableado electrico', CAST(N'2019-10-07' AS Date), CAST(N'2019-10-19' AS Date), NULL, 2, 1, 1, NULL)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (10, N'presupuesto', N'presupuesto de prueba ', CAST(N'2019-10-07' AS Date), CAST(N'2019-10-19' AS Date), NULL, 2, 1, 1, 1)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (11, N'presupuesto 3', N'jlgvjh', CAST(N'2019-10-14' AS Date), CAST(N'2019-10-31' AS Date), NULL, 2, 1, 1, 1)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (12, N'dcsjl', N'dkW Nw', CAST(N'2019-10-16' AS Date), CAST(N'2019-10-11' AS Date), NULL, 2, 1, 1, 2)
INSERT [dbo].[presupuesto] ([id_presupuesto], [titulo], [descripcion], [fecha_publicacion], [fecha_vencimiento], [fecha_aprobacion], [id_usuario], [estado], [id_empresa], [presu_id_area]) VALUES (13, N'presupuesto ', N'po', CAST(N'2019-10-09' AS Date), CAST(N'2019-10-16' AS Date), NULL, 2, 2, 1, 2)
SET IDENTITY_INSERT [dbo].[presupuesto] OFF
SET IDENTITY_INSERT [dbo].[rubro] ON 

INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (1, N'Seleccione', N'Seleccione')
INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (2, N'Cheques diferidos a cobrar', N'Cheques diferidos a cobrar')
INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (3, N'Mobiliario', N'Mobiliario')
INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (4, N'equipamientos informaticos', N'equipamientos informáticos')
INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (5, N'Deudores por ventas', N'Deudores por ventas')
INSERT [dbo].[rubro] ([id_rubro], [nombre], [descripcion]) VALUES (6, N'Acreedores por compra', N'Acreedores por compra')
SET IDENTITY_INSERT [dbo].[rubro] OFF
SET IDENTITY_INSERT [dbo].[detalle] ON 

INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (6, 1, N'detalle 1', 500, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (7, 1, N'detalle 2', 1000, 2)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (8, 1, N'detalle 2', 45, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (9, 2, N'detalle 2', 50, 5)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (10, 1, N'mesas y sillas', 65.5, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (11, 1, N'laptop', 800.56, 4)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (12, 3, N'laptop', 559.36, 4)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (13, 4, N'detalle 1', 588, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (14, 5, N'detalle 3', 58.69, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (15, 5, N'detalle 4', 693, 2)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (16, 6, N'lkn', 456, 2)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (17, 6, N'jnsfjsln', 35153, 5)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (18, 7, N'mesas y sillas', 65.5, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (19, 7, N'laptop DiseÃ±o Grafico', 1500, 4)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (20, 8, N'detalle 1', 589, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (21, 9, N'cables', 10, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (22, 9, N'escalera', 12, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (23, 9, N'conectores', 5, 3)
INSERT [dbo].[detalle] ([id_detalle], [id_presupuesto], [detalle], [costo_estimado], [id_rubro]) VALUES (24, 9, N'mano de obra', 200, 6)
SET IDENTITY_INSERT [dbo].[detalle] OFF
SET IDENTITY_INSERT [dbo].[revisiones] ON 

INSERT [dbo].[revisiones] ([id_revision], [id_presupuesto], [mejoras_requeridas], [estado], [fecha]) VALUES (1, 1, N'revisa', N'1', CAST(N'2002-10-19' AS Date))
INSERT [dbo].[revisiones] ([id_revision], [id_presupuesto], [mejoras_requeridas], [estado], [fecha]) VALUES (2, 3, N'detalla mejor los gastos
', N'1', CAST(N'2003-10-19' AS Date))
INSERT [dbo].[revisiones] ([id_revision], [id_presupuesto], [mejoras_requeridas], [estado], [fecha]) VALUES (3, 1, N'', N'1', CAST(N'2008-10-19' AS Date))
SET IDENTITY_INSERT [dbo].[revisiones] OFF
SET IDENTITY_INSERT [dbo].[ejecucion] ON 

INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (1, 12, 515, N'se compro una laptop adicional', 1, N'', 3)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (2, 13, 5888, N'se compro una laptop adicional', 1, N'/Presupuestos/img/img16.jpg', 4)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (3, 15, 854, N'se compro una laptop adicional', 1, N'/Presupuestos/img/Array', 5)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (4, 16, 555, N'gvlhjb', 1, N'/Presupuestos/img/img16.jpg', 6)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (5, 17, 515, N'jvh', 1, N'/Presupuestos/img/img16.jpg', 6)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (6, 21, 15, N'se compro cable de mejos calidad ', 1, N'/Presupuestos/img/factura.jpg', 9)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (7, 22, 10, N'se compro escalera en oferta', 1, N'/Presupuestos/img/factura.jpg', 9)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (8, 23, 5, N'se compro a precio normal', 1, N'/Presupuestos/img/factura.jpg', 9)
INSERT [dbo].[ejecucion] ([id_ejecucion], [id_detalle], [costo_real], [detalle], [estado], [archivo], [id_presupuesto]) VALUES (9, 24, 0, N'0', 1, N'/Presupuestos/img/factura.jpg', 9)
SET IDENTITY_INSERT [dbo].[ejecucion] OFF
SET IDENTITY_INSERT [dbo].[modulos] ON 

INSERT [dbo].[modulos] ([id_modulo], [titulo], [comando], [estado]) VALUES (1, N'SuperAdmin', N'super administrador', 1)
INSERT [dbo].[modulos] ([id_modulo], [titulo], [comando], [estado]) VALUES (2, N'Administrador', N'administrador', 1)
INSERT [dbo].[modulos] ([id_modulo], [titulo], [comando], [estado]) VALUES (3, N'Operario', N'Operario', 1)
SET IDENTITY_INSERT [dbo].[modulos] OFF
SET IDENTITY_INSERT [dbo].[permisos] ON 

INSERT [dbo].[permisos] ([id_permiso], [id_usuario], [id_modulo]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[permisos] OFF
SET IDENTITY_INSERT [dbo].[aprovados] ON 

INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (1, 2, CAST(N'2002-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (2, 1, CAST(N'2002-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (3, 1, CAST(N'2003-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (4, 1, CAST(N'2003-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (5, 1, CAST(N'2003-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (6, 3, CAST(N'2003-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (7, 4, CAST(N'2004-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (8, 5, CAST(N'2005-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (9, 6, CAST(N'2005-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (10, 7, CAST(N'2005-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (11, 9, CAST(N'2005-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (12, 11, CAST(N'2008-10-19' AS Date), N'1', 2, N'porggg')
INSERT [dbo].[aprovados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [id_user], [comentarion]) VALUES (13, 12, CAST(N'2008-10-19' AS Date), N'1', 2, N'abrovado porqie sp')
SET IDENTITY_INSERT [dbo].[aprovados] OFF
SET IDENTITY_INSERT [dbo].[areas] ON 

INSERT [dbo].[areas] ([id_area], [nom_area]) VALUES (1, N'Informatica')
INSERT [dbo].[areas] ([id_area], [nom_area]) VALUES (2, N'Administracion')
INSERT [dbo].[areas] ([id_area], [nom_area]) VALUES (3, N'Recursos Humanos')
INSERT [dbo].[areas] ([id_area], [nom_area]) VALUES (4, N'Mantenimiento')
INSERT [dbo].[areas] ([id_area], [nom_area]) VALUES (5, N'Contabilida')
SET IDENTITY_INSERT [dbo].[areas] OFF
SET IDENTITY_INSERT [dbo].[estados_presu] ON 

INSERT [dbo].[estados_presu] ([id_estado], [descripcion]) VALUES (1, N'Aprobado')
INSERT [dbo].[estados_presu] ([id_estado], [descripcion]) VALUES (2, N'Rechazado')
INSERT [dbo].[estados_presu] ([id_estado], [descripcion]) VALUES (3, N'Revision')
SET IDENTITY_INSERT [dbo].[estados_presu] OFF
SET IDENTITY_INSERT [dbo].[rechazados] ON 

INSERT [dbo].[rechazados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [coment], [id_user]) VALUES (1, 1, CAST(N'2002-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[rechazados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [coment], [id_user]) VALUES (2, 1, CAST(N'2002-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[rechazados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [coment], [id_user]) VALUES (3, 1, CAST(N'2003-10-19' AS Date), N'1', NULL, NULL)
INSERT [dbo].[rechazados] ([id_rechazo], [id_presupuesto], [fecha], [estado], [coment], [id_user]) VALUES (4, 13, CAST(N'2019-10-08' AS Date), N'1', N'rechazdo porque si ', 2)
SET IDENTITY_INSERT [dbo].[rechazados] OFF
