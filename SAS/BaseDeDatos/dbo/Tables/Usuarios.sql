CREATE TABLE [dbo].[Usuarios] (
    [IdUsuario]      INT           IDENTITY (1, 1) NOT NULL
    , Nombre VARCHAR(100) NOT NULL
	, Celular VARCHAR(10) NOT NULL
	, Correo VARCHAR(100) NOT NULL
	, Contrasena VARCHAR(20) NOT NULL
	, [EsDefault]      BIT           CONSTRAINT [DF_Usuarios_EsDefault] DEFAULT ((1)) NOT NULL,
    [EsSuperusuario] BIT           CONSTRAINT [DF_Usuarios_EsSuperUsuario] DEFAULT ((0)) NOT NULL,
    [EsAdmin]        BIT           CONSTRAINT [DF_Usuarios_EsAdmin] DEFAULT ((0)) NOT NULL,
    [Activo]         BIT           CONSTRAINT [DF_Usuarios_Activo] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Usuarios_IdUsuario] PRIMARY KEY CLUSTERED ([IdUsuario] ASC),
    CONSTRAINT [UQ_Usuarios_Correo] UNIQUE NONCLUSTERED ([Correo] ASC)
);

