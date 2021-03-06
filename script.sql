USE [EnterpriseTest]
GO
/****** Object:  Table [dbo].[CGAUTR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGAUTR](
	[CodCnx] [varchar](15) NOT NULL,
	[CodCmpy] [varchar](15) NOT NULL,
	[CodAutr] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[Autoriza] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodCnx] ASC,
	[CodCmpy] ASC,
	[CodAutr] ASC,
	[Modulo] ASC,
	[Parametro] ASC,
	[Autoriza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGEXNU]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGEXNU](
	[CodAutr] [varchar](15) NOT NULL,
	[CodCnx] [varchar](15) NOT NULL,
	[CodCmpy] [varchar](15) NOT NULL,
	[Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodAutr] ASC,
	[CodCnx] ASC,
	[CodCmpy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGNIVL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGNIVL](
	[CodNivl] [int] NOT NULL,
	[Descrip] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodNivl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGOPMN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGOPMN](
	[CodCnx] [varchar](15) NOT NULL,
	[CodCmpy] [varchar](15) NOT NULL,
	[CodMenu] [varchar](15) NOT NULL,
	[CodOpMn] [varchar](13) NOT NULL,
	[Nombre] [varchar](55) NOT NULL,
	[Accion] [int] NULL,
	[OpActiva] [int] NULL,
	[UPrinter] [int] NULL,
	[SSFld] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodCnx] ASC,
	[CodCmpy] ASC,
	[CodMenu] ASC,
	[CodOpMn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGPARD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGPARD](
	[CodCnx] [varchar](10) NOT NULL,
	[CodCmpy] [varchar](10) NOT NULL,
	[CodParm] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[NoData] [int] NOT NULL,
	[TipoData] [int] NOT NULL,
	[IDataF] [int] NULL,
	[SDataF] [varchar](50) NULL,
	[FDataF] [decimal](28, 2) NULL,
	[SSFld] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodCnx] ASC,
	[CodCmpy] ASC,
	[CodParm] ASC,
	[Modulo] ASC,
	[Parametro] ASC,
	[NoData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGPARM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGPARM](
	[CodCnx] [varchar](10) NOT NULL,
	[CodCmpy] [varchar](10) NOT NULL,
	[CodParm] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[Activo] [int] NOT NULL,
	[Clave] [int] NOT NULL,
	[Habilitado] [int] NOT NULL,
	[SSFld] [varchar](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodCnx] ASC,
	[CodCmpy] ASC,
	[CodParm] ASC,
	[Modulo] ASC,
	[Parametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CGUSRS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CGUSRS](
	[CodUsua] [varchar](10) NOT NULL,
	[Descrip] [varchar](50) NOT NULL,
	[EMail] [varchar](50) NULL,
	[UsrDta1] [varchar](50) NULL,
	[UsrDta2] [varchar](50) NULL,
	[UsrDta3] [varchar](50) NULL,
	[UsrDta4] [varchar](50) NULL,
	[UsrDta5] [varchar](50) NULL,
	[SData1] [varchar](250) NOT NULL,
	[SData2] [varchar](250) NOT NULL,
	[SData3] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodUsua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHECKEXACT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHECKEXACT](
	[EXACTID] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [int] NULL,
	[CHECKTIME] [datetime] NULL,
	[CHECKTYPE] [varchar](2) NULL,
	[ISADD] [smallint] NULL,
	[YUYIN] [varchar](25) NULL,
	[ISMODIFY] [smallint] NULL,
	[ISDELETE] [smallint] NULL,
	[INCOUNT] [smallint] NULL,
	[ISCOUNT] [smallint] NULL,
	[MODIFYBY] [varchar](20) NULL,
	[DATE] [datetime] NULL,
 CONSTRAINT [EXACTID] PRIMARY KEY CLUSTERED 
(
	[EXACTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHECKINOUT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHECKINOUT](
	[USERID] [int] NOT NULL,
	[CHECKTIME] [datetime] NOT NULL,
	[CHECKTYPE] [varchar](1) NULL,
	[VERIFYCODE] [int] NULL,
	[SENSORID] [varchar](5) NULL,
 CONSTRAINT [USERCHECKTIME] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[CHECKTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[IDCountry] [varchar](4) NOT NULL,
	[IDState] [varchar](4) NOT NULL,
	[IDCity] [varchar](4) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
 CONSTRAINT [City0] PRIMARY KEY CLUSTERED 
(
	[IDCountry] ASC,
	[IDState] ASC,
	[IDCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompaniyType]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompaniyType](
	[ID_TypeEntity] [varchar](3) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
	[Descrip2] [varchar](80) NULL,
	[MaskCode] [varchar](25) NOT NULL,
	[boStatus] [bit] NOT NULL,
 CONSTRAINT [CompaniyType0] PRIMARY KEY CLUSTERED 
(
	[ID_TypeEntity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[ID_Entity] [varchar](10) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
	[IDLabel] [varchar](15) NOT NULL,
	[IDFiscal] [varchar](15) NULL,
	[ID_TypeEntity] [varchar](3) NOT NULL,
	[EtySize] [tinyint] NOT NULL,
	[EtyCapital] [tinyint] NOT NULL,
	[Contact] [varchar](40) NULL,
	[Address] [varchar](40) NULL,
	[Address2] [varchar](40) NULL,
	[Phone] [varchar](25) NULL,
	[Email] [varchar](40) NULL,
	[WEB] [varchar](40) NULL,
	[City] [varchar](30) NULL,
	[Country] [varchar](30) NULL,
	[dtDate] [datetime] NULL,
	[siPeriodDef] [smallint] NOT NULL,
	[boStatus] [bit] NOT NULL,
	[DBPassword] [varchar](25) NULL,
	[MaskCode] [varchar](25) NULL,
	[EtyConsol] [smallint] NOT NULL,
	[ID_Master] [varchar](10) NULL,
	[dtMigrated] [datetime] NULL,
	[Reserved] [varchar](40) NOT NULL,
	[Prefix] [smallint] NOT NULL,
 CONSTRAINT [Company0] PRIMARY KEY CLUSTERED 
(
	[ID_Entity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyJoin]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompanyJoin](
	[ID_Entity] [varchar](10) NOT NULL,
	[ID_SubEntity] [varchar](10) NOT NULL,
	[NLine] [int] IDENTITY(1,1) NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [CompanyJoin0] PRIMARY KEY CLUSTERED 
(
	[ID_Entity] ASC,
	[ID_SubEntity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Connections]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Connections](
	[ID_Connec] [varchar](10) NOT NULL,
	[siType] [tinyint] NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
	[boSSW] [bit] NOT NULL,
	[DBServer] [varchar](50) NOT NULL,
	[DBName] [varchar](40) NOT NULL,
	[DBUser] [varchar](25) NULL,
	[DBPassword] [varchar](25) NULL,
	[boStatus] [bit] NOT NULL,
 CONSTRAINT [Connections0] PRIMARY KEY CLUSTERED 
(
	[ID_Connec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[IDCountry] [varchar](4) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
	[SCountry] [varchar](30) NULL,
	[SState] [varchar](30) NULL,
	[SCity] [varchar](30) NULL,
	[SMunicipality] [varchar](30) NULL,
 CONSTRAINT [Country0] PRIMARY KEY CLUSTERED 
(
	[IDCountry] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CPSistema]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CPSistema](
	[CodSucu] [varchar](10) NOT NULL,
	[Idversion] [int] NOT NULL,
	[UsaPantT] [int] NOT NULL,
	[TipoKeyB] [int] NOT NULL,
	[UsaImag] [int] NOT NULL,
	[UsaDescrip2] [int] NOT NULL,
	[UsaDescrip3] [int] NOT NULL,
	[UsaPeso] [int] NOT NULL,
	[UsaVolum] [int] NOT NULL,
	[UsaEmpaq] [int] NOT NULL,
	[TipoPvP] [int] NOT NULL,
	[TipoPvPLot] [int] NOT NULL,
	[UsaPrecioD] [int] NOT NULL,
	[TipoPvPD] [int] NOT NULL,
	[UsaDesgTax] [int] NOT NULL,
	[UsaDesgD] [int] NOT NULL,
	[UsaPorcD] [int] NOT NULL,
	[CodClie] [varchar](15) NULL,
	[TextPvP] [varchar](20) NULL,
	[TextDscto] [varchar](20) NULL,
	[TextOfer] [varchar](20) NULL,
	[TextIncTax] [varchar](20) NULL,
	[TiempoRet] [int] NOT NULL,
 CONSTRAINT [CPSistema_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[ID_Currency] [varchar](3) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
	[Country] [varchar](30) NOT NULL,
	[Symbol] [varchar](3) NOT NULL,
	[boStatus] [bit] NOT NULL,
 CONSTRAINT [Currency0] PRIMARY KEY CLUSTERED 
(
	[ID_Currency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBTHIRD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DBTHIRD](
	[TipoID3] [int] NOT NULL,
	[ID3] [varchar](15) NOT NULL,
	[ID3Org] [varchar](15) NULL,
	[Id_Alte] [varchar](15) NULL,
 CONSTRAINT [DBTHIRD_IX0] PRIMARY KEY CLUSTERED 
(
	[TipoID3] ASC,
	[ID3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DEPARTMENTS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTMENTS](
	[DEPTID] [int] IDENTITY(1,1) NOT NULL,
	[DEPTNAME] [varchar](30) NULL,
	[SUPDEPTID] [int] NOT NULL,
 CONSTRAINT [DEPTID] PRIMARY KEY CLUSTERED 
(
	[DEPTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntityPrefix]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntityPrefix](
	[Prefix] [smallint] NOT NULL,
	[IDParam] [binary](400) NULL,
 CONSTRAINT [EntityPrefix0] PRIMARY KEY CLUSTERED 
(
	[Prefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EXCNOTES]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EXCNOTES](
	[USERID] [int] NULL,
	[ATTDATE] [datetime] NULL,
	[NOTES] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOLIDAYS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOLIDAYS](
	[HOLIDAYID] [int] IDENTITY(1,1) NOT NULL,
	[HOLIDAYNAME] [varchar](20) NULL,
	[HOLIDAYYEAR] [smallint] NULL,
	[HOLIDAYMONTH] [smallint] NULL,
	[HOLIDAYDAY] [smallint] NULL,
	[STARTTIME] [datetime] NULL,
	[DURATION] [smallint] NULL,
	[HOLIDAYTYPE] [smallint] NULL,
	[XINBIE] [varchar](4) NULL,
	[MINZU] [varchar](50) NULL,
 CONSTRAINT [HOLID] PRIMARY KEY CLUSTERED 
(
	[HOLIDAYID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogLockReg]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogLockReg](
	[KeyRegLock] [int] IDENTITY(1,1) NOT NULL,
	[IDStation] [int] NOT NULL,
	[ID_Entity] [varchar](10) NOT NULL,
	[TableName] [varchar](20) NOT NULL,
	[siPeriod] [smallint] NOT NULL,
	[IDGeneral] [varchar](25) NOT NULL,
	[dtDate] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [LogLockReg0] PRIMARY KEY CLUSTERED 
(
	[KeyRegLock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogStation]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogStation](
	[IDStation] [int] NOT NULL,
	[ID_Entity] [varchar](10) NOT NULL,
	[IDUser] [varchar](10) NOT NULL,
	[IDLog] [int] NOT NULL,
	[dtDate] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
	[StationName] [varchar](50) NOT NULL,
 CONSTRAINT [LogStation0] PRIMARY KEY CLUSTERED 
(
	[IDStation] ASC,
	[ID_Entity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelAccount]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelAccount](
	[ID_Account] [varchar](24) NOT NULL,
	[ID_Parent] [varchar](24) NULL,
	[Descrip] [varchar](80) NOT NULL,
	[DescripShort] [varchar](60) NULL,
	[siLevel] [tinyint] NOT NULL,
	[boStatus] [bit] NOT NULL,
	[dtDate] [datetime] NOT NULL,
 CONSTRAINT [ModelAccount0] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ModelAccountType]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ModelAccountType](
	[ID_TypeEntity] [varchar](3) NOT NULL,
	[ID_Account] [varchar](24) NOT NULL,
 CONSTRAINT [ModelAccountType0] PRIMARY KEY CLUSTERED 
(
	[ID_TypeEntity] ASC,
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipality]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipality](
	[Descrip] [varchar](80) NOT NULL,
	[IDMunicipality] [varchar](4) NOT NULL,
	[IDCity] [varchar](4) NOT NULL,
	[IDState] [varchar](4) NOT NULL,
	[IDCountry] [varchar](4) NOT NULL,
 CONSTRAINT [Municipality0] PRIMARY KEY CLUSTERED 
(
	[IDCountry] ASC,
	[IDState] ASC,
	[IDCity] ASC,
	[IDMunicipality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NUM_RUN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NUM_RUN](
	[NUM_RUNID] [int] IDENTITY(1,1) NOT NULL,
	[OLDID] [int] NULL,
	[NAME] [varchar](30) NOT NULL,
	[STARTDATE] [datetime] NULL,
	[ENDDATE] [datetime] NULL,
	[CYLE] [smallint] NULL,
	[UNITS] [smallint] NULL,
 CONSTRAINT [NUMID] PRIMARY KEY CLUSTERED 
(
	[NUM_RUNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NUM_RUN_DEIL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NUM_RUN_DEIL](
	[NUM_RUNID] [smallint] NOT NULL,
	[STARTTIME] [datetime] NOT NULL,
	[ENDTIME] [datetime] NULL,
	[SDAYS] [smallint] NOT NULL,
	[EDAYS] [smallint] NULL,
	[SCHCLASSID] [int] NULL,
 CONSTRAINT [NUMID2] PRIMARY KEY CLUSTERED 
(
	[NUM_RUNID] ASC,
	[SDAYS] ASC,
	[STARTTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PriceIdx]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceIdx](
	[siYear] [smallint] NOT NULL,
	[siMonth] [tinyint] NOT NULL,
	[Factor] [decimal](28, 9) NOT NULL,
 CONSTRAINT [PriceIdx0] PRIMARY KEY CLUSTERED 
(
	[siYear] ASC,
	[siMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rates]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rates](
	[ID_Currency] [varchar](3) NOT NULL,
	[siYear] [smallint] NOT NULL,
	[siMonth] [tinyint] NOT NULL,
	[CurrencyRate] [decimal](28, 9) NOT NULL,
 CONSTRAINT [Rates0] PRIMARY KEY CLUSTERED 
(
	[ID_Currency] ASC,
	[siYear] ASC,
	[siMonth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAA_LIB]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAA_LIB](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[Signo] [smallint] NOT NULL,
	[NumeroF] [varchar](10) NULL,
	[NumeroP] [varchar](15) NULL,
	[NumeroZ] [varchar](8) NULL,
	[CodClie] [varchar](15) NOT NULL,
	[Descrip] [varchar](60) NOT NULL,
	[ID3] [varchar](25) NULL,
	[Monto] [decimal](28, 2) NOT NULL,
	[MtoTax] [decimal](28, 2) NOT NULL,
	[TGravable] [decimal](28, 2) NOT NULL,
	[TExento] [decimal](28, 2) NOT NULL,
	[Contado] [decimal](28, 2) NOT NULL,
	[Credito] [decimal](28, 2) NOT NULL,
	[TipoCli] [int] NOT NULL,
	[Fecha] [int] NOT NULL,
	[Hora] [varchar](6) NULL,
	[NroUnico] [int] NULL,
	[BaseIva1] [decimal](28, 2) NOT NULL,
	[BaseIva2] [decimal](28, 2) NOT NULL,
	[BaseIva3] [decimal](28, 2) NOT NULL,
	[MtoIva1] [decimal](28, 2) NOT NULL,
	[MtoIva2] [decimal](28, 2) NOT NULL,
	[MtoIva3] [decimal](28, 2) NOT NULL,
	[MtoAlic1] [decimal](28, 2) NOT NULL,
	[MtoAlic2] [decimal](28, 2) NOT NULL,
	[RetencionIVA] [decimal](28, 2) NOT NULL,
	[AlicRet] [decimal](28, 2) NOT NULL,
	[NroComp] [varchar](14) NULL,
	[NombreRet] [varchar](60) NOT NULL,
	[ID3Ret] [varchar](25) NOT NULL,
	[BaseRet] [decimal](28, 2) NOT NULL,
	[IvaRet] [decimal](28, 2) NOT NULL,
	[NroCtrol] [varchar](20) NULL,
	[PGroup] [int] NULL,
 CONSTRAINT [SAA_LIB_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAACAMPOS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAACAMPOS](
	[CodTbl] [varchar](20) NOT NULL,
	[NumGrp] [int] NOT NULL,
	[NombCpo] [varchar](40) NOT NULL,
	[AliasCpo] [varchar](40) NOT NULL,
	[TipoCpo] [int] NOT NULL,
	[Longitud] [int] NOT NULL,
	[Requerido] [smallint] NOT NULL,
	[CBusqueda] [smallint] NOT NULL,
 CONSTRAINT [SAACAMPOS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTbl] ASC,
	[NumGrp] ASC,
	[NombCpo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAACXC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAACXC](
	[CodClie] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroRegi] [int] NOT NULL,
	[FechaE] [datetime] NOT NULL,
	[FechaV] [datetime] NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[CodOper] [varchar](10) NULL,
	[CodVend] [varchar](10) NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroCtrol] [varchar](20) NULL,
	[FromTran] [smallint] NOT NULL,
	[TipoCxc] [varchar](2) NULL,
	[Moneda] [varchar](5) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[MontoMEx] [decimal](28, 3) NOT NULL,
	[SaldoMEx] [decimal](28, 3) NOT NULL,
	[Document] [varchar](40) NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MontoNeto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[OrgTax] [decimal](28, 3) NOT NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[SaldoAct] [decimal](28, 4) NULL,
	[EsLibroI] [smallint] NOT NULL,
	[BaseImpo] [decimal](28, 3) NOT NULL,
	[CancelI] [decimal](28, 3) NOT NULL,
	[CancelA] [decimal](28, 3) NOT NULL,
	[CancelE] [decimal](28, 3) NOT NULL,
	[CancelC] [decimal](28, 3) NOT NULL,
	[CancelT] [decimal](28, 3) NOT NULL,
	[CancelG] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[DetalChq] [varchar](40) NULL,
	[EsUnPago] [smallint] NOT NULL,
	[AfectaVta] [smallint] NOT NULL,
	[AfectaComi] [smallint] NOT NULL,
	[EsChqDev] [smallint] NOT NULL,
	[EsReten] [smallint] NOT NULL,
	[UltIntMora] [datetime] NULL,
	[PrxVisita] [datetime] NULL,
	[NumeroD1] [varchar](15) NULL,
	[FechaD1] [datetime] NULL,
	[SaldoOrg] [decimal](28, 3) NOT NULL,
	[FechaI] [datetime] NULL,
	[CancelP] [decimal](28, 3) NOT NULL,
	[NumeroT] [varchar](15) NULL,
	[NumeroN] [varchar](20) NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[FechaR] [datetime] NULL,
	[FechaT] [datetime] NULL,
	[CancelD] [decimal](28, 3) NOT NULL,
	[EsRetenIVA] [smallint] NOT NULL,
	[Debitos] [decimal](28, 3) NOT NULL,
	[Creditos] [decimal](28, 3) NOT NULL,
	[TipoTraE] [smallint] NOT NULL,
	[AutSRI] [varchar](40) NULL,
	[NroEstable] [varchar](10) NULL,
	[PtoEmision] [varchar](10) NULL,
 CONSTRAINT [SAACXC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodClie] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAACXP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAACXP](
	[CodProv] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroRegi] [int] NOT NULL,
	[FechaE] [datetime] NOT NULL,
	[FechaV] [datetime] NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[CodOper] [varchar](10) NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroCtrol] [varchar](20) NULL,
	[FromTran] [smallint] NOT NULL,
	[TipoCxP] [varchar](2) NULL,
	[Moneda] [varchar](5) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[MontoMEx] [decimal](28, 3) NOT NULL,
	[SaldoMEx] [decimal](28, 3) NOT NULL,
	[Document] [varchar](40) NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MontoNeto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[OrgTax] [decimal](28, 3) NOT NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[SaldoAct] [decimal](28, 4) NULL,
	[EsLibroI] [smallint] NOT NULL,
	[BaseImpo] [decimal](28, 3) NOT NULL,
	[CancelI] [decimal](28, 3) NOT NULL,
	[CancelA] [decimal](28, 3) NOT NULL,
	[CancelE] [decimal](28, 3) NOT NULL,
	[CancelC] [decimal](28, 3) NOT NULL,
	[CancelT] [decimal](28, 3) NOT NULL,
	[CancelG] [decimal](28, 3) NOT NULL,
	[EsUnPago] [smallint] NOT NULL,
	[EsReten] [smallint] NOT NULL,
	[DetalChq] [varchar](40) NULL,
	[AfectaCom] [smallint] NOT NULL,
	[SaldoOrg] [decimal](28, 3) NOT NULL,
	[FechaI] [datetime] NULL,
	[NumeroN] [varchar](20) NULL,
	[Descrip] [varchar](60) NULL,
	[ID3] [varchar](15) NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[FechaR] [datetime] NULL,
	[FechaT] [datetime] NULL,
	[NroOPago] [varchar](15) NULL,
	[CancelD] [decimal](28, 3) NOT NULL,
	[EsRetenIVA] [smallint] NOT NULL,
	[Debitos] [decimal](28, 3) NOT NULL,
	[Creditos] [decimal](28, 3) NOT NULL,
	[NroEstable] [varchar](10) NULL,
	[PtoEmision] [varchar](10) NULL,
	[AutSRI] [varchar](40) NULL,
	[TipoSus] [smallint] NOT NULL,
	[TipoTraE] [smallint] NOT NULL,
 CONSTRAINT [SAACXP_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAAGRUPOS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAAGRUPOS](
	[CodTbl] [varchar](20) NOT NULL,
	[NumGrp] [int] NOT NULL,
	[NombreGrp] [varchar](50) NOT NULL,
	[AliasGrp] [varchar](50) NOT NULL,
	[EsTrans] [smallint] NOT NULL,
	[NMeses] [int] NOT NULL,
	[NMovim] [int] NOT NULL,
 CONSTRAINT [SAAGRUPOS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTbl] ASC,
	[NumGrp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAANULAC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAANULAC](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](1) NULL,
	[AutSRI] [varchar](40) NULL,
	[NroEstable] [varchar](10) NOT NULL,
	[PtoEmision] [varchar](10) NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaL] [datetime] NULL,
	[NroInicio] [int] NOT NULL,
	[NroFinal] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAAOPER]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAAOPER](
	[CodTbl] [varchar](20) NOT NULL,
	[NumGrp] [int] NOT NULL,
	[NroOper] [int] NOT NULL,
	[PDtaReq] [int] NOT NULL,
 CONSTRAINT [SAAOPER_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTbl] ASC,
	[NumGrp] ASC,
	[NroOper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAAUTORIZ]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAAUTORIZ](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](1) NULL,
	[CodEsta] [varchar](10) NOT NULL,
	[FechaV] [datetime] NULL,
	[NroInicio] [int] NOT NULL,
	[NroFinal] [int] NOT NULL,
	[AutSRI] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACFAC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACFAC](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[TipoTra] [varchar](2) NOT NULL,
	[NumeroD] [varchar](10) NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[FechaE] [datetime] NULL,
	[FechaT] [datetime] NULL,
 CONSTRAINT [SACFAC_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACFGIAE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACFGIAE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIAE] [varchar](10) NOT NULL,
	[PXMNUM] [numeric](10, 0) NOT NULL,
	[ULTNROREGI] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACIUDAD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACIUDAD](
	[Descrip] [varchar](40) NOT NULL,
	[Ciudad] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [int] NOT NULL,
	[Pais] [int] NOT NULL,
 CONSTRAINT [SACIUDAD_IX0] PRIMARY KEY CLUSTERED 
(
	[Descrip] ASC,
	[Ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLICNV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLICNV](
	[CodConv] [varchar](10) NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
 CONSTRAINT [SACLICNV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodConv] ASC,
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLIE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLIE](
	[CodClie] [varchar](15) NOT NULL,
	[Descrip] [varchar](60) NULL,
	[CodSucu] [varchar](5) NULL,
	[ID3] [varchar](25) NULL,
	[Clase] [varchar](10) NULL,
	[Represent] [varchar](40) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](60) NULL,
	[Fax] [varchar](30) NULL,
	[NIT] [varchar](15) NULL,
	[CodZona] [varchar](10) NULL,
	[CodVend] [varchar](10) NULL,
	[CodConv] [varchar](10) NULL,
	[TipoCli] [smallint] NOT NULL,
	[TipoPVP] [smallint] NOT NULL,
	[IntMora] [smallint] NOT NULL,
	[EsGranCont] [smallint] NOT NULL,
	[EsCredito] [smallint] NOT NULL,
	[LimiteCred] [decimal](28, 3) NOT NULL,
	[DiasCred] [int] NOT NULL,
	[EsToleran] [smallint] NOT NULL,
	[DiasTole] [int] NOT NULL,
	[FechaE] [datetime] NULL,
	[Observa] [varchar](40) NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[MontoMax] [decimal](28, 3) NOT NULL,
	[MtoMaxCred] [decimal](28, 3) NOT NULL,
	[PagosA] [decimal](28, 3) NOT NULL,
	[PromPago] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[FechaUV] [datetime] NULL,
	[MontoUV] [decimal](28, 3) NOT NULL,
	[NumeroUV] [varchar](20) NULL,
	[FechaUP] [datetime] NULL,
	[MontoUP] [decimal](28, 3) NOT NULL,
	[NumeroUP] [varchar](20) NULL,
	[EsMoneda] [smallint] NOT NULL,
	[EdoKC] [varchar](5) NULL,
	[Activo] [smallint] NOT NULL,
	[SaldoPtos] [decimal](28, 3) NOT NULL,
	[Movil] [varchar](15) NULL,
	[CodAlte] [varchar](15) NULL,
	[TipoID3] [int] NOT NULL,
	[DescOrder] [varchar](10) NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[DescripExt] [varchar](250) NULL,
	[TipoID] [smallint] NOT NULL,
 CONSTRAINT [SACLIE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLIE_01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLIE_01](
	[CodClie] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[FecTrn] [datetime] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[Departamento] [varchar](20) NULL,
	[Email] [varchar](40) NULL,
	[Block] [int] NULL,
 CONSTRAINT [SACLIE_01_IX0] PRIMARY KEY CLUSTERED 
(
	[CodClie] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLILOT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLILOT](
	[CodFacL] [varchar](10) NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
 CONSTRAINT [SACLILOT_IX0] PRIMARY KEY CLUSTERED 
(
	[CodFacL] ASC,
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLIOFE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLIOFE](
	[NumeroD] [varchar](10) NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
 CONSTRAINT [SACLIOFE_IX0] PRIMARY KEY CLUSTERED 
(
	[NumeroD] ASC,
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACLPR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACLPR](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
	[EsServ] [int] NOT NULL,
	[REFERE] [varchar](15) NULL,
	[TIPOFAC] [varchar](1) NULL,
	[numerod] [varchar](10) NULL,
	[cantidad] [decimal](28, 4) NOT NULL,
	[precio] [decimal](28, 4) NOT NULL,
	[fechae] [datetime] NULL,
 CONSTRAINT [SACLPR_IX0] PRIMARY KEY CLUSTERED 
(
	[CodItem] ASC,
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACMEC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACMEC](
	[CodMeca] [varchar](10) NOT NULL,
	[TipoRgo] [int] NOT NULL,
	[NroUnico] [int] NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SACMEC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMeca] ASC,
	[TipoRgo] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACODBAR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACODBAR](
	[CodAlte] [varchar](25) NOT NULL,
	[CodProd] [varchar](15) NOT NULL,
 CONSTRAINT [SACODBAR_IX0] PRIMARY KEY CLUSTERED 
(
	[CodAlte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACOMP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACOMP](
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[NroCtrol] [varchar](20) NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[Signo] [smallint] NOT NULL,
	[OTipo] [varchar](1) NULL,
	[ONumero] [varchar](20) NULL,
	[TipoTra] [varchar](1) NULL,
	[NumeroC] [varchar](20) NULL,
	[Moneda] [varchar](5) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[MontoMEx] [decimal](28, 3) NOT NULL,
	[CodUbic] [varchar](10) NULL,
	[Descrip] [varchar](60) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[ID3] [varchar](25) NULL,
	[NIT] [varchar](15) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[OtrosC] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[Fletes] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[DesctoP] [decimal](28, 3) NOT NULL,
	[EsConsig] [smallint] NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[CancelI] [decimal](28, 3) NOT NULL,
	[CancelE] [decimal](28, 3) NOT NULL,
	[CancelT] [decimal](28, 3) NOT NULL,
	[CancelC] [decimal](28, 3) NOT NULL,
	[CancelA] [decimal](28, 3) NOT NULL,
	[CancelG] [decimal](28, 3) NOT NULL,
	[Descto1] [decimal](28, 3) NOT NULL,
	[MtoInt1] [decimal](28, 3) NOT NULL,
	[Descto2] [decimal](28, 3) NOT NULL,
	[MtoInt2] [decimal](28, 3) NOT NULL,
	[MtoFinanc] [decimal](28, 3) NOT NULL,
	[DetalChq] [varchar](40) NULL,
	[TotalPrd] [decimal](28, 3) NOT NULL,
	[TotalSrv] [decimal](28, 3) NOT NULL,
	[OrdenC] [varchar](30) NULL,
	[NumeroR] [varchar](20) NULL,
	[CodOper] [varchar](10) NULL,
	[NGiros] [int] NOT NULL,
	[NMeses] [int] NOT NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Status] [varchar](2) NULL,
	[NumeroN] [varchar](20) NULL,
	[NumeroP] [varchar](20) NULL,
	[NumeroE] [varchar](20) NULL,
	[SaldoAct] [decimal](28, 3) NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[MtoNCredito] [decimal](28, 3) NOT NULL,
	[MtoNDebito] [decimal](28, 3) NOT NULL,
	[FechaI] [datetime] NULL,
	[MtoTotal] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[FechaR] [datetime] NULL,
	[FechaT] [datetime] NULL,
	[NROUNICO] [int] IDENTITY(1,1) NOT NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[TipoTraE] [smallint] NOT NULL,
	[NroEstable] [varchar](10) NULL,
	[PtoEmision] [varchar](10) NULL,
	[AutSRI] [varchar](40) NULL,
	[TipoSus] [smallint] NOT NULL,
 CONSTRAINT [SACOMP_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACOMP_01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACOMP_01](
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodProv] [varchar](30) NOT NULL,
	[Ret_Alcaldia] [smallint] NULL,
	[MontoIAE] [decimal](28, 3) NULL,
	[NumeroIAE] [varchar](14) NULL,
	[NroUnicoCxP] [int] NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SACOMP_01_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACONF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACONF](
	[CodSucu] [varchar](5) NOT NULL,
	[Descrip] [varchar](80) NULL,
	[Direc1] [varchar](80) NULL,
	[Direc2] [varchar](80) NULL,
	[Email] [varchar](60) NULL,
	[Telef] [varchar](40) NULL,
	[RIF] [varchar](30) NULL,
	[NIT] [varchar](15) NULL,
	[Ciudad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Pais] [int] NOT NULL,
	[SPais] [varchar](30) NULL,
	[SEstado] [varchar](30) NULL,
	[SCiudad] [varchar](30) NULL,
	[CodTaxs] [varchar](5) NULL,
	[IdVersion] [int] NOT NULL,
	[IdVerXtra] [int] NOT NULL,
	[MesCurso] [varchar](6) NULL,
	[MesTran] [int] NOT NULL,
	[MesOC] [int] NOT NULL,
	[MesPrf] [int] NOT NULL,
	[CostoMes] [decimal](28, 3) NOT NULL,
	[CorrelPrd] [smallint] NOT NULL,
	[MtoExtraG] [decimal](28, 3) NOT NULL,
	[ImpFleteV] [smallint] NOT NULL,
	[ImpFleteC] [smallint] NOT NULL,
	[AutoReten] [smallint] NOT NULL,
	[PorctReten] [decimal](28, 3) NOT NULL,
	[PedirNCtrl] [smallint] NOT NULL,
	[RetenIsrl] [smallint] NOT NULL,
	[Redond] [smallint] NOT NULL,
	[RedTotal] [smallint] NOT NULL,
	[ObliOper] [smallint] NOT NULL,
	[PaswLim] [int] NOT NULL,
	[Adicional] [binary](400) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[EsMoneda] [smallint] NOT NULL,
	[UsaNEL] [int] NOT NULL,
	[InvConsig] [int] NOT NULL,
	[PrioridadIC] [int] NOT NULL,
	[CorrelUNC] [smallint] NOT NULL,
	[ValorPtos] [decimal](28, 3) NOT NULL,
	[MesesPtos] [int] NOT NULL,
	[FechaUC] [datetime] NULL,
	[FactorM] [decimal](28, 3) NOT NULL,
	[UsaFactorM] [smallint] NOT NULL,
	[SimbFac] [varchar](3) NULL,
	[Imagen] [image] NULL,
	[RetenIVA] [smallint] NOT NULL,
	[Municipio] [int] NOT NULL,
	[SMunicipio] [varchar](30) NULL,
	[ZipCode] [varchar](20) NULL,
	[IdAppNot] [int] NOT NULL,
	[NroSerial] [varchar](25) NULL,
	[KeySerial] [varchar](10) NULL,
	[NroEstable] [varchar](10) NULL,
	[ValorPtosV] [decimal](28, 3) NOT NULL,
	[RUCUser] [varchar](20) NULL,
	[RUCPwd] [varchar](20) NULL,
	[EstablReten] [varchar](5) NULL,
	[PtoEmiReten] [varchar](5) NULL,
	[FecCadReten] [datetime] NULL,
	[AutSRIReten] [varchar](10) NULL,
 CONSTRAINT [SACONF_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACONPRECIO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACONPRECIO](
	[UsaPTactil] [smallint] NOT NULL,
	[UsaDescrip2] [smallint] NOT NULL,
	[UsaDescrip3] [smallint] NOT NULL,
	[UsaImagen] [smallint] NOT NULL,
	[TipoPVP] [smallint] NOT NULL,
	[PVPLote] [smallint] NOT NULL,
	[UsaTax] [smallint] NOT NULL,
	[UsaDscto] [smallint] NOT NULL,
	[UsaPorcD] [smallint] NOT NULL,
	[CodClie] [varchar](10) NULL,
	[TextInf1] [varchar](80) NULL,
	[TextInf2] [varchar](80) NULL,
	[TextInf3] [varchar](80) NULL,
	[TextInf4] [varchar](80) NULL,
	[TextInf5] [varchar](80) NULL,
	[Logo] [image] NULL,
	[TextPrecio] [varchar](20) NULL,
	[TextIncTax] [varchar](30) NULL,
	[TextDscto] [varchar](20) NULL,
	[TextOferta] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACONV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACONV](
	[CodConv] [varchar](10) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[Descrip] [varchar](40) NULL,
	[Autori] [varchar](40) NULL,
	[Respon] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[EsFijo] [smallint] NOT NULL,
	[TipoCnv] [smallint] NOT NULL,
	[EsBase] [smallint] NOT NULL,
	[Activo] [smallint] NOT NULL,
	[Frecuencia] [int] NOT NULL,
	[FechaUC] [datetime] NULL,
 CONSTRAINT [SACONV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodConv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACORRELSIS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACORRELSIS](
	[CodSucu] [varchar](10) NOT NULL,
	[Fieldname] [varchar](25) NOT NULL,
	[ValueStr] [varchar](40) NULL,
	[ValueInt] [int] NOT NULL,
	[ValueDec] [decimal](28, 3) NOT NULL,
	[CodEsta] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACORTEZ]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACORTEZ](
	[NROUNICO] [int] IDENTITY(1,1) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[NumeroP] [varchar](15) NULL,
	[NumeroZ] [varchar](10) NULL,
	[MtoTotal] [decimal](28, 3) NOT NULL,
	[NumeroF] [varchar](10) NULL,
	[NroFacts] [int] NOT NULL,
	[NumeroR] [varchar](10) NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[MtoTotal1] [decimal](28, 3) NOT NULL,
	[MtoTax1] [decimal](28, 3) NOT NULL,
	[MtoTotal2] [decimal](28, 3) NOT NULL,
	[MtoTax2] [decimal](28, 3) NOT NULL,
	[MtoTotal3] [decimal](28, 3) NOT NULL,
	[MtoTax3] [decimal](28, 3) NOT NULL,
	[TDevExento] [decimal](28, 3) NOT NULL,
	[DevMtoTotal] [decimal](28, 3) NOT NULL,
	[DevMtoTotal1] [decimal](28, 3) NOT NULL,
	[DevMtoTax1] [decimal](28, 3) NOT NULL,
	[DevMtoTotal2] [decimal](28, 3) NOT NULL,
	[DevMtoTax2] [decimal](28, 3) NOT NULL,
	[DevMtoTotal3] [decimal](28, 3) NOT NULL,
	[DevMtoTax3] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[NumeroC] [varchar](10) NULL,
	[NroDevol] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SACVEN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACVEN](
	[CodVend] [varchar](10) NOT NULL,
	[TipoRgo] [int] NOT NULL,
	[NroUnico] [int] NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SACVEN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodVend] ASC,
	[TipoRgo] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SADEPO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SADEPO](
	[CodUbic] [varchar](10) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[CodSucu] [varchar](5) NULL,
	[CodAlte] [varchar](10) NULL,
	[Clase] [varchar](10) NULL,
	[Represent] [varchar](40) NULL,
	[EsVirtual] [smallint] NOT NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[Activo] [smallint] NOT NULL,
	[Printer] [smallint] NOT NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
 CONSTRAINT [SADEPO_IX0] PRIMARY KEY CLUSTERED 
(
	[CodUbic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SADOLAR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SADOLAR](
	[ANO] [int] NOT NULL,
	[MES] [int] NOT NULL,
	[VALOR] [decimal](28, 2) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAECLI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAECLI](
	[CodClie] [varchar](15) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[NroFacts] [int] NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[MtoDevol] [decimal](28, 3) NOT NULL,
	[NroDevol] [int] NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[NroPagos] [int] NOT NULL,
	[MtoNDebito] [decimal](28, 3) NOT NULL,
	[NroNDebito] [int] NOT NULL,
	[MtoNCredito] [decimal](28, 3) NOT NULL,
	[NroNCredito] [int] NOT NULL,
	[MtoRetenImp] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAECLI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodClie] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAECOM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAECOM](
	[Periodo] [varchar](8) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[MtoCompra] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[Fletes] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[NroComps] [int] NOT NULL,
	[NroDevol] [int] NOT NULL,
 CONSTRAINT [SAECOM_IX0] PRIMARY KEY CLUSTERED 
(
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEMEC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEMEC](
	[CodMeca] [varchar](10) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[CntVentas] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAEMEC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMeca] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEOPI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEOPI](
	[Periodo] [varchar](8) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[MtoCargos] [decimal](28, 3) NOT NULL,
	[MtoDescarg] [decimal](28, 3) NOT NULL,
	[MtoTraslad] [decimal](28, 3) NOT NULL,
	[CntCargos] [int] NOT NULL,
	[CntDescarg] [int] NOT NULL,
	[CntTraslad] [int] NOT NULL,
 CONSTRAINT [SAEOPI_IX0] PRIMARY KEY CLUSTERED 
(
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEPRD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEPRD](
	[CodProd] [varchar](15) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[ExInicial] [decimal](28, 3) NOT NULL,
	[MtoCompra] [decimal](28, 3) NOT NULL,
	[CntCompra] [decimal](28, 3) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[CntVentas] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[MtoCargos] [decimal](28, 3) NOT NULL,
	[CntCargos] [decimal](28, 3) NOT NULL,
	[MtoDescarg] [decimal](28, 3) NOT NULL,
	[CntDescarg] [decimal](28, 3) NOT NULL,
	[CntInicial] [decimal](28, 3) NOT NULL,
	[ExFinal] [decimal](28, 3) NOT NULL,
	[CostoFinal] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAEPRD_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEPRV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEPRV](
	[CodProv] [varchar](15) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[NroComps] [int] NOT NULL,
	[MtoDevol] [decimal](28, 3) NOT NULL,
	[NroDevol] [int] NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[NroPagos] [int] NOT NULL,
	[MtoNDebito] [decimal](28, 3) NOT NULL,
	[NroNDebito] [int] NOT NULL,
	[MtoNCredito] [decimal](28, 3) NOT NULL,
	[NroNCredito] [int] NOT NULL,
	[MtoRetenImp] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAEPRV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEQUI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEQUI](
	[CodProd] [varchar](15) NOT NULL,
	[CodAlte] [varchar](15) NOT NULL,
 CONSTRAINT [SAEQUI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodAlte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAESRV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAESRV](
	[CodServ] [varchar](10) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[CntVentas] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[MtoCompra] [decimal](28, 3) NOT NULL,
	[CntCompra] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAESRV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodServ] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAESTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAESTA](
	[CodEsta] [varchar](10) NOT NULL,
	[Descrip] [varchar](50) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodUsua] [varchar](10) NOT NULL,
	[PtoEmision] [varchar](10) NULL,
 CONSTRAINT [SAESTA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodEsta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAESTADO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAESTADO](
	[Descrip] [varchar](40) NOT NULL,
	[Estado] [int] IDENTITY(1,1) NOT NULL,
	[Pais] [int] NOT NULL,
 CONSTRAINT [SAESTADO_IX0] PRIMARY KEY CLUSTERED 
(
	[Descrip] ASC,
	[Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAETAR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAETAR](
	[CodTarj] [varchar](10) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[MtoRetenImp] [decimal](28, 3) NOT NULL,
	[Impuesto] [decimal](28, 3) NOT NULL,
	[MtoTotReten] [decimal](28, 3) NOT NULL,
	[MtoTips] [decimal](28, 3) NOT NULL,
	[MtoIngreso] [decimal](28, 3) NOT NULL,
	[MtoCompra] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAETAR_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTarj] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEVEN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEVEN](
	[CodVend] [varchar](10) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[MtoIngreso] [decimal](28, 3) NOT NULL,
	[MtoComiVta] [decimal](28, 3) NOT NULL,
	[MtoComiCob] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAEVEN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodVend] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEVTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEVTA](
	[Periodo] [varchar](8) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[Fletes] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[NroFacts] [int] NOT NULL,
	[NroDevol] [int] NOT NULL,
 CONSTRAINT [SAEVTA_IX0] PRIMARY KEY CLUSTERED 
(
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEXIS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEXIS](
	[CodProd] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[PuestoI] [varchar](10) NULL,
	[Existen] [decimal](28, 3) NOT NULL,
	[ExUnidad] [decimal](28, 3) NOT NULL,
	[CantPed] [decimal](28, 3) NOT NULL,
	[UnidPed] [decimal](28, 3) NOT NULL,
	[CantCom] [decimal](28, 3) NOT NULL,
	[UnidCom] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAEXIS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodUbic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEXISCON]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEXISCON](
	[CodProd] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[CodAlte] [varchar](10) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[TipoTra] [varchar](1) NULL,
	[NumeroD] [varchar](20) NULL,
	[NumeroK] [varchar](10) NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[EsUnid] [smallint] NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[NroLinea] [int] NOT NULL,
 CONSTRAINT [SAEXISCON_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodUbic] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAEXTSERVICES]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAEXTSERVICES](
	[ServiceType] [int] NOT NULL,
	[NroSerial] [varchar](20) NOT NULL,
	[KeySerial] [varchar](10) NULL,
	[SMSLogin] [varchar](30) NULL,
	[SMSPassword] [varchar](30) NULL,
	[HostService] [varchar](60) NULL,
	[PortService] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
 CONSTRAINT [SAEXTSERVICES_IX0] PRIMARY KEY CLUSTERED 
(
	[ServiceType] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAFACT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAFACT](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroCtrol] [varchar](20) NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[Signo] [smallint] NOT NULL,
	[OTipo] [varchar](1) NULL,
	[ONumero] [varchar](10) NULL,
	[TipoTra] [varchar](1) NULL,
	[NumeroC] [varchar](10) NULL,
	[NumeroK] [varchar](15) NULL,
	[NumeroF] [varchar](20) NULL,
	[NumeroP] [varchar](15) NULL,
	[EsExPickup] [smallint] NOT NULL,
	[Moneda] [varchar](5) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[MontoMEx] [decimal](28, 3) NOT NULL,
	[CodClie] [varchar](15) NULL,
	[CodVend] [varchar](10) NULL,
	[CodUbic] [varchar](10) NULL,
	[Descrip] [varchar](60) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Direc3] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[ID3] [varchar](25) NULL,
	[NIT] [varchar](15) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[Fletes] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[CostoPrd] [decimal](28, 3) NOT NULL,
	[CostoSrv] [decimal](28, 3) NOT NULL,
	[DesctoP] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[CancelI] [decimal](28, 3) NOT NULL,
	[CancelA] [decimal](28, 3) NOT NULL,
	[CancelE] [decimal](28, 3) NOT NULL,
	[CancelC] [decimal](28, 3) NOT NULL,
	[CancelT] [decimal](28, 3) NOT NULL,
	[CancelG] [decimal](28, 3) NOT NULL,
	[Cambio] [decimal](28, 3) NOT NULL,
	[EsConsig] [smallint] NOT NULL,
	[MtoExtra] [decimal](28, 3) NOT NULL,
	[Descto1] [decimal](28, 3) NOT NULL,
	[PctAnual] [decimal](28, 3) NOT NULL,
	[MtoInt1] [decimal](28, 3) NOT NULL,
	[Descto2] [decimal](28, 3) NOT NULL,
	[PctManejo] [decimal](28, 3) NOT NULL,
	[MtoInt2] [decimal](28, 3) NOT NULL,
	[MtoFinanc] [decimal](28, 3) NOT NULL,
	[DetalChq] [varchar](40) NULL,
	[TotalPrd] [decimal](28, 3) NOT NULL,
	[TotalSrv] [decimal](28, 3) NOT NULL,
	[OrdenC] [varchar](30) NULL,
	[CodOper] [varchar](10) NULL,
	[NGiros] [int] NOT NULL,
	[NMeses] [int] NOT NULL,
	[MtoComiVta] [decimal](28, 3) NOT NULL,
	[MtoComiCob] [decimal](28, 3) NOT NULL,
	[MtoComiVtaD] [decimal](28, 3) NOT NULL,
	[MtoComiCobD] [decimal](28, 3) NOT NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Status] [varchar](2) NULL,
	[NumeroR] [varchar](20) NULL,
	[NumeroD1] [varchar](15) NULL,
	[FechaD1] [datetime] NULL,
	[SaldoAct] [decimal](28, 3) NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[MtoNCredito] [decimal](28, 3) NOT NULL,
	[MtoNDebito] [decimal](28, 3) NOT NULL,
	[FechaI] [datetime] NULL,
	[ValorPtos] [decimal](28, 3) NOT NULL,
	[CancelP] [decimal](28, 3) NOT NULL,
	[NumeroT] [varchar](15) NULL,
	[MtoTotal] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[NumeroZ] [varchar](10) NULL,
	[FechaR] [datetime] NULL,
	[FechaT] [datetime] NULL,
	[NROUNICO] [int] IDENTITY(1,1) NOT NULL,
	[NumeroE] [varchar](20) NULL,
	[Municipio] [int] NOT NULL,
	[CodConv] [varchar](10) NULL,
	[ZipCode] [varchar](20) NULL,
	[FACTURAPENDIENTE] [int] NULL,
	[EsCorrel] [smallint] NOT NULL,
	[AutSRI] [varchar](40) NULL,
	[NroEstable] [varchar](10) NULL,
	[PtoEmision] [varchar](10) NULL,
	[TipoTraE] [smallint] NOT NULL,
	[NumeroNCF] [varchar](20) NULL,
 CONSTRAINT [SAFACT_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAFALO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAFALO](
	[CodFacL] [varchar](10) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[Descrip] [varchar](40) NULL,
	[DiasCred] [int] NOT NULL,
	[CodVend] [varchar](10) NULL,
	[CodOper] [varchar](10) NULL,
	[TipoFac] [smallint] NOT NULL,
	[FechaE] [datetime] NULL,
	[TipoOpe] [smallint] NOT NULL,
 CONSTRAINT [SAFALO_IX0] PRIMARY KEY CLUSTERED 
(
	[CodFacL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAFIEL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAFIEL](
	[tablename] [varchar](60) NOT NULL,
	[fieldname] [varchar](60) NOT NULL,
	[fieldalias] [varchar](60) NULL,
	[datatype] [varchar](60) NULL,
	[selectable] [char](1) NULL,
	[searchable] [char](1) NULL,
	[sortable] [char](1) NULL,
	[autosearch] [char](1) NULL,
	[mandatory] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[tablename] ASC,
	[fieldname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAFLDREF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAFLDREF](
	[Tabla] [varchar](60) NOT NULL,
	[NCampo] [int] NOT NULL,
	[TipoC] [int] NOT NULL,
	[Descrip] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Tabla] ASC,
	[NCampo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAICLI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAICLI](
	[CodClie] [varchar](15) NOT NULL,
	[Imagen] [image] NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAICLI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodClie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIMEC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIMEC](
	[CodMeca] [varchar](10) NOT NULL,
	[Imagen] [image] NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAIMEC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMeca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAINITI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAINITI](
	[CodProd] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[ExInicial] [decimal](28, 3) NOT NULL,
	[ExUndIni] [decimal](28, 3) NOT NULL,
	[ExFinal] [decimal](28, 3) NOT NULL,
	[ExUndFinal] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[CostoFinal] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAINITI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodUbic] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAINSTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAINSTA](
	[CodInst] [int] IDENTITY(1,1) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[CodAlte] [varchar](200) NULL,
	[Nivel] [int] NOT NULL,
	[InsPadre] [int] NOT NULL,
	[CodCate] [int] NOT NULL,
	[CatPadre] [int] NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[DEsComp] [smallint] NOT NULL,
	[DEsSeri] [smallint] NOT NULL,
	[DEsLote] [smallint] NOT NULL,
	[DEsComi] [smallint] NOT NULL,
	[DEsCorrel] [smallint] NOT NULL,
	[DigitosC] [smallint] NOT NULL,
	[DEsTabla] [smallint] NOT NULL,
	[TipoIns] [smallint] NOT NULL,
	[EdoKC] [varchar](10) NULL,
 CONSTRAINT [SAINSTA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodInst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIPACXC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIPACXC](
	[NroPpal] [int] NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[TipoPag] [int] NOT NULL,
	[CodPago] [varchar](10) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Impuesto] [decimal](28, 3) NOT NULL,
	[RetencT] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAIPACXC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NroPpal] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIPAVTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIPAVTA](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[TipoPag] [int] NOT NULL,
	[CodPago] [varchar](10) NULL,
	[Descrip] [varchar](40) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Propina] [decimal](28, 3) NOT NULL,
	[Impuesto] [decimal](28, 3) NOT NULL,
	[RetencT] [decimal](28, 3) NOT NULL,
	[Descrip1] [varchar](30) NULL,
	[Cuenta] [varchar](20) NULL,
	[NroLote] [varchar](5) NULL,
	[Afiliado] [varchar](15) NULL,
	[Terminal] [varchar](5) NULL,
	[FechaE] [datetime] NULL,
	[Aprobado] [varchar](10) NULL,
	[Refere] [varchar](10) NULL,
	[Traza] [varchar](10) NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAIPAVTA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIPRD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIPRD](
	[CodProd] [varchar](15) NOT NULL,
	[Imagen] [image] NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAIPRD_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIPRV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIPRV](
	[CodProv] [varchar](15) NOT NULL,
	[Imagen] [image] NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAIPRV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITCV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITCV](
	[CodConv] [varchar](10) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
	[TipoCnv] [smallint] NOT NULL,
	[Medida] [smallint] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
	[Frecuencia] [int] NOT NULL,
	[MontoMax] [decimal](28, 3) NOT NULL,
	[FechaUV] [datetime] NULL,
	[TipoPVP] [smallint] NOT NULL,
 CONSTRAINT [SAITCV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodConv] ASC,
	[CodItem] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITEMCOM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITEMCOM](
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[OTipo] [varchar](1) NULL,
	[ONumero] [varchar](20) NULL,
	[Estado] [smallint] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[Descrip1] [varchar](40) NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Descrip4] [varchar](40) NULL,
	[Descrip5] [varchar](40) NULL,
	[Descrip6] [varchar](40) NULL,
	[Descrip7] [varchar](40) NULL,
	[Descrip8] [varchar](40) NULL,
	[Descrip9] [varchar](40) NULL,
	[Descrip10] [varchar](40) NULL,
	[Refere] [varchar](15) NULL,
	[Signo] [smallint] NOT NULL,
	[Cantidad] [decimal](28, 5) NULL,
	[CantidadC] [decimal](28, 3) NOT NULL,
	[CantidadU] [decimal](28, 3) NOT NULL,
	[CantidadA] [decimal](28, 5) NULL,
	[CantidadUA] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 5) NULL,
	[Precio1] [decimal](28, 5) NULL,
	[Precio2] [decimal](28, 5) NULL,
	[Precio3] [decimal](28, 5) NULL,
	[PrecioU] [decimal](28, 5) NULL,
	[Precio] [decimal](28, 5) NULL,
	[Descto] [decimal](28, 5) NULL,
	[NroLote] [varchar](20) NULL,
	[FechaE] [datetime] NULL,
	[FechaL] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[EsServ] [smallint] NOT NULL,
	[EsUnid] [smallint] NOT NULL,
	[EsFreeP] [smallint] NOT NULL,
	[EsPesa] [smallint] NOT NULL,
	[EsExento] [smallint] NOT NULL,
	[UsaServ] [smallint] NOT NULL,
	[DEsLote] [smallint] NOT NULL,
	[DEsSeri] [smallint] NOT NULL,
	[ExistAnt] [decimal](28, 3) NOT NULL,
	[Faltante] [decimal](28, 3) NOT NULL,
	[Status] [varchar](2) NULL,
	[CantidadO] [decimal](28, 3) NOT NULL,
	[ExistAntU] [decimal](28, 3) NOT NULL,
	[Tara] [decimal](28, 3) NOT NULL,
	[TotalItem] [decimal](28, 5) NULL,
	[PrecioU2] [decimal](28, 5) NULL,
	[PrecioU3] [decimal](28, 5) NULL,
	[NroUnicoL] [int] NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[CostOrg] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAITEMCOM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITEMFAC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITEMFAC](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[OTipo] [varchar](1) NULL,
	[ONumero] [varchar](10) NULL,
	[Estado] [smallint] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[CodMeca] [varchar](10) NULL,
	[CodVend] [varchar](10) NULL,
	[Descrip1] [varchar](40) NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Descrip4] [varchar](40) NULL,
	[Descrip5] [varchar](40) NULL,
	[Descrip6] [varchar](40) NULL,
	[Descrip7] [varchar](40) NULL,
	[Descrip8] [varchar](40) NULL,
	[Descrip9] [varchar](40) NULL,
	[Descrip10] [varchar](40) NULL,
	[Refere] [varchar](15) NULL,
	[Signo] [smallint] NOT NULL,
	[CantMayor] [decimal](28, 3) NOT NULL,
	[Cantidad] [decimal](28, 5) NULL,
	[CantidadU] [decimal](28, 3) NOT NULL,
	[CantidadC] [decimal](28, 3) NOT NULL,
	[CantidadA] [decimal](28, 5) NULL,
	[CantidadUA] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 5) NULL,
	[Precio] [decimal](28, 5) NULL,
	[Descto] [decimal](28, 5) NULL,
	[NroLote] [varchar](20) NULL,
	[FechaE] [datetime] NULL,
	[FechaL] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[EsServ] [smallint] NOT NULL,
	[EsUnid] [smallint] NOT NULL,
	[EsFreeP] [smallint] NOT NULL,
	[EsPesa] [smallint] NOT NULL,
	[EsExento] [smallint] NOT NULL,
	[UsaServ] [smallint] NOT NULL,
	[DEsLote] [smallint] NOT NULL,
	[DEsSeri] [smallint] NOT NULL,
	[DEsComp] [smallint] NOT NULL,
	[ExistAnt] [decimal](28, 3) NOT NULL,
	[Status] [varchar](2) NULL,
	[CantidadO] [decimal](28, 3) NOT NULL,
	[ExistAntU] [decimal](28, 3) NOT NULL,
	[NroUnicoL] [int] NOT NULL,
	[Tara] [decimal](28, 3) NOT NULL,
	[TotalItem] [decimal](28, 4) NULL,
	[NumeroE] [varchar](10) NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[PriceO] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAITEMFAC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroLineaC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITEMOPI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITEMOPI](
	[TipoOpI] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[CodUbic2] [varchar](10) NULL,
	[Descrip1] [varchar](40) NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Descrip4] [varchar](40) NULL,
	[Descrip5] [varchar](40) NULL,
	[Descrip6] [varchar](40) NULL,
	[Descrip7] [varchar](40) NULL,
	[Descrip8] [varchar](40) NULL,
	[Descrip9] [varchar](40) NULL,
	[Descrip10] [varchar](40) NULL,
	[Refere] [varchar](15) NULL,
	[Signo] [smallint] NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[CantidadC] [decimal](28, 3) NOT NULL,
	[CantidadU] [decimal](28, 3) NOT NULL,
	[CantidadA] [decimal](28, 3) NOT NULL,
	[CantidadUA] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[Precio] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[CodMeca] [varchar](10) NULL,
	[NroLote] [varchar](20) NULL,
	[FechaE] [datetime] NULL,
	[FechaL] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[EsServ] [smallint] NOT NULL,
	[EsUnid] [smallint] NOT NULL,
	[EsFreeP] [smallint] NOT NULL,
	[EsPesa] [smallint] NOT NULL,
	[EsExento] [smallint] NOT NULL,
	[UsaServ] [smallint] NOT NULL,
	[DEsLote] [smallint] NOT NULL,
	[DEsSeri] [smallint] NOT NULL,
	[ExistAnt] [decimal](28, 3) NOT NULL,
	[Status] [varchar](2) NULL,
	[CantidadO] [decimal](28, 3) NOT NULL,
	[ExistAntU] [decimal](28, 3) NOT NULL,
	[ExistAnt2] [decimal](28, 3) NOT NULL,
	[ExistAntU2] [decimal](28, 3) NOT NULL,
	[Tara] [decimal](28, 3) NOT NULL,
	[TotalItem] [decimal](28, 3) NOT NULL,
	[NroUnicoL] [int] NOT NULL,
	[PrecioU] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[NroLineaC] [int] NOT NULL,
 CONSTRAINT [SAITEMOPI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoOpI] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITEMPLANI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITEMPLANI](
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroRegi] [int] NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[TipoCxc] [varchar](2) NULL,
	[NumeroC] [varchar](15) NOT NULL,
	[Document] [varchar](40) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[CancelI] [decimal](28, 3) NOT NULL,
	[CancelA] [decimal](28, 3) NOT NULL,
	[CancelE] [decimal](28, 3) NOT NULL,
	[CancelC] [decimal](28, 3) NOT NULL,
	[CancelT] [decimal](28, 3) NOT NULL,
	[CancelG] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[DetalChq] [varchar](40) NULL,
	[PrxVisita] [datetime] NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAITEMPLANI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITEO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITEO](
	[NumeroD] [varchar](10) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
	[TipoOfe] [smallint] NOT NULL,
	[Medida] [smallint] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAITEO_IX0] PRIMARY KEY CLUSTERED 
(
	[NumeroD] ASC,
	[CodItem] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITESERVFAC_01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITESERVFAC_01](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
	[SERIAL] [varchar](35) NULL,
	[FALLA] [varchar](35) NULL,
	[SOLUCION] [varchar](35) NULL,
	[DIAS_ENTREGA] [int] NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAITESERVFAC_01_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroLineaC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITFL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITFL](
	[CodFacL] [varchar](10) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[EsServ] [smallint] NOT NULL,
	[EsUnid] [smallint] NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[Precio] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAITFL_IX0] PRIMARY KEY CLUSTERED 
(
	[CodFacL] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITOR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITOR](
	[TipoTra] [int] NOT NULL,
	[NumeroK] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[CodProd] [varchar](15) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[TipoOpI] [varchar](1) NULL,
	[Status] [int] NOT NULL,
	[Precio] [decimal](28, 3) NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[MtoTax1] [decimal](28, 3) NOT NULL,
	[MtoTax2] [decimal](28, 3) NOT NULL,
	[MtoTax3] [decimal](28, 3) NOT NULL,
	[MtoTax4] [decimal](28, 3) NOT NULL,
	[MtoTax5] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAITOR_IX0] PRIMARY KEY CLUSTERED 
(
	[CodUbic] ASC,
	[TipoTra] ASC,
	[NumeroK] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAITRE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAITRE](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[folderid] [int] NOT NULL,
	[itemname] [varchar](60) NOT NULL,
	[itemsize] [int] NULL,
	[itemtype] [int] NOT NULL,
	[modified] [datetime] NOT NULL,
	[deleted] [datetime] NULL,
	[template] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[folderid] ASC,
	[itemtype] ASC,
	[itemname] ASC,
	[modified] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAIVEN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAIVEN](
	[CodVend] [varchar](10) NOT NULL,
	[Imagen] [image] NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAIVEN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodVend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAJOIN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAJOIN](
	[tablename1] [varchar](60) NOT NULL,
	[tablename2] [varchar](60) NOT NULL,
	[jointype] [varchar](60) NULL,
	[fieldnames1] [varchar](255) NULL,
	[operators] [varchar](60) NULL,
	[fieldnames2] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[tablename1] ASC,
	[tablename2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SALOTE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALOTE](
	[CodProd] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodUbic] [varchar](10) NULL,
	[NroLote] [varchar](20) NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[Precio] [decimal](28, 3) NOT NULL,
	[PrecioU] [decimal](28, 3) NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[CantidadU] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[Precio2] [decimal](28, 3) NOT NULL,
	[PrecioU2] [decimal](28, 3) NOT NULL,
	[Precio3] [decimal](28, 3) NOT NULL,
	[PrecioU3] [decimal](28, 3) NOT NULL,
	[Precio1] [decimal](28, 3) NOT NULL,
	[PrecioU1] [decimal](28, 3) NOT NULL,
	[PuestoI] [varchar](10) NULL,
 CONSTRAINT [SALOTE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAMECA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAMECA](
	[CodMeca] [varchar](10) NOT NULL,
	[Descrip] [varchar](60) NULL,
	[CodSucu] [varchar](5) NULL,
	[ID3] [varchar](25) NULL,
	[Clase] [varchar](10) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](60) NULL,
	[DEsComi] [smallint] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Activo] [smallint] NOT NULL,
	[Movil] [varchar](15) NULL,
	[TipoID3] [int] NOT NULL,
	[DescOrder] [varchar](10) NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[TipoID] [smallint] NOT NULL,
 CONSTRAINT [SAMECA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMeca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAMUNICIPIO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAMUNICIPIO](
	[Municipio] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIP] [varchar](40) NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Pais] [int] NOT NULL,
 CONSTRAINT [SAMUNICIPIO_IX0] PRIMARY KEY CLUSTERED 
(
	[DESCRIP] ASC,
	[Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAOFER]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAOFER](
	[NumeroD] [varchar](10) NOT NULL,
	[Descrip] [varchar](40) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[TipoOfe] [smallint] NOT NULL,
	[Autori] [varchar](40) NULL,
	[Respon] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[Frecuencia] [varchar](7) NULL,
	[Activo] [smallint] NOT NULL,
 CONSTRAINT [SAOFER_IX0] PRIMARY KEY CLUSTERED 
(
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAOPEI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAOPEI](
	[TipoOpI] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[CodUbic] [varchar](10) NULL,
	[CodUbic2] [varchar](10) NULL,
	[Signo] [smallint] NOT NULL,
	[OTipo] [varchar](1) NULL,
	[ONumero] [varchar](10) NULL,
	[Autori] [varchar](40) NULL,
	[Respon] [varchar](40) NULL,
	[UsoMat] [varchar](40) NULL,
	[OrdenC] [varchar](30) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[CodOper] [varchar](10) NULL,
	[EsConsig] [smallint] NOT NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Status] [varchar](2) NULL,
	[UsoInterno] [smallint] NOT NULL,
	[FechaT] [datetime] NULL,
	[NROUNICO] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [SAOPEI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoOpI] ASC,
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAOPER]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAOPER](
	[CodOper] [varchar](10) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Clase] [varchar](10) NULL,
	[TipoOpe] [int] NULL,
	[Rango] [varchar](80) NULL,
	[Activo] [smallint] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAORDT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAORDT](
	[TipoTra] [int] NOT NULL,
	[NumeroK] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[Status] [int] NOT NULL,
	[TipoOpI] [varchar](1) NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[TipoCli] [int] NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Direc3] [varchar](60) NULL,
	[Telef] [varchar](30) NULL,
	[ID3] [varchar](25) NULL,
	[NIT] [varchar](15) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[MtoTax1] [decimal](28, 3) NOT NULL,
	[MtoTax2] [decimal](28, 3) NOT NULL,
	[MtoTax3] [decimal](28, 3) NOT NULL,
	[MtoTax4] [decimal](28, 3) NOT NULL,
	[MtoTax5] [decimal](28, 3) NOT NULL,
	[EsExPickup] [int] NOT NULL,
	[TipoPago] [varchar](10) NULL,
	[DescripPago] [varchar](40) NULL,
	[Courier] [varchar](40) NULL,
 CONSTRAINT [SAORDT_IX0] PRIMARY KEY CLUSTERED 
(
	[CodUbic] ASC,
	[TipoTra] ASC,
	[NumeroK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAGCXC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAGCXC](
	[NroPpal] [int] NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroRegi] [int] NOT NULL,
	[TipoCxc] [varchar](2) NULL,
	[MontoDocA] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaO] [datetime] NULL,
	[EsReten] [smallint] NOT NULL,
	[BaseReten] [decimal](28, 3) NOT NULL,
	[CodRete] [varchar](10) NULL,
	[BaseImpo] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[NumeroD1] [varchar](15) NULL,
	[FechaD1] [datetime] NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[CodOper] [varchar](10) NULL,
	[EsRetenIVA] [smallint] NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAPAGCXC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NroPpal] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAGCXP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAGCXP](
	[NroPpal] [int] NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroRegi] [int] NOT NULL,
	[TipoCxP] [varchar](2) NULL,
	[MontoDocA] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaO] [datetime] NULL,
	[EsReten] [smallint] NOT NULL,
	[BaseReten] [decimal](28, 3) NOT NULL,
	[CodRete] [varchar](10) NULL,
	[BaseImpo] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[TExento] [decimal](28, 3) NOT NULL,
	[CodOper] [varchar](10) NULL,
	[EsRetenIVA] [smallint] NOT NULL,
	[Sustraendo] [smallint] NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SAPAGCXP_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NroPpal] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPAIS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPAIS](
	[Descrip] [varchar](40) NOT NULL,
	[Pais] [int] IDENTITY(1,1) NOT NULL,
	[SPais] [varchar](30) NULL,
	[SEstado] [varchar](30) NULL,
	[SCiudad] [varchar](30) NULL,
	[SMunicipio] [varchar](30) NULL,
 CONSTRAINT [SAPAIS_IX0] PRIMARY KEY CLUSTERED 
(
	[Descrip] ASC,
	[Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPART]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPART](
	[CodProd] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodAlte] [varchar](15) NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[EsUnid] [int] NOT NULL,
	[EsServ] [int] NOT NULL,
 CONSTRAINT [SAPART_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPLANI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPLANI](
	[NumeroD] [varchar](20) NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[FechaE] [datetime] NULL,
	[FechaV] [datetime] NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
	[CodOper] [varchar](10) NULL,
	[CodVend] [varchar](10) NULL,
	[Autori] [varchar](40) NULL,
	[Respon] [varchar](40) NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAPLANI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NumeroD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPRIM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPRIM](
	[CodProd] [varchar](15) NOT NULL,
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodProv] [varchar](15) NULL,
	[NumeroD] [varchar](20) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[Moneda] [varchar](10) NULL,
	[FechaE] [datetime] NULL,
	[CostAct] [decimal](28, 3) NOT NULL,
	[CostPro] [decimal](28, 3) NOT NULL,
	[CostAnt] [decimal](28, 3) NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[Precio1] [decimal](28, 3) NOT NULL,
	[Precio2] [decimal](28, 3) NOT NULL,
	[Precio3] [decimal](28, 3) NOT NULL,
	[Costo1] [decimal](28, 3) NOT NULL,
	[Costo2] [decimal](28, 3) NOT NULL,
	[Costo3] [decimal](28, 3) NOT NULL,
	[Costo4] [decimal](28, 3) NOT NULL,
	[Costo5] [decimal](28, 3) NOT NULL,
	[Costo6] [decimal](28, 3) NOT NULL,
	[Costo7] [decimal](28, 3) NOT NULL,
	[Costo8] [decimal](28, 3) NOT NULL,
	[Costo9] [decimal](28, 3) NOT NULL,
	[Costo10] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SAPRIM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPRIMCOM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPRIMCOM](
	[CodProv] [varchar](15) NOT NULL,
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[DocImpo] [varchar](20) NULL,
	[CodItem] [varchar](15) NOT NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[Moneda] [varchar](10) NULL,
	[FechaI] [datetime] NULL,
	[PrecioU] [decimal](28, 3) NOT NULL,
	[Precio1] [decimal](28, 3) NOT NULL,
	[Precio2] [decimal](28, 3) NOT NULL,
	[Precio3] [decimal](28, 3) NOT NULL,
	[PrecioI1] [decimal](28, 3) NOT NULL,
	[PrecioI2] [decimal](28, 3) NOT NULL,
	[PrecioI3] [decimal](28, 3) NOT NULL,
	[Costo1] [decimal](28, 3) NOT NULL,
	[Costo2] [decimal](28, 3) NOT NULL,
	[Costo3] [decimal](28, 3) NOT NULL,
	[Costo4] [decimal](28, 3) NOT NULL,
	[Costo5] [decimal](28, 3) NOT NULL,
	[Costo6] [decimal](28, 3) NOT NULL,
	[Costo7] [decimal](28, 3) NOT NULL,
	[Costo8] [decimal](28, 3) NOT NULL,
	[Costo9] [decimal](28, 3) NOT NULL,
	[Costo10] [decimal](28, 3) NOT NULL,
	[PrecioU2] [decimal](28, 3) NOT NULL,
	[PrecioU3] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[NroLineaC] [int] NOT NULL,
 CONSTRAINT [SAPRIMCOM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPRNGIROS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPRNGIROS](
	[NroUnico] [int] NULL,
	[TIPOFAC] [varchar](1) NOT NULL,
	[NUMEROD] [varchar](20) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPROD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPROD](
	[CodProd] [varchar](15) NOT NULL,
	[CodInst] [int] NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Refere] [varchar](15) NULL,
	[Marca] [varchar](20) NULL,
	[Unidad] [varchar](3) NULL,
	[UndEmpaq] [varchar](3) NULL,
	[CantEmpaq] [decimal](28, 3) NOT NULL,
	[Precio1] [decimal](28, 5) NULL,
	[Precio2] [decimal](28, 5) NULL,
	[Precio3] [decimal](28, 5) NULL,
	[PrecioU] [decimal](28, 5) NULL,
	[CostAct] [decimal](28, 3) NOT NULL,
	[CostPro] [decimal](28, 3) NOT NULL,
	[CostAnt] [decimal](28, 3) NOT NULL,
	[Existen] [decimal](28, 3) NOT NULL,
	[ExUnidad] [decimal](28, 3) NOT NULL,
	[ExistenCon] [decimal](28, 3) NOT NULL,
	[ExUnidadCon] [decimal](28, 3) NOT NULL,
	[Compro] [decimal](28, 3) NOT NULL,
	[Pedido] [decimal](28, 3) NOT NULL,
	[Minimo] [decimal](28, 3) NOT NULL,
	[Maximo] [decimal](28, 3) NOT NULL,
	[Tara] [decimal](28, 3) NOT NULL,
	[DEsComp] [smallint] NOT NULL,
	[DEsComi] [smallint] NOT NULL,
	[DEsSeri] [smallint] NOT NULL,
	[DEsLote] [smallint] NOT NULL,
	[DEsVence] [smallint] NOT NULL,
	[EsPublish] [smallint] NOT NULL,
	[EsImport] [smallint] NOT NULL,
	[EsExento] [smallint] NOT NULL,
	[EsEnser] [smallint] NOT NULL,
	[EsOferta] [smallint] NOT NULL,
	[EsPesa] [smallint] NOT NULL,
	[EsEmpaque] [smallint] NOT NULL,
	[ExDecimal] [smallint] NOT NULL,
	[DiasEntr] [int] NOT NULL,
	[FechaUV] [datetime] NULL,
	[FechaUC] [datetime] NULL,
	[EdoABP] [varchar](5) NULL,
	[Activo] [smallint] NOT NULL,
	[PrecioU2] [decimal](28, 5) NULL,
	[PrecioU3] [decimal](28, 5) NULL,
	[Peso] [decimal](28, 3) NOT NULL,
	[Volumen] [decimal](28, 3) NOT NULL,
	[UndVol] [varchar](3) NULL,
	[EsReten] [smallint] NOT NULL,
	[DiasTole] [int] NOT NULL,
 CONSTRAINT [SAPROD_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPROV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPROV](
	[CodProv] [varchar](15) NOT NULL,
	[Descrip] [varchar](60) NULL,
	[CodSucu] [varchar](5) NULL,
	[ID3] [varchar](25) NULL,
	[Clase] [varchar](10) NULL,
	[Represent] [varchar](40) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](60) NULL,
	[Fax] [varchar](30) NULL,
	[NIT] [varchar](15) NULL,
	[TipoPrv] [smallint] NOT NULL,
	[DiasCred] [int] NOT NULL,
	[FechaE] [datetime] NULL,
	[Observa] [varchar](40) NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[MontoMax] [decimal](28, 3) NOT NULL,
	[PagosA] [decimal](28, 3) NOT NULL,
	[PromPago] [decimal](28, 3) NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[FechaUC] [datetime] NULL,
	[MontoUC] [decimal](28, 3) NOT NULL,
	[NumeroUC] [varchar](20) NULL,
	[FechaUP] [datetime] NULL,
	[MontoUP] [decimal](28, 3) NOT NULL,
	[NumeroUP] [varchar](20) NULL,
	[EsMoneda] [smallint] NOT NULL,
	[EdoKC] [varchar](10) NULL,
	[Activo] [smallint] NOT NULL,
	[Movil] [varchar](15) NULL,
	[EsReten] [smallint] NOT NULL,
	[TipoID3] [int] NOT NULL,
	[DescOrder] [varchar](10) NULL,
	[RetenISLR] [int] NOT NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[TipoID] [smallint] NOT NULL,
 CONSTRAINT [SAPROV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPROV_01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPROV_01](
	[CodProv] [varchar](15) NOT NULL,
	[Grupo] [varchar](10) NULL,
	[Nro_Licencia] [varchar](15) NULL,
	[Alicuota] [decimal](28, 3) NULL,
	[RUC] [varchar](15) NULL,
 CONSTRAINT [SAPROV_01_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPRSRI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPRSRI](
	[CODPROV] [varchar](15) NOT NULL,
	[NroEstable] [varchar](10) NOT NULL,
	[PtoEmision] [varchar](10) NOT NULL,
	[FechaV] [datetime] NULL,
	[NroInicio] [int] NOT NULL,
	[NroFinal] [int] NOT NULL,
	[AutSRI] [varchar](40) NULL,
 CONSTRAINT [SAPRSRI_IX0] PRIMARY KEY CLUSTERED 
(
	[CODPROV] ASC,
	[NroEstable] ASC,
	[PtoEmision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPTOSCLIENTE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPTOSCLIENTE](
	[CodClie] [varchar](15) NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[NroFacts] [int] NOT NULL,
	[Credito] [decimal](28, 3) NOT NULL,
	[Contado] [decimal](28, 3) NOT NULL,
	[MtoVentas] [decimal](28, 3) NOT NULL,
	[Descto] [decimal](28, 3) NOT NULL,
	[ValorPtos] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
 CONSTRAINT [SAPTOSCLIENTE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodClie] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAPVPR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAPVPR](
	[CodProv] [varchar](15) NOT NULL,
	[Refere] [varchar](15) NULL,
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[FechaE] [datetime] NULL,
	[NROUNICO] [int] IDENTITY(1,1) NOT NULL,
	[EsServ] [smallint] NOT NULL,
	[CodItem] [varchar](15) NOT NULL,
 CONSTRAINT [SAPVPR_IX0] PRIMARY KEY CLUSTERED 
(
	[TipoCom] ASC,
	[CodItem] ASC,
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAREPO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAREPO](
	[folderid] [int] IDENTITY(1,1) NOT NULL,
	[foldername] [varchar](60) NOT NULL,
	[parentid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[foldername] ASC,
	[parentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SARGOCAT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SARGOCAT](
	[CodInst] [int] NOT NULL,
	[TipoRgo] [int] NOT NULL,
	[NroUnico] [int] NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SARGOCAT_IX0] PRIMARY KEY CLUSTERED 
(
	[CodInst] ASC,
	[TipoRgo] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SARGORET]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SARGORET](
	[CodTaxs] [varchar](10) NOT NULL,
	[TipoRgo] [smallint] NOT NULL,
	[NroUnico] [int] NOT NULL,
	[Desde] [decimal](28, 4) NOT NULL,
	[Hasta] [decimal](28, 4) NOT NULL,
	[Monto] [decimal](28, 4) NOT NULL,
 CONSTRAINT [SARGORET_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTaxs] ASC,
	[TipoRgo] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SARGOTJT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SARGOTJT](
	[CodTarj] [varchar](10) NOT NULL,
	[TipoRgo] [int] NOT NULL,
	[NroUnico] [int] NOT NULL,
	[Desde] [decimal](28, 3) NOT NULL,
	[Hasta] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SARGOTJT_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTarj] ASC,
	[TipoRgo] ASC,
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASEPRCOM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASEPRCOM](
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroSerial] [varchar](40) NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[EsConsig] [smallint] NOT NULL,
	[Status] [varchar](2) NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[NroLineaC] [int] NOT NULL,
 CONSTRAINT [SASEPRCOM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASEPRFAC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASEPRFAC](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[NroSerial] [varchar](40) NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[EsConsig] [smallint] NOT NULL,
	[Status] [varchar](2) NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SASEPRFAC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroLineaC] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASEPROPI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASEPROPI](
	[TipoOpI] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroSerial] [varchar](40) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[CodItem] [varchar](15) NULL,
	[CodUbic] [varchar](10) NULL,
	[EsConsig] [smallint] NOT NULL,
	[Status] [varchar](2) NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SASEPROPI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoOpI] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASERI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASERI](
	[CodProd] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[NroSerial] [varchar](40) NOT NULL,
 CONSTRAINT [SASERI_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodUbic] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASERICON]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASERICON](
	[CodProd] [varchar](15) NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
	[NroRegi] [int] NOT NULL,
	[NroSerial] [varchar](40) NOT NULL,
 CONSTRAINT [SASERICON_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodUbic] ASC,
	[NroSerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASERV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASERV](
	[CodServ] [varchar](10) NOT NULL,
	[CodInst] [int] NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Clase] [varchar](10) NULL,
	[Unidad] [varchar](6) NULL,
	[Precio1] [decimal](28, 5) NULL,
	[PrecioI1] [decimal](28, 5) NULL,
	[Precio2] [decimal](28, 5) NULL,
	[PrecioI2] [decimal](28, 5) NULL,
	[Precio3] [decimal](28, 5) NULL,
	[PrecioI3] [decimal](28, 5) NULL,
	[Costo] [decimal](28, 3) NOT NULL,
	[EsExento] [smallint] NOT NULL,
	[EsPorCost] [smallint] NOT NULL,
	[UsaServ] [smallint] NOT NULL,
	[Comision] [decimal](28, 3) NOT NULL,
	[EsPorComi] [smallint] NOT NULL,
	[FechaUV] [datetime] NULL,
	[FechaUC] [datetime] NULL,
	[EsImport] [smallint] NOT NULL,
	[Activo] [smallint] NOT NULL,
	[EsReten] [smallint] NOT NULL,
	[EsVenta] [smallint] NOT NULL,
	[EsCompra] [smallint] NOT NULL,
 CONSTRAINT [SASERV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodServ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_AD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_AD](
	[NroAD] [smallint] NULL,
	[Descrip] [varchar](10) NULL,
	[TipoServ] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CHILD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CHILD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_HEAD] [int] NOT NULL,
	[NumeroDoc] [varchar](6) NULL,
	[NroLinea] [int] NOT NULL,
	[TipoServ] [varchar](1) NOT NULL,
	[CodStatus] [varchar](3) NULL,
	[CodPrior] [int] NULL,
	[ObservacionStatus] [varchar](50) NULL,
	[CodClie] [varchar](50) NOT NULL,
	[CodServidor] [varchar](10) NULL,
	[Fecha_E] [datetime] NOT NULL,
	[Fecha_St] [datetime] NOT NULL,
	[Fecha_Req] [datetime] NULL,
	[CodItem] [varchar](15) NULL,
	[Descrip1] [varchar](50) NULL,
	[Detalle1] [varchar](80) NULL,
	[Detalle2] [varchar](80) NULL,
	[Detalle3] [varchar](80) NULL,
	[Detalle4] [varchar](80) NULL,
	[InformeTec] [ntext] NULL,
	[Nombre] [varchar](80) NULL,
	[Serial1] [varchar](20) NULL,
	[Serial2] [varchar](20) NULL,
	[Garantia] [int] NULL,
	[CodGarantia] [varchar](3) NULL,
	[A1] [smallint] NULL,
	[A2] [smallint] NULL,
	[A3] [smallint] NULL,
	[A4] [smallint] NULL,
	[A5] [smallint] NULL,
	[A6] [smallint] NULL,
	[A7] [smallint] NULL,
	[A8] [smallint] NULL,
 CONSTRAINT [PK_SASICOS_CHILD_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CHILD_ETIQUETA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CHILD_ETIQUETA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Id_Child] [int] NOT NULL,
	[Etiqueta] [varchar](80) NULL,
	[FechaETIQ] [date] NOT NULL,
	[FechaETIQ_I] [datetime] NOT NULL,
	[eTecnico] [int] NOT NULL,
	[eCliente] [int] NOT NULL,
	[eSupervisor] [int] NOT NULL,
 CONSTRAINT [PK_SASICOS_CHILD_ETIQUETA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Id_Child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CHILD_ITFACT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CHILD_ITFACT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Child] [int] NOT NULL,
	[CodServ] [varchar](10) NOT NULL,
	[Descrip1] [varchar](40) NOT NULL,
	[Descrip2] [varchar](40) NULL,
	[Descrip3] [varchar](40) NULL,
	[Descrip4] [varchar](40) NULL,
	[Cantidad] [decimal](28, 3) NOT NULL,
	[Precio] [decimal](28, 2) NULL,
	[CodMeca] [varchar](10) NOT NULL,
	[NumeroD] [varchar](10) NULL,
	[TipoFac] [varchar](1) NULL,
	[OTipoFac] [varchar](1) NULL,
	[EsExento] [int] NOT NULL,
	[UsaServ] [int] NOT NULL,
	[Costo] [int] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[ONumerod] [varchar](10) NULL,
 CONSTRAINT [PK_SASICOS_CHILD_ITFACT_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ID_Child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CHILD_PRD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CHILD_PRD](
	[Id_child] [int] NOT NULL,
	[CodProd] [varchar](15) NOT NULL,
	[Descrip] [varchar](40) NOT NULL,
	[Cantidad] [decimal](28, 2) NOT NULL,
	[CostPro] [decimal](28, 2) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Eliminado] [int] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[EsExento] [int] NOT NULL,
	[Precio] [decimal](28, 2) NULL,
	[OTipoFac] [varchar](1) NULL,
	[ONumeroD] [varchar](10) NULL,
 CONSTRAINT [PK_SASICOS_CHILD_PRD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CHILD_PRDSERIAL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CHILD_PRDSERIAL](
	[ID_Prd] [int] NOT NULL,
	[Serial1] [varchar](20) NOT NULL,
	[Serial2] [varchar](20) NULL,
	[BKUP] [int] NOT NULL,
	[CodUbic] [varchar](10) NOT NULL,
 CONSTRAINT [PK_SASICOS_CHILD_PRDSERIAL] PRIMARY KEY CLUSTERED 
(
	[ID_Prd] ASC,
	[Serial1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_CONF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_CONF](
	[PRXNUM] [int] NOT NULL,
	[CodInst_Serv] [int] NULL,
	[CodInst_Taller] [int] NULL,
	[EMAIL1] [varchar](50) NULL,
	[EMAIL2] [varchar](50) NULL,
	[EMAIL3] [varchar](50) NULL,
	[EMAIL4] [varchar](50) NULL,
	[CodInst_Prd] [int] NULL,
	[FacturaTipo] [varchar](1) NULL,
	[PrefijoFac] [varchar](1) NULL,
	[PrxNumFact] [int] NULL,
	[CodVend] [varchar](10) NULL,
	[CodDep] [varchar](10) NULL,
	[StFactura] [varchar](3) NULL,
	[Empresa] [varchar](40) NULL,
	[Direc1] [varchar](80) NULL,
	[Direc2] [varchar](80) NULL,
	[Rif] [varchar](30) NULL,
	[Slogan] [varchar](80) NULL,
	[Telefonos] [varchar](80) NULL,
	[Nota1] [varchar](120) NULL,
	[Nota2] [varchar](120) NULL,
	[Nota3] [varchar](120) NULL,
	[Nota4] [varchar](120) NULL,
	[Nota5] [varchar](120) NULL,
	[Nota6] [varchar](120) NULL,
	[Nota7] [varchar](120) NULL,
	[Nota8] [varchar](120) NULL,
	[Nota9] [varchar](120) NULL,
	[Nota10] [varchar](120) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[SASICOS_CONF] ADD [StRecibido] [varchar](3) NULL
ALTER TABLE [dbo].[SASICOS_CONF] ADD [StAsignado] [varchar](3) NULL
ALTER TABLE [dbo].[SASICOS_CONF] ADD [Opcion] [int] NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_EMAIL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_EMAIL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Para] [varchar](80) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[Asunto] [varchar](80) NOT NULL,
	[Mensaje] [ntext] NOT NULL,
	[Estado] [int] NOT NULL,
	[NumeroDoc] [varchar](10) NOT NULL,
	[FechaOrden] [datetime] NOT NULL,
	[FechaCola] [datetime] NOT NULL,
	[FechaEnvio] [datetime] NULL,
	[Error] [varchar](40) NULL,
	[Intentos] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_EMAILCFG]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_EMAILCFG](
	[Nombre] [varchar](80) NOT NULL,
	[Servidor] [varchar](80) NOT NULL,
	[Puerto] [numeric](18, 0) NOT NULL,
	[Usuario] [varchar](80) NOT NULL,
	[Pass] [varchar](80) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_GARANTIA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_GARANTIA](
	[CodGarantia] [varchar](3) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SASICOS_GARANTIA] PRIMARY KEY CLUSTERED 
(
	[CodGarantia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_HEAD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_HEAD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDoc] [varchar](7) NOT NULL,
	[TipoServ] [varchar](1) NOT NULL,
	[Fecha_ST] [int] NOT NULL,
	[Fecha_E] [datetime] NOT NULL,
	[CodClie] [varchar](15) NOT NULL,
	[Descrip] [varchar](60) NOT NULL,
	[Direccion1] [varchar](60) NULL,
	[Direccion2] [varchar](60) NULL,
	[Telefonos] [varchar](30) NULL,
	[NroUnicoUsua] [int] NULL,
	[NombreUsua] [varchar](60) NULL,
	[Condicion] [varchar](10) NULL,
	[NroUnicoSis] [int] NULL,
	[NombreSis] [varchar](40) NULL,
	[email] [varchar](80) NULL,
	[NotaAlpie] [varchar](120) NULL,
 CONSTRAINT [PK_SASICOS_HEAD] PRIMARY KEY CLUSTERED 
(
	[NumeroDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_STATUS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_STATUS](
	[CodStatus] [varchar](3) NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
 CONSTRAINT [PK_SASICOS_STATUS] PRIMARY KEY CLUSTERED 
(
	[CodStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASICOS_USR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASICOS_USR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[USUARIO] [nchar](10) NOT NULL,
	[CLAVE] [varchar](50) NULL,
	[Nivel] [int] NOT NULL,
 CONSTRAINT [PK_SASICOS_USR] PRIMARY KEY CLUSTERED 
(
	[USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASNNOTIF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASNNOTIF](
	[NotifyId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CodUsua] [varchar](10) NOT NULL,
	[TipoVerif] [int] NOT NULL,
	[Monto] [decimal](28, 4) NOT NULL,
 CONSTRAINT [SASNNOTIF_IX0] PRIMARY KEY CLUSTERED 
(
	[NotifyId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASNUSERS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASNUSERS](
	[CodUsua] [varchar](10) NOT NULL,
	[UserId] [int] NOT NULL,
	[Descrip] [varchar](40) NOT NULL,
	[Clave] [varchar](15) NOT NULL,
	[TipoNot] [varchar](5) NOT NULL,
	[Email] [varchar](60) NULL,
	[Movil] [varchar](40) NULL,
	[UProfile] [varchar](100) NULL,
 CONSTRAINT [SASNUSERS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodUsua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASUCU]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASUCU](
	[CodSucu] [varchar](5) NOT NULL,
	[Descrip] [varchar](40) NULL,
 CONSTRAINT [SASUCU_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SASUCURSAL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SASUCURSAL](
	[CodSucu] [varchar](5) NOT NULL,
	[Descrip] [varchar](80) NULL,
	[Direc1] [varchar](80) NULL,
	[Direc2] [varchar](80) NULL,
	[Telef] [varchar](40) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
 CONSTRAINT [SASUCURSAL_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATABL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATABL](
	[tablename] [varchar](60) NOT NULL,
	[tablealias] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[tablename] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATARJ]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATARJ](
	[CodTarj] [varchar](10) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[Clase] [varchar](10) NULL,
	[Impuesto] [decimal](28, 3) NOT NULL,
	[DiasDif] [int] NOT NULL,
	[BaseReten] [decimal](28, 3) NOT NULL,
	[Activo] [smallint] NOT NULL,
	[RetenIVA] [decimal](28, 3) NOT NULL,
	[TipoIns] [smallint] NOT NULL,
 CONSTRAINT [SATARJ_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTarj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXCOM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXCOM](
	[TipoCom] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[EsReten] [smallint] NOT NULL,
 CONSTRAINT [SATAXCOM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXCXC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXCXC](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[EsReten] [smallint] NOT NULL,
 CONSTRAINT [SATAXCXC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NroPpal] ASC,
	[NroUnico] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXCXP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXCXP](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[EsReten] [smallint] NOT NULL,
 CONSTRAINT [SATAXCXP_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[NroPpal] ASC,
	[NroUnico] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXES]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXES](
	[CodTaxs] [varchar](5) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[EsPorct] [smallint] NOT NULL,
	[EsCosto] [smallint] NOT NULL,
	[EsLibroI] [smallint] NOT NULL,
	[EsPartic] [smallint] NOT NULL,
	[Activo] [smallint] NOT NULL,
	[TipoIVA] [smallint] NOT NULL,
	[EsTaxVenta] [smallint] NOT NULL,
	[EsTaxCompra] [smallint] NOT NULL,
	[EsFijo] [smallint] NOT NULL,
	[EsReten] [smallint] NOT NULL,
	[CodOper] [varchar](10) NULL,
	[MontoMax] [decimal](28, 3) NOT NULL,
	[Sustraendo] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SATAXES_IX0] PRIMARY KEY CLUSTERED 
(
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXITC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXITC](
	[TipoCom] [varchar](1) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[CodItem] [varchar](15) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[NroLineaC] [int] NOT NULL,
 CONSTRAINT [SATAXITC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[CodProv] ASC,
	[TipoCom] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXITF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXITF](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[NroLineaC] [int] NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[CodItem] [varchar](15) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
 CONSTRAINT [SATAXITF_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[NroLinea] ASC,
	[NroLineaC] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXPRD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXPRD](
	[CodProd] [varchar](15) NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[EsPorct] [smallint] NOT NULL,
 CONSTRAINT [SATAXPRD_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProd] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXSRV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXSRV](
	[CodServ] [varchar](15) NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[EsPorct] [smallint] NOT NULL,
 CONSTRAINT [SATAXSRV_IX0] PRIMARY KEY CLUSTERED 
(
	[CodServ] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATAXVTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATAXVTA](
	[TipoFac] [varchar](1) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[CodTaxs] [varchar](5) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoTax] [decimal](28, 3) NOT NULL,
	[TGravable] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NOT NULL,
	[EsReten] [smallint] NOT NULL,
 CONSTRAINT [SATAXVTA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodSucu] ASC,
	[TipoFac] ASC,
	[NumeroD] ASC,
	[CodTaxs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATMPCHQ]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SATMPCHQ](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Descrip] [varchar](100) NULL,
	[FechaE] [datetime] NULL,
	[CodSucu] [varchar](5) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SATRADEDOCS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SATRADEDOCS](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Pending] [smallint] NULL,
	[TradeDoc] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SAUSRREP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAUSRREP](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[SisSnt] [int] NOT NULL,
	[CodMenu] [varchar](10) NOT NULL,
	[NroRpt] [int] NOT NULL,
	[Descrip] [varchar](70) NOT NULL,
 CONSTRAINT [SAUSRREP_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAVEND]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAVEND](
	[CodVend] [varchar](10) NOT NULL,
	[Descrip] [varchar](60) NULL,
	[CodSucu] [varchar](5) NULL,
	[ID3] [varchar](25) NULL,
	[Clase] [varchar](10) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](60) NULL,
	[FechaUV] [datetime] NULL,
	[FechaUC] [datetime] NULL,
	[EsComiPV] [smallint] NOT NULL,
	[EsComiTV] [smallint] NOT NULL,
	[EsComiTC] [smallint] NOT NULL,
	[EsComiTU] [smallint] NOT NULL,
	[EsComiUT] [smallint] NOT NULL,
	[EsComiDT] [smallint] NOT NULL,
	[EsComiTM] [smallint] NOT NULL,
	[Activo] [smallint] NOT NULL,
	[Movil] [varchar](15) NULL,
	[TipoID3] [int] NOT NULL,
	[DescOrder] [varchar](10) NULL,
	[Municipio] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[TipoID] [smallint] NOT NULL,
 CONSTRAINT [SAVEND_IX0] PRIMARY KEY CLUSTERED 
(
	[CodVend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAZONA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAZONA](
	[CodZona] [varchar](10) NOT NULL,
	[Descrip] [varchar](40) NULL,
	[CodSucu] [varchar](5) NULL,
	[Clase] [varchar](10) NULL,
	[Represent] [varchar](40) NULL,
	[Activo] [smallint] NOT NULL,
 CONSTRAINT [SAZONA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBACUM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBACUM](
	[CodCta] [varchar](30) NOT NULL,
	[TipoAcum] [int] NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[Debitos] [decimal](28, 3) NOT NULL,
	[Creditos] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBACUM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodCta] ASC,
	[TipoAcum] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBAPPD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBAPPD](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[Documento] [varchar](15) NOT NULL,
	[RIF] [varchar](20) NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[DescripPago] [varchar](70) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
 CONSTRAINT [SBAPPD_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC,
	[NroPpal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBAPPM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBAPPM](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[NroCtrl] [varchar](20) NOT NULL,
	[FechaP] [datetime] NOT NULL,
	[NroPagos] [int] NOT NULL,
	[MtoPagos] [int] NOT NULL,
 CONSTRAINT [SBAPPM_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC,
	[CodBanc] ASC,
	[NroCtrl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBBANC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBBANC](
	[CodBanc] [varchar](30) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[NoCuenta] [varchar](20) NULL,
	[Sucursal] [varchar](50) NULL,
	[TDC] [int] NOT NULL,
	[CtaContab] [varchar](25) NULL,
	[SaldoAct] [decimal](28, 3) NOT NULL,
	[SaldoC1] [decimal](28, 3) NOT NULL,
	[FechaC1] [datetime] NULL,
	[SaldoC2] [decimal](28, 3) NOT NULL,
	[FechaC2] [datetime] NULL,
	[PrxConc] [int] NOT NULL,
	[InvChe] [int] NOT NULL,
	[IDB] [int] NOT NULL,
	[Moneda] [varchar](3) NULL,
	[PDB] [decimal](28, 3) NOT NULL,
	[CtaDebito] [varchar](30) NULL,
	[PrxNDDB] [int] NOT NULL,
	[CtaConc] [int] NOT NULL,
	[RTransf] [int] NOT NULL,
	[NomSuc] [varchar](40) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Direccion1] [varchar](40) NULL,
	[Direccion2] [varchar](40) NULL,
	[Gerente] [varchar](30) NULL,
	[Telefonos] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[Email] [varchar](25) NULL,
	[Memo] [text] NULL,
	[MesesH] [int] NOT NULL,
	[VNoCh] [int] NOT NULL,
	[VNoDp] [int] NOT NULL,
	[VNoNc] [int] NOT NULL,
	[VNoNd] [int] NOT NULL,
	[PrxCheque] [decimal](28, 3) NOT NULL,
	[NCOMP0] [int] NOT NULL,
	[NCOMP1] [int] NOT NULL,
	[NCOMP2] [int] NOT NULL,
	[NCOMP3] [int] NOT NULL,
	[NCOMP4] [int] NOT NULL,
	[NCOMP5] [int] NOT NULL,
	[ZipCode] [varchar](20) NULL,
	[Municipio] [int] NOT NULL,
	[Activo] [int] NULL,
 CONSTRAINT [SBBANC_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBBENE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBBENE](
	[CodBene] [varchar](30) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[IOE] [varchar](1) NULL,
	[Pais] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Direccion1] [varchar](40) NULL,
	[Direccion2] [varchar](40) NULL,
	[Telefonos] [varchar](30) NULL,
	[Fax] [varchar](25) NULL,
	[Email] [varchar](25) NULL,
	[Memo] [text] NULL,
	[CodCta] [varchar](30) NULL,
	[Concepto1] [varchar](50) NULL,
	[Concepto2] [varchar](50) NULL,
	[Concepto3] [varchar](50) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Coment1] [varchar](40) NULL,
	[Coment2] [varchar](40) NULL,
	[Coment3] [varchar](40) NULL,
	[FechaI] [datetime] NULL,
	[UFecha] [datetime] NULL,
	[UDcto] [varchar](25) NULL,
	[UBanco] [varchar](30) NULL,
	[UBenef] [varchar](50) NULL,
	[UComent1] [varchar](50) NULL,
	[UComent2] [varchar](50) NULL,
	[UMonto] [decimal](28, 3) NOT NULL,
	[ECG] [int] NOT NULL,
	[Movil] [varchar](15) NULL,
	[ZipCode] [varchar](20) NULL,
	[Municipio] [int] NOT NULL,
 CONSTRAINT [SBBENE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBene] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBCOBA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBCOBA](
	[CodBanc] [int] NOT NULL,
	[TipoDoc] [varchar](15) NOT NULL,
	[ValueInt] [int] NOT NULL,
 CONSTRAINT [SBCOBA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[TipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBConc]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBConc](
	[CodBanc] [varchar](30) NOT NULL,
	[NoConc] [int] NOT NULL,
	[CodUsua] [varchar](30) NULL,
	[Descripcion] [varchar](50) NULL,
	[NoCuenta] [varchar](20) NULL,
	[FechaI] [datetime] NOT NULL,
	[SaldoI] [decimal](28, 3) NOT NULL,
	[NoDepoC] [int] NOT NULL,
	[NoCredC] [int] NOT NULL,
	[NoCheqC] [int] NOT NULL,
	[NoNDebC] [int] NOT NULL,
	[MtDepoC] [decimal](28, 3) NOT NULL,
	[MtCredC] [decimal](28, 3) NOT NULL,
	[MtCheqC] [decimal](28, 3) NOT NULL,
	[MtNDebC] [decimal](28, 3) NOT NULL,
	[NoDepoT] [int] NOT NULL,
	[NoCredT] [int] NOT NULL,
	[NoCheqT] [int] NOT NULL,
	[NoNDebT] [int] NOT NULL,
	[MtDepoT] [decimal](28, 3) NOT NULL,
	[MtCredT] [decimal](28, 3) NOT NULL,
	[MtCheqT] [decimal](28, 3) NOT NULL,
	[MtNDebT] [decimal](28, 3) NOT NULL,
	[FechaF] [datetime] NOT NULL,
	[SaldoF] [decimal](28, 3) NOT NULL,
	[SaldoLib] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBConc_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[NoConc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBCONF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBCONF](
	[MaxCheque] [decimal](28, 3) NOT NULL,
	[DiasD1] [int] NOT NULL,
	[DiasD2] [int] NOT NULL,
	[DiasD3] [int] NOT NULL,
	[IChequeNE] [int] NOT NULL,
	[ICEgreso] [int] NOT NULL,
	[PrxCEgreso] [int] NOT NULL,
	[PrxDeposito] [int] NOT NULL,
	[PrxNDebito] [int] NOT NULL,
	[PrxNCredito] [int] NOT NULL,
	[PDebBan] [decimal](28, 3) NOT NULL,
	[MesesH] [int] NOT NULL,
	[StDta] [varchar](90) NULL,
	[AlertarND] [int] NOT NULL,
	[MOpeConc] [int] NOT NULL,
	[Consolida] [int] NOT NULL,
	[DirContab] [varchar](70) NULL,
	[DirDtaCont] [varchar](70) NULL,
	[CCTipo] [int] NOT NULL,
	[CCDescrip] [varchar](40) NULL,
	[CCSSW] [int] NOT NULL,
	[CCServer] [varchar](70) NULL,
	[CCDb] [varchar](70) NULL,
	[CCUser] [varchar](70) NULL,
	[CCPwd] [varchar](70) NULL,
	[CCPrefix] [int] NOT NULL,
	[ACtas0] [int] NOT NULL,
	[ACtas1] [int] NOT NULL,
	[ACtas2] [int] NOT NULL,
	[ACtas3] [int] NOT NULL,
	[ACtas4] [int] NOT NULL,
	[ACtas5] [int] NOT NULL,
	[NOpe1] [int] NOT NULL,
	[NOpe2] [int] NOT NULL,
	[NOpe3] [int] NOT NULL,
	[NOpe4] [int] NOT NULL,
	[NOpe5] [int] NOT NULL,
	[NOpe6] [int] NOT NULL,
	[NOpe7] [int] NOT NULL,
	[NOpe8] [int] NOT NULL,
	[NOpe9] [int] NOT NULL,
	[NOpe10] [int] NOT NULL,
	[CtaAux1] [varchar](30) NULL,
	[CtaAux2] [varchar](30) NULL,
	[CtaAux3] [varchar](30) NULL,
	[NroCxB] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBCTAP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBCTAP](
	[ID3] [varchar](20) NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[NroCuenta] [varchar](30) NOT NULL,
 CONSTRAINT [SBCTAP_IX0] PRIMARY KEY CLUSTERED 
(
	[ID3] ASC,
	[CodBanc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBCTAS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBCTAS](
	[CodCta] [varchar](30) NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[IEA] [int] NOT NULL,
	[Grupo] [varchar](30) NULL,
	[UFecha] [datetime] NULL,
	[UDcto] [varchar](25) NULL,
	[UBanco] [varchar](30) NULL,
	[UBenef] [varchar](50) NULL,
	[UComent1] [varchar](50) NULL,
	[UComent2] [varchar](50) NULL,
	[UMonto] [decimal](28, 3) NOT NULL,
	[EsBanco] [int] NOT NULL,
	[TDC] [int] NOT NULL,
	[SaldoAct] [decimal](28, 3) NOT NULL,
	[Tercero] [varchar](30) NULL,
	[CodCentro] [varchar](30) NULL,
	[CtaCF] [int] NOT NULL,
	[CtaMov] [int] NOT NULL,
	[CtaTer] [int] NOT NULL,
	[CtaCC] [int] NOT NULL,
	[CtaBase] [int] NOT NULL,
	[ECG] [int] NOT NULL,
 CONSTRAINT [SBCTAS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodCta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDEFPD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDEFPD](
	[NDefAPP] [int] NOT NULL,
	[TipoCDT] [int] NOT NULL,
	[NLinea] [int] NOT NULL,
	[NCampo] [int] NOT NULL,
	[TipoDat] [int] NOT NULL,
	[Data] [varchar](100) NOT NULL,
	[Formato] [varchar](50) NOT NULL,
 CONSTRAINT [SBDEFPD_IX0] PRIMARY KEY CLUSTERED 
(
	[NDefAPP] ASC,
	[TipoCDT] ASC,
	[NLinea] ASC,
	[NCampo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDEFPM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDEFPM](
	[NDefAPP] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[Entidad] [varchar](70) NOT NULL,
 CONSTRAINT [SBDEFPM_IX0] PRIMARY KEY CLUSTERED 
(
	[NDefAPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDesA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDesA](
	[IOri] [int] NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[FechaUU] [datetime] NOT NULL,
 CONSTRAINT [SBDesA_IX0] PRIMARY KEY CLUSTERED 
(
	[IOri] ASC,
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDIFE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDIFE](
	[CodBanc] [varchar](30) NOT NULL,
	[NOpe] [int] NOT NULL,
	[NLinea] [int] NOT NULL,
	[CodUsua] [varchar](30) NULL,
	[CodEsta] [varchar](30) NULL,
	[CDCD] [int] NOT NULL,
	[Documento] [varchar](25) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FechaLib] [datetime] NOT NULL,
	[Beneficiario] [varchar](50) NULL,
	[TipoPgo] [varchar](50) NOT NULL,
	[DescPgo] [varchar](50) NOT NULL,
	[DctoPgo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[TipoOpe] [int] NOT NULL,
	[MontoE] [decimal](28, 3) NOT NULL,
	[NBanco] [varchar](50) NULL,
	[NumeroC] [varchar](30) NULL,
	[PlazaC] [int] NOT NULL,
	[MontoC] [decimal](28, 3) NOT NULL,
	[FechaC] [datetime] NULL,
	[CodTarj] [varchar](10) NULL,
	[Descrip] [varchar](40) NULL,
	[MontoBT] [decimal](28, 3) NOT NULL,
	[BaseIT] [decimal](28, 3) NOT NULL,
	[ComiT] [decimal](28, 3) NOT NULL,
	[ImpT] [decimal](28, 3) NOT NULL,
	[NetoT] [decimal](28, 3) NOT NULL,
	[FechaT] [datetime] NULL,
 CONSTRAINT [SBDIFE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[NOpe] ASC,
	[NLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDOpF]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDOpF](
	[NroUnico] [varchar](15) NOT NULL,
	[CodOpFr] [varchar](30) NOT NULL,
	[CodCta] [varchar](30) NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Monto2] [decimal](28, 3) NOT NULL,
	[Comentario] [varchar](50) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[CodBene] [varchar](30) NULL,
	[CodCenCto] [varchar](30) NULL,
 CONSTRAINT [SBDOpF_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBDTRN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBDTRN](
	[CodBanc] [varchar](30) NOT NULL,
	[NOpe] [int] NOT NULL,
	[NLinea] [int] NOT NULL,
	[CodCta] [varchar](30) NULL,
	[EsTransf] [int] NOT NULL,
	[EsCuenta] [int] NOT NULL,
	[CodUsua] [varchar](30) NULL,
	[CodOper] [varchar](10) NULL,
	[CodEsta] [varchar](30) NULL,
	[CDCD] [int] NOT NULL,
	[EncOpe] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[Origen] [varchar](35) NULL,
	[Estado] [int] NOT NULL,
	[DH] [int] NOT NULL,
	[NMo] [int] NOT NULL,
	[BaseTr] [decimal](28, 3) NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoDb] [decimal](28, 3) NOT NULL,
	[MtoCr] [decimal](28, 3) NOT NULL,
	[Consolidado] [int] NOT NULL,
	[FConsolidado] [datetime] NULL,
	[SiCentro] [int] NOT NULL,
	[SiTercero] [int] NOT NULL,
	[CodCenCto] [varchar](30) NULL,
	[CodTercero] [varchar](30) NULL,
	[Tercero] [varchar](50) NULL,
	[CodSucu] [varchar](5) NULL,
	[FlujoE] [decimal](28, 3) NULL,
 CONSTRAINT [SBDTRN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[NOpe] ASC,
	[NLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBEsti]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBEsti](
	[CodCta] [varchar](30) NOT NULL,
	[TipoAcum] [int] NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[Debitos] [decimal](28, 3) NOT NULL,
	[Creditos] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBEsti_IX0] PRIMARY KEY CLUSTERED 
(
	[CodCta] ASC,
	[TipoAcum] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBFDCCONS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBFDCCONS](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NLinea] [int] NOT NULL,
	[Descripcion] [varchar](70) NOT NULL,
	[Monto] [decimal](28, 2) NOT NULL,
 CONSTRAINT [SBFDCCONS_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBFDCPER]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBFDCPER](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Periodo] [varchar](7) NOT NULL,
	[SaldoA] [decimal](28, 2) NULL,
 CONSTRAINT [SBFDCPER_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBFMTS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBFMTS](
	[CodBanc] [varchar](30) NOT NULL,
	[TipoOpe] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [SBFMTS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[TipoOpe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBMONE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBMONE](
	[CodMone] [varchar](5) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Pais] [varchar](25) NULL,
	[Factor] [decimal](28, 3) NOT NULL,
	[EsBase] [int] NOT NULL,
 CONSTRAINT [SBMONE_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBOPCTAS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBOPCTAS](
	[CodProv] [varchar](15) NOT NULL,
	[NroOPago] [varchar](15) NOT NULL,
	[NroILB] [int] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[SData] [varchar](255) NOT NULL,
	[FData] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBOPCTAS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC,
	[NroOPago] ASC,
	[NroILB] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBOPCXPP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBOPCXPP](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[Estado] [int] NOT NULL,
	[EdoPago] [int] NOT NULL,
	[NroIDOP] [int] NOT NULL,
	[Clase] [varchar](15) NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[FechaE] [datetime] NOT NULL,
	[CodOper] [varchar](15) NOT NULL,
	[CodBene] [varchar](30) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[NroOPago] [varchar](15) NOT NULL,
	[Documento] [varchar](25) NOT NULL,
	[NroUTrnB] [int] NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[Document] [varchar](40) NOT NULL,
	[NroURecP] [int] NOT NULL,
	[NroURetP] [int] NOT NULL,
	[NroDcts] [int] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[MtoReten] [decimal](28, 3) NOT NULL,
	[Porcent] [decimal](28, 3) NOT NULL,
	[UsaIDB] [int] NOT NULL,
	[CtaIDB] [varchar](15) NOT NULL,
	[DCtaIDB] [varchar](50) NOT NULL,
	[CenCtoIdb] [varchar](15) NOT NULL,
	[MtoIDB] [decimal](28, 3) NOT NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
 CONSTRAINT [SBOPCXPP_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC,
	[CodProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBOpFr]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBOpFr](
	[CodOpFr] [varchar](30) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[CodBene] [varchar](30) NULL,
	[TipoOpe] [int] NOT NULL,
	[FechaPP] [datetime] NOT NULL,
	[Avisar] [int] NOT NULL,
	[Siempre] [int] NOT NULL,
	[NPagos] [int] NOT NULL,
	[Frecuencia] [int] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBOpFr_IX0] PRIMARY KEY CLUSTERED 
(
	[CodOpFr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBOPMSTR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBOPMSTR](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodProv] [varchar](15) NOT NULL,
	[NroOPago] [varchar](15) NOT NULL,
	[Estado] [int] NOT NULL,
	[EdoPago] [int] NOT NULL,
	[NroIDOP] [int] NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[FechaE] [datetime] NOT NULL,
	[FechaP] [datetime] NOT NULL,
	[CodOper] [varchar](15) NOT NULL,
	[Clase] [varchar](15) NOT NULL,
	[CodBene] [varchar](30) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Documento] [varchar](25) NOT NULL,
	[NroUTrnB] [int] NOT NULL,
	[NumeroD] [varchar](20) NOT NULL,
	[Document] [varchar](40) NOT NULL,
	[NroURecP] [int] NOT NULL,
	[NroURetP] [int] NOT NULL,
	[NroDcts] [int] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoPagos] [decimal](28, 3) NOT NULL,
	[MtoReten] [decimal](28, 3) NOT NULL,
	[Porcent] [decimal](28, 3) NOT NULL,
	[UsaIDB] [int] NOT NULL,
	[CtaIDB] [varchar](15) NOT NULL,
	[DCtaIDB] [varchar](50) NOT NULL,
	[CenCtoIdb] [varchar](15) NOT NULL,
	[MtoIDB] [decimal](28, 3) NOT NULL,
	[Notas1] [varchar](60) NULL,
	[Notas2] [varchar](60) NULL,
	[Notas3] [varchar](60) NULL,
	[Notas4] [varchar](60) NULL,
	[Notas5] [varchar](60) NULL,
	[Notas6] [varchar](60) NULL,
	[Notas7] [varchar](60) NULL,
	[Notas8] [varchar](60) NULL,
	[Notas9] [varchar](60) NULL,
	[Notas10] [varchar](60) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[MtoRec] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NULL,
	[CodEsta] [varchar](10) NULL,
	[CodUsua] [varchar](10) NULL,
 CONSTRAINT [SBOPMSTR_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC,
	[CodProv] ASC,
	[NroOPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBOPPGOS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBOPPGOS](
	[CodProv] [varchar](15) NOT NULL,
	[NroOPago] [varchar](15) NOT NULL,
	[NroUCxP] [int] NOT NULL,
	[NroLinea] [int] NOT NULL,
	[Estado] [int] NOT NULL,
	[SData] [varchar](255) NOT NULL,
	[FData] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBOPPGOS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodProv] ASC,
	[NroOPago] ASC,
	[NroUCxP] ASC,
	[NroLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBPres]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBPres](
	[CodCta] [varchar](30) NOT NULL,
	[TipoAcum] [int] NOT NULL,
	[Periodo] [varchar](6) NOT NULL,
	[Debitos] [decimal](28, 3) NOT NULL,
	[Creditos] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBPres_IX0] PRIMARY KEY CLUSTERED 
(
	[CodCta] ASC,
	[TipoAcum] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBPrxC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBPrxC](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodBanc] [varchar](30) NOT NULL,
	[Numero] [varchar](25) NOT NULL,
	[Estado] [int] NOT NULL,
	[CodBene] [varchar](30) NULL,
	[Beneficiario] [varchar](60) NULL,
	[Descripcion] [varchar](60) NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [SBPrxC_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC,
	[CodBanc] ASC,
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBRptD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBRptD](
	[Unico] [varchar](70) NOT NULL,
	[CodBanco] [varchar](70) NULL,
	[NroCuenta] [varchar](70) NULL,
	[DesBanco] [varchar](70) NULL,
	[TipBanco] [varchar](70) NULL,
	[TitRpt1] [varchar](100) NULL,
	[TitRpt2] [varchar](100) NULL,
	[TitRpt3] [varchar](100) NULL,
	[TitRpt4] [varchar](100) NULL,
	[TitRpt5] [varchar](100) NULL,
	[FecRpt1] [datetime] NULL,
	[FecRpt2] [datetime] NULL,
	[FecRpt3] [datetime] NULL,
	[FecRpt4] [datetime] NULL,
	[FecRpt5] [datetime] NULL,
	[MtoRpt1] [decimal](28, 3) NOT NULL,
	[MtoRpt2] [decimal](28, 3) NOT NULL,
	[MtoRpt3] [decimal](28, 3) NOT NULL,
	[MtoRpt4] [decimal](28, 3) NOT NULL,
	[MtoRpt5] [decimal](28, 3) NOT NULL,
	[MtoTxt1] [varchar](100) NULL,
	[MtoTxt2] [varchar](100) NULL,
	[MtoTxt3] [varchar](100) NULL,
	[MtoTxt4] [varchar](100) NULL,
	[MtoTxt5] [varchar](100) NULL,
 CONSTRAINT [SBRptD_IX0] PRIMARY KEY CLUSTERED 
(
	[Unico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBTRAN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBTRAN](
	[CodBanc] [varchar](30) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[AOD] [varchar](1) NOT NULL,
	[NOpe] [int] NOT NULL,
	[NroComp] [int] NOT NULL,
	[OpeRel] [int] NOT NULL,
	[CRefer] [varchar](35) NULL,
	[CodUsua] [varchar](30) NULL,
	[CodOper] [varchar](10) NULL,
	[CodEsta] [varchar](30) NULL,
	[FechaLib] [datetime] NOT NULL,
	[TipBen] [int] NOT NULL,
	[CodBene] [varchar](30) NULL,
	[TDC] [int] NOT NULL,
	[CDCD] [int] NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[Documento] [varchar](25) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[Memo] [text] NULL,
	[OBCP] [varchar](1) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[Origen] [varchar](35) NULL,
	[Estado] [int] NOT NULL,
	[FecConc] [datetime] NOT NULL,
	[NoConc] [int] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoDb] [decimal](28, 3) NOT NULL,
	[MtoCr] [decimal](28, 3) NOT NULL,
	[Endosable] [int] NOT NULL,
	[TipoOpe] [int] NOT NULL,
	[CtaIDB] [varchar](30) NULL,
	[DCtaIDB] [varchar](50) NULL,
	[MtoIDB] [decimal](28, 3) NOT NULL,
	[Consolidado] [int] NOT NULL,
	[FConsolidado] [datetime] NULL,
	[NroEgreso] [decimal](28, 3) NOT NULL,
	[MtoDebito] [decimal](28, 3) NOT NULL,
	[DctoOrigen] [varchar](25) NULL,
	[MtoOrigen] [decimal](28, 3) NOT NULL,
	[BeneOrigen] [varchar](40) NULL,
	[Monto1] [decimal](28, 3) NOT NULL,
	[Monto2] [decimal](28, 3) NOT NULL,
	[MtoDeb] [decimal](28, 3) NOT NULL,
	[DctoOri] [varchar](20) NULL,
	[BeneOri] [varchar](50) NULL,
	[MtoOri] [decimal](28, 3) NOT NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
	[CodSucu] [varchar](5) NULL,
 CONSTRAINT [SBTRAN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[Fecha] ASC,
	[AOD] ASC,
	[NOpe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SBTrTr]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SBTrTr](
	[CodBanc] [varchar](30) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[AOD] [varchar](1) NOT NULL,
	[NOpe] [int] NOT NULL,
	[NoConc] [int] NOT NULL,
	[CRefer] [varchar](35) NULL,
	[CodUsua] [varchar](30) NULL,
	[FechaLib] [datetime] NOT NULL,
	[CodBene] [varchar](30) NULL,
	[TDC] [int] NOT NULL,
	[CDCD] [int] NOT NULL,
	[Descripcion] [varchar](60) NULL,
	[Documento] [varchar](25) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[OBCP] [varchar](1) NOT NULL,
	[Origen] [varchar](35) NULL,
	[Estado] [int] NOT NULL,
	[Monto] [decimal](28, 3) NOT NULL,
	[MtoDb] [decimal](28, 3) NOT NULL,
	[MtoCr] [decimal](28, 3) NOT NULL,
	[Monto1] [decimal](28, 3) NOT NULL,
	[Monto2] [decimal](28, 3) NOT NULL,
	[Saldo] [decimal](28, 3) NOT NULL,
 CONSTRAINT [SBTrTr_IX0] PRIMARY KEY CLUSTERED 
(
	[CodBanc] ASC,
	[Fecha] ASC,
	[AOD] ASC,
	[NOpe] ASC,
	[NoConc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCDOCON]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCDOCON](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[FechaI] [datetime] NULL,
	[FechaF] [datetime] NULL,
	[TipoOper] [varchar](4) NULL,
	[User] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIALICUOTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIALICUOTA](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](15) NULL,
	[DataContab] [varchar](255) NULL,
	[CtaCash] [varchar](24) NULL,
	[CtaCr] [varchar](24) NULL,
	[CtaCompra] [varchar](24) NULL,
	[DPCC] [bit] NULL,
	[UCCO] [int] NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CtaCostoVenta] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL,
	[CtaCargosPart] [varchar](24) NULL,
	[CtaDescargoPart] [varchar](24) NULL,
	[CtaDevolucionesV] [varchar](24) NULL,
	[CtaDevolucionesCrV] [varchar](24) NULL,
	[CtaDevolucionesC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCICLIE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCICLIE](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[DataContab] [varchar](255) NULL,
	[UsaCtaParticular] [bit] NULL,
	[Cuenta] [varchar](24) NULL,
	[CtaND] [varchar](24) NULL,
	[CtaNC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCICONEX]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCICONEX](
	[DB] [varchar](255) NULL,
	[ServerC] [varchar](255) NULL,
	[DBC] [varchar](255) NULL,
	[SW] [int] NULL,
	[ID_Entity] [varchar](10) NULL,
	[Prefix] [int] NULL,
	[Active] [int] NULL,
	[UserC] [varchar](30) NULL,
	[Passw] [varchar](30) NULL,
	[Periodo] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIDEPART]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIDEPART](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[TipoIns] [int] NULL,
	[DataContab] [varchar](255) NULL,
	[CtaVtasContado] [varchar](24) NULL,
	[CtaVtasCredito] [varchar](24) NULL,
	[CtaCompras] [varchar](24) NULL,
	[DPCC] [bit] NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[VentaContadoxCaja] [varchar](24) NULL,
	[CtaCaja] [varchar](24) NULL,
	[CtaCargosPart] [varchar](24) NULL,
	[CtaDescargoPart] [varchar](24) NULL,
	[CtaCostoVenta] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL,
	[UCCO] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIDEPO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIDEPO](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[DataContab] [varchar](255) NULL,
	[CtaVtasContado] [varchar](24) NULL,
	[CtaVtasCredito] [varchar](24) NULL,
	[CtaCompras] [varchar](24) NULL,
	[DPCC] [bit] NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[VentaContadoxCaja] [varchar](24) NULL,
	[CtaCaja] [varchar](24) NULL,
	[CtaCargosPart] [varchar](24) NULL,
	[CtaDescargoPart] [varchar](24) NULL,
	[CtaCostoVenta  ] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIDPCC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIDPCC](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[TipoI] [int] NULL,
	[Tipo] [int] NULL,
	[CodigoI] [varchar](255) NULL,
	[Codigo] [varchar](255) NULL,
	[PorI] [decimal](28, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIINCON]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIINCON](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[ErrorN] [int] NULL,
	[Document] [varchar](255) NULL,
	[Detail] [varchar](255) NULL,
	[ErrorD] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIOPERA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIOPERA](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[DataContab] [varchar](255) NULL,
	[DPCC] [bit] NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[CentroCostoDesc] [varchar](24) NULL,
	[CentroCostoCarg] [varchar](24) NULL,
	[CtaVtasContado] [varchar](24) NULL,
	[CtaVtasCredito] [varchar](24) NULL,
	[CargosInventario] [varchar](24) NULL,
	[DescargosInventario] [varchar](24) NULL,
	[CtaCompras] [varchar](24) NULL,
	[CtaRetencion] [varchar](24) NULL,
	[CtaND] [varchar](24) NULL,
	[CtaNC] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL,
	[DPCCI] [bit] NULL,
	[CentroCostoCxC] [varchar](24) NULL,
	[CentroCostoCxP] [varchar](24) NULL,
	[CxcGeneral] [varchar](24) NULL,
	[CxpGeneral] [varchar](24) NULL,
	[CtaDevolucionesV] [varchar](24) NULL,
	[CtaDevolucionesCrV] [varchar](24) NULL,
	[CtaDevolucionesC] [varchar](24) NULL,
	[CtaRetencionV] [varchar](24) NULL,
	[CtaRetencionC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIPARAM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIPARAM](
	[DB] [varchar](255) NULL,
	[DirecSaint] [varchar](80) NULL,
	[DataContab] [varchar](255) NULL,
	[DirecContab] [varchar](80) NULL,
	[TipoCon] [int] NULL,
	[PrxComprobante] [int] NULL,
	[RifNit] [varchar](40) NULL,
	[CxCGeneral] [varchar](24) NULL,
	[CxPGeneral] [varchar](24) NULL,
	[CtaIngresos] [varchar](24) NULL,
	[CtaEgresos] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL,
	[CargosInventario] [varchar](24) NULL,
	[DescargosInventario] [varchar](24) NULL,
	[OperxDeposito] [bit] NULL,
	[ObviarDiferencias] [bit] NULL,
	[InventarioPermanente] [bit] NULL,
	[CtaCostoVenta] [varchar](24) NULL,
	[CtaAjuste] [varchar](24) NULL,
	[Consolidar] [varchar](24) NULL,
	[ConectAuto] [bit] NULL,
	[CtaClassVta] [varchar](24) NULL,
	[CtaClassPVta] [varchar](24) NULL,
	[CtaClassCom] [varchar](24) NULL,
	[CtaClassOper] [varchar](24) NULL,
	[CtaClassCxC] [varchar](24) NULL,
	[CtaClassCxp] [varchar](24) NULL,
	[CtaCompras] [varchar](24) NULL,
	[CtaVtaContado] [varchar](24) NULL,
	[CtaVtaCredito] [varchar](24) NULL,
	[ImporCfg] [int] NULL,
	[ConfigDoc] [varchar](24) NULL,
	[DocOper] [varchar](24) NULL,
	[CtaProvidenciaV] [varchar](24) NULL,
	[CtaProvXenterarV] [varchar](24) NULL,
	[RifNitFiscoV] [varchar](24) NULL,
	[CtaDctoCashV] [varchar](24) NULL,
	[CtaDctoCrV] [varchar](24) NULL,
	[CtaFletesV] [varchar](24) NULL,
	[CentroCostoFletesV] [varchar](24) NULL,
	[CtaDevolucionesV] [varchar](24) NULL,
	[CtaDevolucionesCRV] [varchar](24) NULL,
	[VentaContadoxCaja] [bit] NULL,
	[CtaCajaV] [varchar](24) NULL,
	[UsaClieTercero] [bit] NULL,
	[CodificaRifNitV] [int] NULL,
	[CrearTerV] [bit] NULL,
	[GuardarItemFactura] [bit] NULL,
	[NitOpEventual] [varchar](24) NULL,
	[CtaProvidenciaC] [varchar](24) NULL,
	[CtaProvXenterarC] [varchar](24) NULL,
	[RifNitFiscoC] [varchar](24) NULL,
	[ContabCostoNeto] [bit] NULL,
	[CtaDescuentosC] [varchar](24) NULL,
	[CtaFletesC] [varchar](24) NULL,
	[CentroCostoFletesC] [varchar](24) NULL,
	[CtaDevolucionesC] [varchar](24) NULL,
	[CompraContadoxCaja] [bit] NULL,
	[CtaCajaC] [varchar](24) NULL,
	[UsaProvTercero] [bit] NULL,
	[CodificaRifNitC] [int] NULL,
	[CrearTerC] [bit] NULL,
	[NitOpEventualC] [varchar](24) NULL,
	[UsaPFiscal] [varchar](1) NULL,
	[CtaAdelantoV] [varchar](24) NULL,
	[CtaAdelantoC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIPROD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIPROD](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[CtaCash] [varchar](24) NULL,
	[CtaCr] [varchar](24) NULL,
	[CtaCompra] [varchar](24) NULL,
	[DPCC] [bit] NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CtaCostoVenta  ] [varchar](24) NULL,
	[CtaRealInventario] [varchar](24) NULL,
	[CtaCargosPart] [varchar](24) NULL,
	[CtaDescargoPart] [varchar](24) NULL,
	[Codigo] [varchar](15) NULL,
	[UCCO] [int] NULL,
	[CtaDevolucionesV] [varchar](24) NULL,
	[CtaDevolucionesCrV] [varchar](24) NULL,
	[CtaDevolucionesC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIPROV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIPROV](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[DataContab] [varchar](255) NULL,
	[UsaCtaParticular] [bit] NULL,
	[Cuenta] [varchar](24) NULL,
	[CtaND] [varchar](24) NULL,
	[CtaNC] [varchar](24) NULL,
	[CtaGastos] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCISERV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCISERV](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[CtaCash] [varchar](24) NULL,
	[CtaCr] [varchar](24) NULL,
	[CtaCompra] [varchar](24) NULL,
	[DPCC] [bit] NULL,
	[CentroCostoCompra] [varchar](24) NULL,
	[CentroCostoVenta] [varchar](24) NULL,
	[CCPUD] [bit] NULL,
	[CtaCxC] [varchar](24) NULL,
	[Codigo] [varchar](15) NULL,
	[UCCO] [int] NULL,
	[CtaCxP] [varchar](24) NULL,
	[CPPUD] [bit] NULL,
	[CtaDevolucionesV] [varchar](24) NULL,
	[CtaDevolucionesCrV] [varchar](24) NULL,
	[CtaDevolucionesC] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCITAXS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCITAXS](
	[DB] [varchar](255) NULL,
	[DataContab] [varchar](255) NULL,
	[Tipo] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[CtaTaxs] [varchar](24) NULL,
	[CtaTaxsD] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCIUSER]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCIUSER](
	[DB] [varchar](255) NULL,
	[Codigo] [varchar](10) NULL,
	[Consol] [varchar](24) NULL,
	[Setup] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCProperty]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCProperty](
	[siType] [smallint] NOT NULL,
	[Descrip] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[siType] ASC,
	[Descrip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SECURITYDETAILS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SECURITYDETAILS](
	[SECURITYDETAILID] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [smallint] NULL,
	[DEPTID] [smallint] NULL,
	[SCHEDULE] [smallint] NULL,
	[USERINFO] [smallint] NULL,
	[ENROLLFINGERS] [smallint] NULL,
	[REPORTVIEW] [smallint] NULL,
	[REPORT] [varchar](10) NULL,
 CONSTRAINT [NAMEID2] PRIMARY KEY CLUSTERED 
(
	[SECURITYDETAILID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERVIT_01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVIT_01](
	[Numero] [varchar](15) NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[CodClie] [varchar](15) NULL,
	[Descrip] [varchar](60) NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](40) NULL,
	[Represent] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaM] [datetime] NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Linea1] [varchar](60) NULL,
	[Linea2] [varchar](60) NULL,
	[Linea3] [varchar](60) NULL,
	[Linea4] [varchar](60) NULL,
	[Linea5] [varchar](60) NULL,
	[Status] [varchar](20) NOT NULL,
	[TecAsig] [varchar](40) NOT NULL,
	[Estacion] [varchar](40) NULL,
	[Equipo] [varchar](40) NULL,
	[Marca] [varchar](40) NULL,
	[Modelo] [varchar](40) NULL,
	[Serial] [varchar](40) NULL,
	[FechaP] [datetime] NULL,
	[Prioridad] [varchar](15) NULL,
	[Responsable] [varchar](40) NULL,
	[Accesorios1] [varchar](60) NULL,
	[Accesorios2] [varchar](60) NULL,
 CONSTRAINT [PK_SERVIT_01] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC,
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERVIT_01_old]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVIT_01_old](
	[Numero] [varchar](15) NOT NULL,
	[CodClie] [varchar](15) NULL,
	[Descrip] [varchar](60) NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](40) NULL,
	[Represent] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaM] [datetime] NULL,
	[Linea1] [varchar](60) NULL,
	[Linea2] [varchar](60) NULL,
	[Linea3] [varchar](60) NULL,
	[Linea4] [varchar](60) NULL,
	[Linea5] [varchar](60) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Tipo] [varchar](1) NULL,
	[Status] [varchar](20) NOT NULL,
	[TecAsig] [varchar](40) NOT NULL,
	[Estacion] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERVIT_02]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVIT_02](
	[Numero] [varchar](15) NOT NULL,
	[CodClie] [varchar](15) NULL,
	[Descrip] [varchar](60) NOT NULL,
	[Telef] [varchar](30) NULL,
	[Email] [varchar](40) NULL,
	[Represent] [varchar](40) NULL,
	[FechaE] [datetime] NULL,
	[FechaC] [datetime] NULL,
	[Linea1] [varchar](60) NULL,
	[Linea2] [varchar](60) NULL,
	[Linea3] [varchar](60) NULL,
	[Linea4] [varchar](60) NULL,
	[Linea5] [varchar](60) NULL,
	[Direc1] [varchar](60) NULL,
	[Direc2] [varchar](60) NULL,
	[Tipo] [smallint] NULL,
	[Status] [varchar](20) NOT NULL,
	[TecAsig] [varchar](40) NULL,
	[Estacion] [varchar](40) NULL,
	[Observacion1] [varchar](50) NULL,
	[Observacion2] [varchar](50) NULL,
	[Observacion3] [varchar](50) NULL,
 CONSTRAINT [PK_SERVIT_02] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SERVIT_Conf]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SERVIT_Conf](
	[CodConf] [smallint] NOT NULL,
	[From] [varchar](40) NULL,
	[To1] [varchar](40) NULL,
	[To2] [varchar](40) NULL,
	[To3] [varchar](40) NULL,
	[Host] [varchar](20) NULL,
	[Port] [int] NULL,
	[Pass] [varchar](10) NULL,
	[Display] [varchar](40) NULL,
	[PrxRecepcion] [varchar](15) NULL,
	[PrxSolicitud] [varchar](15) NULL,
 CONSTRAINT [PK_SERVIT_Conf] PRIMARY KEY CLUSTERED 
(
	[CodConf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SFTFLD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SFTFLD](
	[folderid] [int] IDENTITY(1,1) NOT NULL,
	[foldername] [varchar](60) NOT NULL,
	[parentid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[foldername] ASC,
	[parentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SFTITM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SFTITM](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[folderid] [int] NOT NULL,
	[itemname] [varchar](60) NOT NULL,
	[itemsize] [int] NULL,
	[itemtype] [int] NOT NULL,
	[modified] [datetime] NOT NULL,
	[deleted] [datetime] NULL,
	[template] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[folderid] ASC,
	[itemtype] ASC,
	[itemname] ASC,
	[modified] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHIFT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIFT](
	[SHIFTID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](20) NULL,
	[USHIFTID] [int] NULL,
	[STARTDATE] [datetime] NOT NULL,
	[ENDDATE] [datetime] NULL,
	[RUNNUM] [smallint] NULL,
	[SCH1] [int] NULL,
	[SCH2] [int] NULL,
	[SCH3] [int] NULL,
	[SCH4] [int] NULL,
	[SCH5] [int] NULL,
	[SCH6] [int] NULL,
	[SCH7] [int] NULL,
	[SCH8] [int] NULL,
	[SCH9] [int] NULL,
	[SCH10] [int] NULL,
	[SCH11] [int] NULL,
	[SCH12] [int] NULL,
	[CYCLE] [smallint] NULL,
	[UNITS] [smallint] NULL,
 CONSTRAINT [SHIFTS] PRIMARY KEY CLUSTERED 
(
	[SHIFTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMENTRADA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMENTRADA](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Estado] [int] NOT NULL,
	[Movil] [varchar](30) NULL,
	[Numero] [varchar](30) NULL,
	[Mensaje] [text] NULL,
 CONSTRAINT [SMENTRADA_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMENVIOHDR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMENVIOHDR](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[FechaE] [datetime] NULL,
	[Estado] [int] NOT NULL,
	[Origen] [varchar](50) NULL,
	[Mensaje] [text] NULL,
 CONSTRAINT [SMENVIOHDR_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMENVIOMOV]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMENVIOMOV](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[NroPpal] [int] NOT NULL,
	[Descrip] [varchar](50) NULL,
	[Estado] [int] NOT NULL,
	[Movil] [varchar](30) NULL,
 CONSTRAINT [SMENVIOMOV_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSAUTR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSAUTR](
	[CodAutr] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[Autoriza] [varchar](15) NOT NULL,
 CONSTRAINT [SSAUTR_IX0] PRIMARY KEY CLUSTERED 
(
	[CodAutr] ASC,
	[Modulo] ASC,
	[Parametro] ASC,
	[Autoriza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSDTAA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSDTAA](
	[CodArch] [int] NOT NULL,
	[CodData] [varchar](30) NOT NULL,
	[IndDta] [int] NOT NULL,
	[TipDta] [varchar](50) NULL,
 CONSTRAINT [SSDTAA_IX0] PRIMARY KEY CLUSTERED 
(
	[CodArch] ASC,
	[CodData] ASC,
	[IndDta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSFLDS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSFLDS](
	[CodNivl] [varchar](15) NOT NULL,
	[Tabla] [varchar](60) NOT NULL,
	[NCampo] [int] NOT NULL,
	[Descrip] [varchar](70) NULL,
	[Activo] [int] NOT NULL,
	[Editable] [int] NOT NULL,
 CONSTRAINT [SSFLDS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodNivl] ASC,
	[Tabla] ASC,
	[NCampo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSFMTS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSFMTS](
	[FmtNro] [int] NOT NULL,
	[FmtTit] [varchar](70) NULL,
	[FmtNme] [varchar](70) NULL,
 CONSTRAINT [SSFMTS_IX0] PRIMARY KEY CLUSTERED 
(
	[FmtNro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSNIVL]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSNIVL](
	[CodNivl] [int] NOT NULL,
	[Descrip] [varchar](50) NOT NULL,
 CONSTRAINT [SSNIVL_IX0] PRIMARY KEY CLUSTERED 
(
	[CodNivl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSOPMN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSOPMN](
	[CodMenu] [varchar](15) NOT NULL,
	[CodOpMn] [varchar](13) NOT NULL,
	[Nivel] [int] NOT NULL,
	[Nombre] [varchar](70) NOT NULL,
	[Accion] [int] NOT NULL,
	[OpActiva] [int] NOT NULL,
	[UPrinter] [int] NOT NULL,
	[SSFld] [varchar](35) NULL,
 CONSTRAINT [SSOPMN_IX0] PRIMARY KEY CLUSTERED 
(
	[CodMenu] ASC,
	[CodOpMn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSPARD]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSPARD](
	[CodParm] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[NoData] [int] NOT NULL,
	[TipoData] [int] NOT NULL,
	[IData] [int] NOT NULL,
	[SData] [varchar](50) NULL,
	[FData] [decimal](28, 3) NOT NULL,
	[SSFld] [varchar](35) NULL,
 CONSTRAINT [SSPARD_IX0] PRIMARY KEY CLUSTERED 
(
	[CodParm] ASC,
	[Modulo] ASC,
	[Parametro] ASC,
	[NoData] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSPARM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSPARM](
	[CodParm] [varchar](15) NOT NULL,
	[Modulo] [int] NOT NULL,
	[Parametro] [int] NOT NULL,
	[Activo] [int] NOT NULL,
	[Clave] [int] NOT NULL,
	[Habilitado] [int] NOT NULL,
	[SSFld] [varchar](35) NULL,
 CONSTRAINT [SSPARM_IX0] PRIMARY KEY CLUSTERED 
(
	[CodParm] ASC,
	[Modulo] ASC,
	[Parametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSTRACE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSTRACE](
	[NroUnico] [int] IDENTITY(1,1) NOT NULL,
	[CodEsta] [varchar](50) NOT NULL,
	[CodUsua] [varchar](50) NOT NULL,
	[DesUsua] [varchar](50) NOT NULL,
	[CodUEst] [varchar](50) NOT NULL,
	[DesUEst] [varchar](50) NOT NULL,
	[SisSnt] [varchar](30) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [SSTRACE_IX0] PRIMARY KEY CLUSTERED 
(
	[NroUnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SSUSRS]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SSUSRS](
	[CodUsua] [varchar](10) NOT NULL,
	[Descrip] [varchar](50) NOT NULL,
	[EMail] [varchar](50) NULL,
	[UsrDta1] [varchar](50) NULL,
	[UsrDta2] [varchar](50) NULL,
	[UsrDta3] [varchar](50) NULL,
	[UsrDta4] [varchar](50) NULL,
	[UsrDta5] [varchar](50) NULL,
	[SData1] [varchar](250) NOT NULL,
	[SData2] [varchar](250) NOT NULL,
	[SData3] [varchar](250) NOT NULL,
	[Movil] [varchar](15) NULL,
	[CodVend] [varchar](15) NULL,
	[IdUserNot] [int] NOT NULL,
	[Profile] [varchar](50) NULL,
	[UserId] [varchar](15) NULL,
 CONSTRAINT [SSUSRS_IX0] PRIMARY KEY CLUSTERED 
(
	[CodUsua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[IDCountry] [varchar](4) NOT NULL,
	[IDState] [varchar](4) NOT NULL,
	[Descrip] [varchar](80) NOT NULL,
 CONSTRAINT [State0] PRIMARY KEY CLUSTERED 
(
	[IDCountry] ASC,
	[IDState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STIB01]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STIB01](
	[NOpe] [int] NOT NULL,
	[CodBanco] [varchar](30) NULL,
	[DesBanco] [varchar](70) NULL,
	[NoCuenta] [varchar](20) NULL,
	[NroDcto] [varchar](25) NULL,
	[NroComp] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[FechaA] [varchar](4) NULL,
	[FechaM] [varchar](4) NULL,
	[FechaD] [varchar](4) NULL,
	[TipBen] [int] NOT NULL,
	[CodBene] [varchar](30) NULL,
	[AOD] [varchar](1) NULL,
	[TDC] [int] NOT NULL,
	[DesTDC] [varchar](50) NULL,
	[CDCD] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[MtoOp] [decimal](28, 3) NOT NULL,
	[MtoDb] [decimal](28, 3) NOT NULL,
	[MtoCr] [decimal](28, 3) NOT NULL,
	[MtoEfe] [decimal](28, 3) NOT NULL,
	[MtoChe] [decimal](28, 3) NOT NULL,
	[MtoTar] [decimal](28, 3) NOT NULL,
	[MtoTxt1] [varchar](150) NULL,
	[MtoTxt2] [varchar](150) NULL,
	[MtoTxt3] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STIB02]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STIB02](
	[NOpe] [int] NOT NULL,
	[CodCta] [varchar](50) NULL,
	[DesCta] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[MtoOp] [decimal](28, 3) NOT NULL,
	[MtoDb] [decimal](28, 3) NOT NULL,
	[MtoCr] [decimal](28, 3) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMAXM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMAXM](
	[CODNOM] [int] NOT NULL,
	[CODCON] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[CEDULA] [int] NULL,
	[APENOM] [varchar](60) NULL,
	[TIPCON] [varchar](1) NOT NULL,
	[VALOR] [decimal](17, 2) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[UNIDAD] [varchar](10) NULL,
	[IMPDET] [varchar](1) NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[CODBANCOB] [int] NULL,
	[CODBANLPH] [int] NULL,
	[DESCRIP] [varchar](60) NULL,
	[SALDOPRE] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC,
	[TIPCON] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODNOM] ASC,
	[CEDULA] ASC,
	[TIPCON] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMBAN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMBAN](
	[COD_BAN] [int] NOT NULL,
	[DES_BAN] [varchar](60) NULL,
	[SUC_BAN] [varchar](20) NULL,
	[DIRECCION] [varchar](60) NULL,
	[GERENTE] [varchar](40) NULL,
	[CUENTACOB] [varchar](22) NULL,
	[TIPOCUENTA] [varchar](1) NULL,
	[TEXTOINICIAL] [char](2000) NULL,
	[TEXTOFINAL] [char](2000) NULL,
	[MARKAR] [tinyint] NULL,
	[COD_GBAN] [int] NULL,
	[CTACON] [varchar](20) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_BAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMBAR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMBAR](
	[CODIGO] [smallint] NOT NULL,
	[DESCRIPCION] [varchar](40) NULL,
	[TIPODATO] [varchar](19) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCAM]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCAM](
	[ARCHIVO] [varchar](15) NULL,
	[ID] [int] NOT NULL,
	[DESCRIP] [varchar](40) NULL,
	[ETIQUETA] [varchar](40) NULL,
	[TIPO] [varchar](1) NULL,
	[CODORGH] [varchar](10) NULL,
	[VALDEFECTO1] [varchar](80) NULL,
	[PARTICULAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[BUSCA] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ARCHIVO] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCAR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCAR](
	[COD_CAR] [varchar](8) NOT NULL,
	[DES_CAR] [varchar](60) NULL,
	[PERFIL] [char](1000) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_CAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCAT]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCAT](
	[CODORG] [varchar](6) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[GR] [varchar](6) NULL,
	[EE] [tinyint] NULL,
	[GRUPO] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCCC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCCC](
	[CODCON] [int] NOT NULL,
	[CONTRATO] [varchar](20) NOT NULL,
	[CTACON] [varchar](22) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCCN]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCCN](
	[CODCON] [int] NOT NULL,
	[CODORG] [int] NOT NULL,
	[CTACON] [varchar](22) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCCO]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCCO](
	[CODCON] [int] NOT NULL,
	[CONTRATO] [varchar](20) NOT NULL,
	[CODCCOSTO] [int] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCCP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCCP](
	[CODCON] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[VALOR] [varchar](80) NULL,
	[MASCARA] [varchar](9) NULL,
	[TIPO] [varchar](1) NULL,
	[CODORGD] [varchar](10) NULL,
	[CODORGH] [varchar](10) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCES]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCES](
	[CODCON] [int] NOT NULL,
	[ESTADO] [varchar](20) NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCFE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMCFE](
	[CODCON] [int] NOT NULL,
	[CODFRE] [int] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CODFRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODFRE] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMCNC]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMCNC](
	[CODCON] [int] NOT NULL,
	[CODORG] [int] NOT NULL,
	[CODCCOSTO] [int] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMCON]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCON](
	[CODCON] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[TIPCON] [varchar](1) NULL,
	[UNIDAD] [varchar](1) NULL,
	[CTACON] [varchar](22) NULL,
	[CONTRACTUAL] [varchar](1) NULL,
	[IMPDET] [varchar](1) NULL,
	[PRORATEA] [varchar](1) NULL,
	[USAALTER] [varchar](1) NULL,
	[DESCALTER] [char](1000) NULL,
	[FORMULA] [char](2000) NULL,
	[MODIFDEF] [tinyint] NULL,
	[MARKAR] [tinyint] NULL,
	[TERCERO] [tinyint] NULL,
	[CCOSTO] [tinyint] NULL,
	[CODCCOSTO] [int] NULL,
	[DEBCRE] [varchar](1) NULL,
	[BONIFICABLE] [tinyint] NULL,
	[HTIEMPO] [tinyint] NULL,
	[VALDEFECTO] [decimal](17, 2) NULL,
	[CON_CU_CC] [tinyint] NULL,
	[CON_MCUN_CC] [tinyint] NULL,
	[CON_MCUC_CC] [tinyint] NULL,
	[CON_CU_MCCN] [tinyint] NULL,
	[CON_CU_MCCC] [tinyint] NULL,
	[CON_MCUN_MCCN] [tinyint] NULL,
	[CON_MCUC_MCCC] [tinyint] NULL,
	[CON_MCUN_MCCC] [tinyint] NULL,
	[CON_MCUC_MCCN] [tinyint] NULL,
	[NIVELESCUENTA] [tinyint] NULL,
	[NIVELESCCOSTO] [tinyint] NULL,
	[SEMODIFICA] [tinyint] NULL,
	[VERREF] [tinyint] NULL,
	[VERMONTO] [tinyint] NULL,
	[PARTICULAR] [tinyint] NULL,
	[MONTOCERO] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[FMODIF] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCSE]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCSE](
	[CODUSER] [varchar](8) NOT NULL,
	[CODTIP] [int] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODUSER] ASC,
	[CODTIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCTA]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCTA](
	[CODCON] [int] NOT NULL,
	[COD_TAC] [varchar](6) NOT NULL,
	[OPERACION] [varchar](1) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[COD_TAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMCTI]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMCTI](
	[CODCON] [int] NOT NULL,
	[CODTIP] [int] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODCON] ASC,
	[CODTIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODTIP] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMCTR]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMCTR](
	[CONTRATO] [varchar](20) NOT NULL,
	[ID] [int] NOT NULL,
	[VALOR] [varchar](80) NULL,
	[MASCARA] [varchar](9) NULL,
	[TIPO] [varchar](1) NULL,
	[CODORGD] [varchar](10) NULL,
	[CODORGH] [varchar](10) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CONTRATO] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC,
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMDEP]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMDEP](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMDES]    Script Date: 28/04/2016 12:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMDES](
	[CODNOM] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[OBSER1] [varchar](40) NULL,
	[OBSER2] [varchar](40) NULL,
	[OBSER3] [varchar](40) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMDIR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMDIR](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMDPR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMDPR](
	[NUMPRE] [int] NOT NULL,
	[FICHA] [varchar](10) NULL,
	[TIPOCUO] [varchar](1) NULL,
	[NUMCUO] [int] NOT NULL,
	[FECHAVEN] [int] NULL,
	[ANIOVEN] [int] NULL,
	[MESVEN] [tinyint] NULL,
	[DIAS] [int] NULL,
	[SALINICIAL] [decimal](17, 2) NULL,
	[MONTOCUO] [decimal](17, 2) NULL,
	[MONTOINT] [decimal](17, 2) NULL,
	[MONTOCAP] [decimal](17, 2) NULL,
	[SALFINAL] [decimal](17, 2) NULL,
	[FECHACAN] [int] NULL,
	[ESTADOPRE] [varchar](20) NULL,
	[DETALLE] [char](1000) NULL,
	[DEDESPECIAL] [tinyint] NULL,
	[CODNOM] [int] NULL,
	[SFECHAVEN] [varchar](8) NULL,
	[SFECHACAN] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMPRE] ASC,
	[NUMCUO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NUMPRE] ASC,
	[FECHAVEN] ASC,
	[NUMCUO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMDTA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMDTA](
	[CODORGH] [varchar](10) NOT NULL,
	[CODORGD] [varchar](10) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORGH] ASC,
	[CODORGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMEXP]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMEXP](
	[CODEXP] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[ORGANISMO] [varchar](40) NULL,
	[NOTAS] [varchar](200) NULL,
	[FORMULA] [char](6000) NULL,
	[TIPOEXP] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODEXP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMFAM]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMFAM](
	[CED_PER] [int] NULL,
	[CED_FAM] [int] NULL,
	[FICHA] [varchar](10) NULL,
	[NOM_FAM] [varchar](60) NULL,
	[COD_PAR] [varchar](6) NULL,
	[SEX_FAM] [varchar](20) NULL,
	[FEC_NAC] [int] NULL,
	[CODGUA] [int] NULL,
	[COSTO] [decimal](17, 2) NULL,
	[NACIONALIDAD] [tinyint] NULL,
	[AFILIADO] [varchar](1) NULL,
	[GRADOESC] [varchar](19) NULL,
	[SFEC_NAC] [varchar](8) NULL,
	[CONTROL] [int] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CONTROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMFIE]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMFIE](
	[FECHA] [int] NOT NULL,
	[DES_FIE] [varchar](60) NULL,
	[DIAFIESTA] [tinyint] NULL,
	[SFECHA] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMFIP]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMFIP](
	[FICHA] [varchar](10) NOT NULL,
	[FECHA] [int] NOT NULL,
	[DES_FIE] [varchar](60) NULL,
	[DIAFIESTA] [tinyint] NULL,
	[SFECHA] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FICHA] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMFIT]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMFIT](
	[CODTIP] [int] NOT NULL,
	[FECHA] [int] NOT NULL,
	[DES_FIE] [varchar](60) NULL,
	[DIAFIESTA] [tinyint] NULL,
	[SFECHA] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODTIP] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMFRE]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMFRE](
	[CODFRE] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[DIASPERIODO] [int] NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[FECHA_INI] [int] NULL,
	[FECHA_FIN] [int] NULL,
	[PERIODOS] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODFRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMGBA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMGBA](
	[COD_GBAN] [int] NOT NULL,
	[DES_BAN] [varchar](60) NULL,
	[SUC_BAN] [varchar](20) NULL,
	[DIRECCION] [varchar](60) NULL,
	[GERENTE] [varchar](40) NULL,
	[CUENTACOB] [varchar](20) NULL,
	[TIPOCUENTA] [varchar](1) NULL,
	[TEXTOINICIAL] [char](2000) NULL,
	[TEXTOFINAL] [char](2000) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_GBAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMGER]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMGER](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMGRA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMGRA](
	[DESDE] [decimal](11, 2) NULL,
	[HASTA] [decimal](11, 2) NOT NULL,
	[TASA] [decimal](7, 2) NULL,
	[SUSTRA] [decimal](11, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[HASTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMGRU]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMGRU](
	[GR] [varchar](6) NOT NULL,
	[SALARIO] [decimal](17, 2) NULL,
	[BONOMES] [decimal](17, 2) NULL,
	[BONODIA] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[GR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMGUA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMGUA](
	[CODORG] [int] NOT NULL,
	[CODSUC] [int] NULL,
	[RIF] [varchar](20) NULL,
	[DESCRIP] [varchar](60) NULL,
	[DIR_EMP] [varchar](120) NULL,
	[TEL_EMP] [varchar](25) NULL,
	[TIPO_INS] [varchar](20) NULL,
	[CODINST] [varchar](20) NULL,
	[MONTINSCR] [decimal](17, 2) NULL,
	[MONTMEN] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHHM]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHHM](
	[CODNOM] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[FECHA] [int] NULL,
	[FECHAPAGO] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[CODTIP] [int] NOT NULL,
	[FRECUENCIA] [int] NULL,
	[STATUS] [varchar](1) NULL,
	[TIPNOM] [tinyint] NULL,
	[LIBRE] [tinyint] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[NIVEL1] [tinyint] NULL,
	[NIVEL2] [tinyint] NULL,
	[NIVEL3] [tinyint] NULL,
	[NIVEL4] [tinyint] NULL,
	[NIVEL5] [tinyint] NULL,
	[CODCARGO] [varchar](8) NULL,
	[TODOCARGO] [tinyint] NULL,
	[VACPROGRAMA] [tinyint] NULL,
	[MARKAR] [tinyint] NULL,
	[VACCOLECTIVAS] [tinyint] NULL,
	[CONTRATO] [varchar](20) NULL,
	[SFECHA] [varchar](8) NULL,
	[SFECHAPAGO] [varchar](8) NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[COD_TLI] [varchar](19) NULL,
	[PERIODO] [int] NULL,
	[CODHT1] [int] NULL,
	[CODHT2] [int] NULL,
	[EE] [tinyint] NULL,
	[NPERIODO] [smallint] NULL,
	[CODHT3] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODTIP] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHMD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHMD](
	[CODNOM] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[CODPRO] [int] NULL,
	[TIPNOM] [int] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[CODCAT] [varchar](6) NULL,
	[CODCARGO] [varchar](8) NULL,
	[FECING] [int] NULL,
	[FORCOB] [varchar](39) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[TIPEMP] [varchar](20) NULL,
	[TIPOPRES] [tinyint] NULL,
	[COD_TLI] [varchar](19) NULL,
	[SUESAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[TOTASIGNA] [decimal](17, 2) NULL,
	[TOTDEDUC] [decimal](17, 2) NULL,
	[ESTADO] [varchar](20) NULL,
	[MARKAR] [tinyint] NULL,
	[PROBLEMA] [tinyint] NULL,
	[FECFIN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TIPNOM] ASC,
	[CODNOM] ASC,
	[CODSUC] ASC,
	[CODDIR] ASC,
	[CODVP] ASC,
	[CODGER] ASC,
	[CODDEP] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FICHA] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHMV000001]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHMV000001](
	[CODNOM] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[FECHA] [int] NULL,
	[FECHAPAGO] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[CODTIP] [int] NULL,
	[FRECUENCIA] [int] NULL,
	[STATUS] [varchar](1) NULL,
	[TIPNOM] [tinyint] NULL,
	[LIBRE] [tinyint] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[NIVEL1] [tinyint] NULL,
	[NIVEL2] [tinyint] NULL,
	[NIVEL3] [tinyint] NULL,
	[NIVEL4] [tinyint] NULL,
	[NIVEL5] [tinyint] NULL,
	[CODCARGO] [varchar](8) NULL,
	[TODOCARGO] [tinyint] NULL,
	[VACPROGRAMA] [tinyint] NULL,
	[MARKAR] [tinyint] NULL,
	[VACCOLECTIVAS] [tinyint] NULL,
	[CONTRATO] [varchar](20) NULL,
	[SFECHA] [varchar](8) NULL,
	[SFECHAPAGO] [varchar](8) NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[COD_TLI] [varchar](19) NULL,
	[PERIODO] [int] NULL,
	[CODHT1] [int] NULL,
	[CODHT2] [int] NULL,
	[EE] [tinyint] NULL,
	[NPERIODO] [smallint] NULL,
	[CODHT3] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NPERIODO] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODTIP] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHMV000002]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHMV000002](
	[CODNOM] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[FECHA] [int] NULL,
	[FECHAPAGO] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[CODTIP] [int] NULL,
	[FRECUENCIA] [int] NULL,
	[STATUS] [varchar](1) NULL,
	[TIPNOM] [tinyint] NULL,
	[LIBRE] [tinyint] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[NIVEL1] [tinyint] NULL,
	[NIVEL2] [tinyint] NULL,
	[NIVEL3] [tinyint] NULL,
	[NIVEL4] [tinyint] NULL,
	[NIVEL5] [tinyint] NULL,
	[CODCARGO] [varchar](8) NULL,
	[TODOCARGO] [tinyint] NULL,
	[VACPROGRAMA] [tinyint] NULL,
	[MARKAR] [tinyint] NULL,
	[VACCOLECTIVAS] [tinyint] NULL,
	[CONTRATO] [varchar](20) NULL,
	[SFECHA] [varchar](8) NULL,
	[SFECHAPAGO] [varchar](8) NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[COD_TLI] [varchar](19) NULL,
	[PERIODO] [int] NULL,
	[CODHT1] [int] NULL,
	[CODHT2] [int] NULL,
	[EE] [tinyint] NULL,
	[NPERIODO] [smallint] NULL,
	[CODHT3] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[NPERIODO] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODTIP] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHPR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHPR](
	[NUMPRE] [int] NOT NULL,
	[FICHA] [varchar](10) NULL,
	[MESES] [tinyint] NULL,
	[FECHAAPRO] [int] NULL,
	[FECPRICUP] [int] NULL,
	[TIPINT] [varchar](1) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[TASA] [decimal](7, 2) NULL,
	[ESTADOPRE] [varchar](20) NULL,
	[DETALLE] [char](1000) NULL,
	[CODIGOPR] [varchar](6) NULL,
	[MARKAR] [tinyint] NULL,
	[CODNOM] [int] NULL,
	[TOTPRES] [decimal](17, 2) NULL,
	[SFECHAAPRO] [varchar](8) NULL,
	[SFECPRICUP] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMPRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FICHA] ASC,
	[NUMPRE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHTA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHTA](
	[CODORGH] [varchar](10) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHTD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHTD](
	[CODHT] [int] NOT NULL,
	[CODCON] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[FICHA] [varchar](10) NOT NULL,
	[CEDULA] [int] NULL,
	[REF1] [decimal](13, 2) NULL,
	[REF2] [decimal](13, 2) NULL,
	[REF3] [decimal](13, 2) NULL,
	[REF4] [decimal](13, 2) NULL,
	[REF5] [decimal](13, 2) NULL,
	[REF6] [decimal](13, 2) NULL,
	[REF7] [decimal](13, 2) NULL,
	[CODCON2] [int] NULL,
	[REF12] [decimal](13, 2) NULL,
	[REF22] [decimal](13, 2) NULL,
	[REF32] [decimal](13, 2) NULL,
	[REF42] [decimal](13, 2) NULL,
	[REF52] [decimal](13, 2) NULL,
	[REF62] [decimal](13, 2) NULL,
	[REF72] [decimal](13, 2) NULL,
	[CODCON3] [int] NULL,
	[REF13] [decimal](13, 2) NULL,
	[REF23] [decimal](13, 2) NULL,
	[REF33] [decimal](13, 2) NULL,
	[REF43] [decimal](13, 2) NULL,
	[REF53] [decimal](13, 2) NULL,
	[REF63] [decimal](13, 2) NULL,
	[REF74] [decimal](13, 2) NULL,
	[CODIGO1] [int] NULL,
	[CODIGO2] [int] NULL,
	[CODIGO3] [int] NULL,
	[CODIGO4] [int] NULL,
	[CODIGO5] [int] NULL,
	[CODIGO6] [int] NULL,
	[CODIGO7] [int] NULL,
	[CODIGO12] [int] NULL,
	[CODIGO22] [int] NULL,
	[CODIGO32] [int] NULL,
	[CODIGO42] [int] NULL,
	[CODIGO52] [int] NULL,
	[CODIGO62] [int] NULL,
	[CODIGO72] [int] NULL,
	[CODIGO13] [int] NULL,
	[CODIGO23] [int] NULL,
	[CODIGO33] [int] NULL,
	[CODIGO43] [int] NULL,
	[CODIGO53] [int] NULL,
	[CODIGO63] [int] NULL,
	[CODIGO73] [int] NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[REF08] [decimal](7, 2) NULL,
	[REF09] [decimal](7, 2) NULL,
	[REF010] [decimal](7, 2) NULL,
	[REF011] [decimal](7, 2) NULL,
	[REF012] [decimal](7, 2) NULL,
	[REF013] [decimal](7, 2) NULL,
	[REF014] [decimal](7, 2) NULL,
	[REF015] [decimal](7, 2) NULL,
	[REF82] [decimal](7, 2) NULL,
	[REF92] [decimal](7, 2) NULL,
	[REF102] [decimal](7, 2) NULL,
	[REF112] [decimal](7, 2) NULL,
	[REF122] [decimal](7, 2) NULL,
	[REF132] [decimal](7, 2) NULL,
	[REF142] [decimal](7, 2) NULL,
	[REF152] [decimal](7, 2) NULL,
	[REF83] [decimal](7, 2) NULL,
	[REF93] [decimal](7, 2) NULL,
	[REF103] [decimal](7, 2) NULL,
	[REF113] [decimal](7, 2) NULL,
	[REF123] [decimal](7, 2) NULL,
	[REF133] [decimal](7, 2) NULL,
	[REF143] [decimal](7, 2) NULL,
	[REF153] [decimal](7, 2) NULL,
	[CODCON4] [int] NULL,
	[REF14] [decimal](13, 2) NULL,
	[REF24] [decimal](13, 2) NULL,
	[REF34] [decimal](13, 2) NULL,
	[REF44] [decimal](13, 2) NULL,
	[REF54] [decimal](13, 2) NULL,
	[REF64] [decimal](13, 2) NULL,
	[REF77] [decimal](13, 2) NULL,
	[REF84] [decimal](13, 2) NULL,
	[REF94] [decimal](13, 2) NULL,
	[REF104] [decimal](13, 2) NULL,
	[REF114] [decimal](13, 2) NULL,
	[REF124] [decimal](13, 2) NULL,
	[REF134] [decimal](13, 2) NULL,
	[REF144] [decimal](13, 2) NULL,
	[REF154] [decimal](13, 2) NULL,
	[CODCON5] [int] NULL,
	[REF15] [decimal](13, 2) NULL,
	[REF25] [decimal](13, 2) NULL,
	[REF35] [decimal](13, 2) NULL,
	[REF45] [decimal](13, 2) NULL,
	[REF55] [decimal](13, 2) NULL,
	[REF65] [decimal](13, 2) NULL,
	[REF75] [decimal](13, 2) NULL,
	[REF85] [decimal](13, 2) NULL,
	[REF95] [decimal](13, 2) NULL,
	[REF105] [decimal](13, 2) NULL,
	[REF115] [decimal](13, 2) NULL,
	[REF125] [decimal](13, 2) NULL,
	[REF135] [decimal](13, 2) NULL,
	[REF145] [decimal](13, 2) NULL,
	[REF155] [decimal](13, 2) NULL,
	[REF16] [decimal](13, 2) NULL,
	[REF162] [decimal](13, 2) NULL,
	[REF163] [decimal](13, 2) NULL,
	[REF164] [decimal](13, 2) NULL,
	[REF165] [decimal](13, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODHT] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHTH]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHTH](
	[CODHT] [int] NOT NULL,
	[CODCON] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[FORMULA] [char](3000) NULL,
	[MARKAR] [tinyint] NULL,
	[EDOHT] [tinyint] NULL,
	[CONTRATO] [varchar](20) NULL,
	[TODOS] [tinyint] NULL,
	[CODCON2] [int] NULL,
	[CODCON3] [int] NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[CODTIP] [int] NULL,
	[CODCON4] [int] NULL,
	[CODCON5] [int] NULL,
	[EE] [tinyint] NULL,
	[TIPODIA1] [tinyint] NULL,
	[TIPODIA2] [tinyint] NULL,
	[TIPODIA3] [tinyint] NULL,
	[TIPODIA4] [tinyint] NULL,
	[TIPODIA5] [tinyint] NULL,
	[TIPODIA6] [tinyint] NULL,
	[TIPODIA7] [tinyint] NULL,
	[TIPODIA8] [tinyint] NULL,
	[TIPODIA9] [tinyint] NULL,
	[TIPODIA10] [tinyint] NULL,
	[TIPODIA11] [tinyint] NULL,
	[TIPODIA12] [tinyint] NULL,
	[TIPODIA13] [tinyint] NULL,
	[TIPODIA14] [tinyint] NULL,
	[TIPODIA15] [tinyint] NULL,
	[FERIADO1] [tinyint] NULL,
	[FERIADO2] [tinyint] NULL,
	[FERIADO3] [tinyint] NULL,
	[FERIADO4] [tinyint] NULL,
	[FERIADO5] [tinyint] NULL,
	[FERIADO6] [tinyint] NULL,
	[FERIADO7] [tinyint] NULL,
	[FERIADO8] [tinyint] NULL,
	[FERIADO9] [tinyint] NULL,
	[FERIADO10] [tinyint] NULL,
	[FERIADO11] [tinyint] NULL,
	[FERIADO12] [tinyint] NULL,
	[FERIADO13] [tinyint] NULL,
	[FERIADO14] [tinyint] NULL,
	[FERIADO15] [tinyint] NULL,
	[TIPODIA16] [tinyint] NULL,
	[FERIADO16] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMHVA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMHVA](
	[PERIODO] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[CEDUDA] [int] NULL,
	[DDISFRUTE] [decimal](7, 2) NULL,
	[DPAGO] [decimal](7, 2) NULL,
	[DPAGOB] [decimal](7, 2) NULL,
	[FECHAVAC] [int] NULL,
	[FECHAREIVAC] [int] NULL,
	[OPERACION] [varchar](2) NOT NULL,
	[FECHAOPR] [int] NOT NULL,
	[ESTADO] [varchar](20) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[TIPNOM] [int] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[DETALLE] [char](1000) NULL,
	[CODNOM] [int] NULL,
	[SFECHAVAC] [varchar](8) NULL,
	[SFECHAREIVAC] [varchar](8) NULL,
	[SFECHAOPR] [varchar](8) NULL,
	[TIPOOPER] [tinyint] NOT NULL,
	[DESOPER] [varchar](29) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FICHA] ASC,
	[PERIODO] ASC,
	[FECHAOPR] ASC,
	[TIPOOPER] ASC,
	[OPERACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMLOG]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMLOG](
	[CODLOGRO] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODLOGRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMCT]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMCT](
	[CONTRATO] [varchar](20) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[MONTONETO] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMDN]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMDN](
	[CODNOM] [int] NOT NULL,
	[CODCON] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[TIPCON] [varchar](1) NULL,
	[VALOR] [decimal](17, 2) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[UNIDAD] [varchar](10) NULL,
	[IMPDET] [varchar](1) NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[DESCRIP] [varchar](60) NULL,
	[MONTOBASE] [decimal](17, 2) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[REFCHEQUE] [varchar](10) NULL,
	[MONTOTOTAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[TOTASIGNA] [decimal](17, 2) NULL,
	[TOTDEDUC] [decimal](17, 2) NULL,
	[NETO] [decimal](17, 2) NULL,
	[BONIFICABLE] [tinyint] NULL,
	[HTIEMPO] [tinyint] NULL,
	[SALDOPRE] [decimal](17, 2) NULL,
	[MONTOOTROS] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMDT000001]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMDT000001](
	[CODNOM] [int] NOT NULL,
	[CODCON] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[TIPCON] [varchar](1) NOT NULL,
	[VALOR] [decimal](17, 2) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[UNIDAD] [varchar](10) NULL,
	[IMPDET] [varchar](1) NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[DESCRIP] [varchar](60) NULL,
	[MONTOBASE] [decimal](17, 2) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[REFCHEQUE] [varchar](10) NULL,
	[MONTOTOTAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[BONIFICABLE] [tinyint] NULL,
	[HTIEMPO] [tinyint] NULL,
	[CEDULA] [int] NULL,
	[SALDOPRE] [decimal](17, 2) NULL,
	[MONTOOTROS] [decimal](17, 2) NULL,
	[MODIFICAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[REF1] [decimal](5, 2) NULL,
	[REF2] [decimal](5, 2) NULL,
	[REF3] [decimal](5, 2) NULL,
	[REF4] [decimal](5, 2) NULL,
	[REF5] [decimal](5, 2) NULL,
	[REF6] [decimal](5, 2) NULL,
	[REF7] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FICHA] ASC,
	[CODNOM] ASC,
	[TIPCON] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODNOM] ASC,
	[CODCON] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMDT000002]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMDT000002](
	[CODNOM] [int] NOT NULL,
	[CODCON] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[TIPCON] [varchar](1) NOT NULL,
	[VALOR] [decimal](17, 2) NULL,
	[MONTO] [decimal](17, 2) NULL,
	[UNIDAD] [varchar](10) NULL,
	[IMPDET] [varchar](1) NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[DESCRIP] [varchar](60) NULL,
	[MONTOBASE] [decimal](17, 2) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[REFCHEQUE] [varchar](10) NULL,
	[MONTOTOTAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[BONIFICABLE] [tinyint] NULL,
	[HTIEMPO] [tinyint] NULL,
	[CEDULA] [int] NULL,
	[SALDOPRE] [decimal](17, 2) NULL,
	[MONTOOTROS] [decimal](17, 2) NULL,
	[MODIFICAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[REF1] [decimal](5, 2) NULL,
	[REF2] [decimal](5, 2) NULL,
	[REF3] [decimal](5, 2) NULL,
	[REF4] [decimal](5, 2) NULL,
	[REF5] [decimal](5, 2) NULL,
	[REF6] [decimal](5, 2) NULL,
	[REF7] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FICHA] ASC,
	[CODNOM] ASC,
	[TIPCON] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODNOM] ASC,
	[CODCON] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMDU]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMDU](
	[CODNOM] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[NOTA1] [varchar](40) NULL,
	[NOTA2] [varchar](40) NULL,
	[NOTA3] [varchar](40) NULL,
	[NOTA4] [varchar](40) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMHD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMHD](
	[CODNOM] [int] NOT NULL,
	[CODCON] [int] NOT NULL,
	[FICHA] [varchar](10) NOT NULL,
	[TIPCON] [varchar](1) NULL,
	[VALOR] [decimal](13, 2) NULL,
	[MONTO] [decimal](13, 2) NULL,
	[UNIDAD] [varchar](10) NULL,
	[IMPDET] [varchar](1) NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[DESCRIP] [varchar](60) NULL,
	[MONTOBASE] [decimal](17, 2) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[REFCHEQUE] [varchar](10) NULL,
	[MONTOTOTAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[BONIFICABLE] [tinyint] NULL,
	[HTIEMPO] [tinyint] NULL,
	[CEDULA] [int] NULL,
	[SALDOPRE] [decimal](17, 2) NULL,
	[MONTOOTROS] [decimal](17, 2) NULL,
	[MODIFICAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
	[REF1] [decimal](5, 2) NULL,
	[REF2] [decimal](5, 2) NULL,
	[REF3] [decimal](5, 2) NULL,
	[REF4] [decimal](5, 2) NULL,
	[REF5] [decimal](5, 2) NULL,
	[REF6] [decimal](5, 2) NULL,
	[REF7] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODNOM] ASC,
	[FICHA] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[FICHA] ASC,
	[CODNOM] ASC,
	[TIPCON] ASC,
	[CODCON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CODNOM] ASC,
	[CODCON] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMMPE]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMMPE](
	[CODIGO] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPAR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPAR](
	[COD_EMP] [int] NOT NULL,
	[NOM_EMP] [varchar](60) NULL,
	[DIR_EMP] [varchar](120) NULL,
	[CIU_EMP] [varchar](25) NULL,
	[EDO_EMP] [varchar](15) NULL,
	[ZON_EMP] [varchar](12) NULL,
	[TEL_EMP] [varchar](25) NULL,
	[RIF] [varchar](20) NULL,
	[NIT] [varchar](20) NULL,
	[PRE_SID] [varchar](40) NULL,
	[GER_RRHH] [varchar](40) NULL,
	[EDADMAX] [int] NULL,
	[AMONEMAX] [int] NULL,
	[REDONTIP] [tinyint] NULL,
	[UNIDADTRIB] [decimal](17, 2) NULL,
	[TIPOPRES] [tinyint] NULL,
	[MUNIDADTRIB] [decimal](17, 2) NULL,
	[DIASBONVAC] [smallint] NULL,
	[DIASUTILIDAD] [smallint] NULL,
	[SUCURSAL] [tinyint] NULL,
	[DIRECCION] [tinyint] NULL,
	[VICEPRE] [tinyint] NULL,
	[GERENCIAS] [tinyint] NULL,
	[DEPARTAMENTOS] [tinyint] NULL,
	[ENTFEDERAL] [varchar](10) NULL,
	[DISTRITO] [varchar](10) NULL,
	[MUNICIPIO] [varchar](10) NULL,
	[CODACTECO] [varchar](10) NULL,
	[NOMACTECO] [varchar](40) NULL,
	[FECFUNDA] [varchar](40) NULL,
	[CAPITAL] [varchar](20) NULL,
	[DEGRAVUNICO] [decimal](17, 2) NULL,
	[MESCAMBIARI] [varchar](20) NULL,
	[UTCARGAFAM] [decimal](17, 2) NULL,
	[MONSALMIN] [decimal](17, 2) NULL,
	[CODCON] [int] NULL,
	[CODCONS] [int] NULL,
	[DEMO] [tinyint] NULL,
	[RUTACONTAB] [varchar](254) NULL,
	[RUTADATOSCONTAB] [varchar](254) NULL,
	[SERIAL] [varchar](59) NULL,
	[CTACHEQUE] [varchar](22) NULL,
	[CTAEFECTIVO] [varchar](22) NULL,
	[NROCOMPRO] [int] NULL,
	[CONTRATOS] [tinyint] NULL,
	[NOMNIV1] [varchar](20) NULL,
	[NOMNIV2] [varchar](20) NULL,
	[NOMNIV3] [varchar](20) NULL,
	[NOMNIV4] [varchar](20) NULL,
	[NOMNIV5] [varchar](20) NULL,
	[RECIBOVAC] [varchar](120) NULL,
	[RECIBOLIQ] [varchar](120) NULL,
	[EE] [tinyint] NULL,
	[FAX_EMP] [char](20) NULL,
	[NUM_EMP] [int] NULL,
	[NUM_EST] [int] NULL,
	[NUM_SSO] [varchar](20) NULL,
	[ESTADO] [varchar](20) NULL,
	[PARROQUIA] [varchar](20) NULL,
	[LOCALIDAD] [varchar](20) NULL,
	[E_MAIL] [varchar](30) NULL,
	[COD_ENTFED] [varchar](2) NULL,
	[COD_DISTRI] [varchar](2) NULL,
	[COD_MUNICI] [varchar](2) NULL,
	[COD_SECTOR] [varchar](1) NULL,
	[COD_ACTECO] [varchar](4) NULL,
	[COD_ORDEN] [varchar](4) NULL,
	[UTILIDAD] [decimal](17, 2) NULL,
	[REPORTDIFF] [tinyint] NULL,
	[PORCDIFF] [decimal](7, 2) NULL,
	[NETONEG] [tinyint] NULL,
	[IMPRESORA] [varchar](256) NULL,
	[SELECTOR] [tinyint] NULL,
	[NOSUELDOCERO] [tinyint] NULL,
	[MEDIAJORNADA] [tinyint] NULL,
	[NUEVASSITUACIONES] [tinyint] NULL,
	[TIPOFICHA] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_EMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPAT]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPAT](
	[CODORG] [varchar](6) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPCA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPCA](
	[FICHA] [varchar](10) NOT NULL,
	[ID] [int] NOT NULL,
	[VALOR] [varchar](80) NULL,
	[MASCARA] [varchar](9) NULL,
	[TIPO] [varchar](1) NULL,
	[CODORGD] [varchar](10) NULL,
	[CODORGH] [varchar](10) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FICHA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPER]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPER](
	[CEDULA] [int] NULL,
	[APENOM] [varchar](60) NULL,
	[SEXO] [varchar](20) NULL,
	[DIRECCION] [varchar](60) NULL,
	[ZONAPOS] [varchar](20) NULL,
	[TELEFONOS] [varchar](20) NULL,
	[EMAIL] [varchar](40) NULL,
	[FECNAC] [int] NULL,
	[LUGARNAC] [varchar](20) NULL,
	[CODPRO] [int] NULL,
	[FOTO] [varchar](80) NULL,
	[TIPNOM] [int] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[FICHA] [varchar](10) NOT NULL,
	[FECING] [int] NULL,
	[CODCAT] [varchar](6) NULL,
	[CODCARGO] [varchar](8) NULL,
	[FORCOB] [varchar](39) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[ESTADO] [varchar](20) NULL,
	[TIPEMP] [varchar](20) NULL,
	[FECFIN] [int] NULL,
	[SUELDOPRO] [decimal](17, 2) NULL,
	[FECHAPLICA] [int] NULL,
	[CODIDI] [int] NULL,
	[FECNACR] [varchar](5) NULL,
	[TIPOPRES] [tinyint] NULL,
	[FECHASUS] [int] NULL,
	[FECHAREISUS] [int] NULL,
	[FECHAVAC] [int] NULL,
	[FECHAREIVAC] [int] NULL,
	[FECHARETIRO] [int] NULL,
	[APLICALOGRO] [tinyint] NULL,
	[APLICASUSPENSION] [tinyint] NULL,
	[CTACONTAB] [varchar](22) NULL,
	[PERIODO] [int] NULL,
	[MARKAR] [tinyint] NULL,
	[COD_TLI] [varchar](19) NULL,
	[SUESAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[NOMBRES] [varchar](30) NULL,
	[APELLIDOS] [varchar](30) NULL,
	[MONTOLIQ] [decimal](17, 2) NULL,
	[SFECNAC] [varchar](8) NULL,
	[SFECING] [varchar](8) NULL,
	[SFECFIN] [varchar](8) NULL,
	[SFECHAPLICA] [varchar](8) NULL,
	[SFECHASUS] [varchar](8) NULL,
	[SFECHAREISUS] [varchar](8) NULL,
	[SFECHAVAC] [varchar](8) NULL,
	[SFECHAREIVAC] [varchar](8) NULL,
	[SFECHARETIRO] [varchar](8) NULL,
	[NACIONALIDAD] [tinyint] NULL,
	[DIASCONTRATO] [int] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TIPNOM] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[TIPNOM] ASC,
	[CODSUC] ASC,
	[CODDIR] ASC,
	[CODVP] ASC,
	[CODGER] ASC,
	[CODDEP] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPLO]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPLO](
	[CEDULA] [int] NULL,
	[FICHA] [varchar](10) NOT NULL,
	[FECHA] [int] NOT NULL,
	[CODLOGRO] [int] NULL,
	[TIPNOM_N] [int] NULL,
	[SUC_N] [int] NULL,
	[DIR_N] [int] NULL,
	[VPR_N] [int] NULL,
	[GER_N] [int] NULL,
	[DEP_N] [int] NULL,
	[CAR_N] [varchar](8) NULL,
	[SUE_N] [decimal](17, 2) NULL,
	[SAL_N] [decimal](17, 2) NULL,
	[TIPNOM_O] [int] NULL,
	[SUC_O] [int] NULL,
	[DIR_O] [int] NULL,
	[VPR_O] [int] NULL,
	[GER_O] [int] NULL,
	[DEP_O] [int] NULL,
	[CAR_O] [varchar](8) NULL,
	[SUE_O] [decimal](17, 2) NULL,
	[SAL_O] [decimal](17, 2) NULL,
	[ESTADO] [varchar](20) NULL,
	[SFECHA] [varchar](8) NULL,
	[NUMCONTROL] [varchar](15) NULL,
	[DETLOGRO] [varchar](80) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FICHA] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPPE]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPPE](
	[CEDUDA] [int] NOT NULL,
	[FICHA] [varchar](10) NULL,
	[FECHA] [int] NOT NULL,
	[CODIGO] [int] NOT NULL,
	[JUSTIFICADO] [varchar](2) NULL,
	[FECHAREI] [int] NULL,
	[SUSPENDE] [varchar](2) NULL,
	[DETALLE] [char](1000) NULL,
	[SFECHA] [varchar](8) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[CEDUDA] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPRD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPRD](
	[CODFRE] [int] NOT NULL,
	[ANIO] [char](4) NOT NULL,
	[NPER] [smallint] NOT NULL,
	[FINICIO] [int] NULL,
	[FFIN] [int] NULL,
	[STATUS] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODFRE] ASC,
	[ANIO] ASC,
	[NPER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPRO]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPRO](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMPTA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMPTA](
	[CEDUDA] [int] NULL,
	[FICHA] [varchar](10) NULL,
	[FECHA] [int] NULL,
	[ANIOA] [int] NULL,
	[MESA] [tinyint] NULL,
	[DIA] [tinyint] NULL,
	[COD_TAC] [varchar](6) NULL,
	[MONTOTOTAL] [decimal](17, 2) NULL,
	[MONTOBASE] [decimal](17, 2) NULL,
	[REFER] [decimal](17, 2) NULL,
	[MONTORESUL] [decimal](17, 2) NULL,
	[CODNOM] [int] NULL,
	[OPERACION] [varchar](1) NULL,
	[CODCON] [int] NULL,
	[UNIDAD] [varchar](10) NULL,
	[TIPCON] [varchar](1) NULL,
	[SFECHA] [varchar](8) NULL,
	[MONTOOTROS] [decimal](17, 2) NULL,
	[EE] [tinyint] NULL,
	[NUMCONTROL] [varchar](15) NOT NULL,
	[REF1] [decimal](5, 2) NULL,
	[REF2] [decimal](5, 2) NULL,
	[REF3] [decimal](5, 2) NULL,
	[REF4] [decimal](5, 2) NULL,
	[REF5] [decimal](5, 2) NULL,
	[REF6] [decimal](5, 2) NULL,
	[REF7] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[NUMCONTROL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMRHMV]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMRHMV](
	[CODNOM] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[FECHA] [int] NULL,
	[FECHAPAGO] [int] NULL,
	[PERIODO_INI] [int] NULL,
	[PERIODO_FIN] [int] NULL,
	[ANIO] [int] NULL,
	[MES] [int] NULL,
	[CODTIP] [int] NOT NULL,
	[FRECUENCIA] [int] NULL,
	[STATUS] [varchar](1) NULL,
	[TIPNOM] [tinyint] NULL,
	[LIBRE] [tinyint] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[NIVEL1] [tinyint] NULL,
	[NIVEL2] [tinyint] NULL,
	[NIVEL3] [tinyint] NULL,
	[NIVEL4] [tinyint] NULL,
	[NIVEL5] [tinyint] NULL,
	[CODCARGO] [varchar](8) NULL,
	[TODOCARGO] [tinyint] NULL,
	[VACPROGRAMA] [tinyint] NULL,
	[MARKAR] [tinyint] NULL,
	[VACCOLECTIVAS] [tinyint] NULL,
	[CONTRATO] [varchar](20) NULL,
	[SFECHA] [varchar](8) NULL,
	[SFECHAPAGO] [varchar](8) NULL,
	[SPERIODO_INI] [varchar](8) NULL,
	[SPERIODO_FIN] [varchar](8) NULL,
	[COD_TLI] [varchar](19) NULL,
	[PERIODO] [int] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODTIP] ASC,
	[CODNOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMRPER]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMRPER](
	[CEDULA] [int] NULL,
	[APENOM] [varchar](60) NULL,
	[SEXO] [varchar](20) NULL,
	[DIRECCION] [varchar](60) NULL,
	[ZONAPOS] [varchar](20) NULL,
	[TELEFONOS] [varchar](20) NULL,
	[EMAIL] [varchar](40) NULL,
	[FECNAC] [int] NULL,
	[LUGARNAC] [varchar](20) NULL,
	[CODPRO] [int] NULL,
	[FOTO] [varchar](80) NULL,
	[TIPNOM] [int] NULL,
	[CODSUC] [int] NULL,
	[CODDIR] [int] NULL,
	[CODVP] [int] NULL,
	[CODGER] [int] NULL,
	[CODDEP] [int] NULL,
	[FICHA] [varchar](10) NULL,
	[FECING] [int] NULL,
	[CODCAT] [varchar](6) NULL,
	[CODCARGO] [varchar](8) NULL,
	[FORCOB] [varchar](39) NULL,
	[CODBANCOB] [int] NULL,
	[CUENTACOB] [varchar](20) NULL,
	[CODBANLPH] [int] NULL,
	[CUENTALPH] [varchar](20) NULL,
	[ESTADO] [varchar](20) NULL,
	[TIPEMP] [varchar](20) NULL,
	[FECFIN] [int] NULL,
	[SUELDOPRO] [decimal](17, 2) NULL,
	[FECHAPLICA] [int] NULL,
	[CODIDI] [int] NULL,
	[FECNACR] [varchar](5) NULL,
	[TIPOPRES] [tinyint] NULL,
	[FECHASUS] [int] NULL,
	[FECHAREISUS] [int] NULL,
	[FECHAVAC] [int] NULL,
	[FECHAREIVAC] [int] NULL,
	[FECHARETIRO] [int] NULL,
	[APLICALOGRO] [tinyint] NULL,
	[APLICASUSPENSION] [tinyint] NULL,
	[CTACONTAB] [varchar](22) NULL,
	[PERIODO] [int] NULL,
	[MARKAR] [tinyint] NULL,
	[COD_TLI] [varchar](19) NULL,
	[SUESAL] [decimal](17, 2) NULL,
	[CONTRATO] [varchar](20) NULL,
	[NOMBRES] [varchar](30) NULL,
	[APELLIDOS] [varchar](30) NULL,
	[MONTOLIQ] [decimal](17, 2) NULL,
	[SFECNAC] [varchar](8) NULL,
	[SFECING] [varchar](8) NULL,
	[SFECFIN] [varchar](8) NULL,
	[SFECHAPLICA] [varchar](8) NULL,
	[SFECHASUS] [varchar](8) NULL,
	[SFECHAREISUS] [varchar](8) NULL,
	[SFECHAVAC] [varchar](19) NULL,
	[SFECHAREIVAC] [varchar](8) NULL,
	[SFECHARETIRO] [varchar](8) NULL,
	[NACIONALIDAD] [tinyint] NULL,
	[DIASCONTRATO] [int] NULL,
	[EE] [tinyint] NULL,
	[CODTIP] [int] NULL,
UNIQUE NONCLUSTERED 
(
	[TIPNOM] ASC,
	[FICHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMSEC]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMSEC](
	[CODUSER] [varchar](8) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[NIVEL] [tinyint] NULL,
	[FECHA] [int] NULL,
	[CLAVE] [varchar](8) NULL,
	[ACCEUSU] [tinyint] NULL,
	[ACCEFOTO] [tinyint] NULL,
	[ACCEDISENIO] [tinyint] NULL,
	[ACCMANPRES] [tinyint] NULL,
	[OPCIONMENU] [char](100) NULL,
	[EE] [tinyint] NULL,
	[CLAVEANTERIOR] [varchar](8) NULL,
	[VENCE] [tinyint] NULL,
	[DIASVENCE] [tinyint] NULL,
	[CONTADORVENCE] [tinyint] NULL,
	[FECCLAVE] [int] NULL,
	[ENCRIPT] [tinyint] NULL,
	[PREGUNTA] [varchar](500) NULL,
	[RESPUESTA] [varchar](200) NULL,
	[ACCTWIND] [tinyint] NULL,
	[BORRAPER] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODUSER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMSIT]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMSIT](
	[SITUACION] [char](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SITUACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMSUC]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMSUC](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMTAC]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMTAC](
	[COD_TAC] [varchar](6) NOT NULL,
	[DES_TAC] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_TAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMTAR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMTAR](
	[LIMMENOR] [decimal](13, 2) NULL,
	[LIMMAYOR] [decimal](13, 2) NOT NULL,
	[MONTO] [decimal](13, 2) NULL,
	[CODIGO] [smallint] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[LIMMAYOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMTAS]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SWNOMTAS](
	[TASA] [decimal](7, 2) NULL,
	[ANIO] [int] NOT NULL,
	[MES] [int] NOT NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ANIO] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SWNOMTIP]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMTIP](
	[CODTIP] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[PRIORIDAD] [tinyint] NULL,
	[FECHA_FIN] [int] NULL,
	[FECHA_INI] [int] NULL,
	[CODNOM] [int] NULL,
	[DIASBONVAC] [smallint] NULL,
	[DIASUTILIDAD] [smallint] NULL,
	[DIASDISFRUTE] [smallint] NULL,
	[TIPODISFRUTE] [varchar](2) NULL,
	[DIASINCREM] [smallint] NULL,
	[DIASMAXINC] [smallint] NULL,
	[DIASINCREMDIS] [smallint] NULL,
	[DIASMAXINCDIS] [smallint] NULL,
	[TIEMPOOR] [int] NULL,
	[DIASANTIGUEDAD] [int] NULL,
	[MARKAR] [tinyint] NULL,
	[USATABLAS] [tinyint] NULL,
	[BAREMO01] [smallint] NULL,
	[BAREMO02] [smallint] NULL,
	[BAREMO03] [smallint] NULL,
	[BAREMO04] [smallint] NULL,
	[FECHA] [int] NULL,
	[RUTA] [varchar](119) NULL,
	[BASESUELSAL] [int] NULL,
	[SFECHA_FIN] [varchar](8) NULL,
	[SFECHA_INI] [varchar](8) NULL,
	[SFECHA] [varchar](8) NULL,
	[BASE30] [tinyint] NULL,
	[DETDES] [varchar](255) NULL,
	[CODNOMANT] [int] NULL,
	[FECHABON] [int] NULL,
	[EE] [tinyint] NULL,
	[CODGRUPO] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODTIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMTLI]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMTLI](
	[COD_TLI] [varchar](19) NOT NULL,
	[DES_TLI] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_TLI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMTPR]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMTPR](
	[CODIGOPR] [varchar](6) NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[FORMULA] [char](3000) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGOPR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMVAX]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMVAX](
	[ID] [int] NOT NULL,
	[VALOR] [varchar](80) NULL,
	[MASCARA] [varchar](9) NULL,
	[TIPO] [varchar](1) NULL,
	[ETIQUETA] [varchar](40) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMVER]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMVER](
	[FECHA] [int] NOT NULL,
	[COD_VER] [varchar](19) NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SWNOMVIP]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SWNOMVIP](
	[CODORG] [int] NOT NULL,
	[DESCRIP] [varchar](60) NULL,
	[MARKAR] [tinyint] NULL,
	[EE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CODORG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMPLATE]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMPLATE](
	[TEMPLATEID] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [int] NOT NULL,
	[FINGERID] [int] NOT NULL,
	[TEMPLATE] [image] NOT NULL,
	[TEMPLATE2] [image] NULL,
	[TEMPLATE3] [image] NULL,
	[BITMAPPICTURE] [image] NULL,
	[BITMAPPICTURE2] [image] NULL,
	[BITMAPPICTURE3] [image] NULL,
	[BITMAPPICTURE4] [image] NULL,
	[USETYPE] [smallint] NULL,
 CONSTRAINT [TEMPLATED] PRIMARY KEY CLUSTERED 
(
	[TEMPLATEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_COMSERVID]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_COMSERVID](
	[CodTabla] [varchar](100) NULL,
	[CodMeca] [varchar](10) NULL,
	[Tipo] [varchar](10) NULL,
	[NumeroD] [varchar](100) NULL,
	[Cliente] [varchar](100) NULL,
	[Fecha] [smalldatetime] NULL,
	[Servicio] [varchar](100) NULL,
	[Monto] [decimal](28, 3) NULL,
	[Com_Servicio] [decimal](28, 3) NULL,
	[Com_General] [decimal](28, 3) NULL,
	[Total_Comision] [decimal](28, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_COMVEND]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_COMVEND](
	[CodTabla] [varchar](100) NULL,
	[CodVend] [varchar](100) NULL,
	[NroUnico] [int] NULL,
	[Tipo] [varchar](20) NULL,
	[TipoDoc] [varchar](20) NULL,
	[Numero] [varchar](250) NULL,
	[CodClie] [varchar](20) NULL,
	[Descrip] [varchar](100) NULL,
	[DocumentoCancelado] [varchar](250) NULL,
	[FechaEmision] [smalldatetime] NULL,
	[FechaVencimiento] [smalldatetime] NULL,
	[FechaCobro] [smalldatetime] NULL,
	[Dias] [float] NULL,
	[MontoNeto] [float] NULL,
	[CostoNeto] [float] NULL,
	[Comision] [float] NULL,
	[Por] [float] NULL,
	[TablaVenta] [float] NULL,
	[PorTV] [float] NULL,
	[TablaCobranza] [float] NULL,
	[PorTC] [float] NULL,
	[TablaUtilidad] [float] NULL,
	[PorTU] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_EMILY_SCOTT_STIB01]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_EMILY_SCOTT_STIB01](
	[NOpe] [int] NULL,
	[CodBanco] [varchar](30) NULL,
	[DesBanco] [varchar](70) NULL,
	[NoCuenta] [varchar](20) NULL,
	[NroDcto] [varchar](25) NULL,
	[NroComp] [varchar](25) NULL,
	[Fecha] [datetime] NULL,
	[FechaA] [varchar](4) NULL,
	[FechaM] [varchar](4) NULL,
	[FechaD] [varchar](4) NULL,
	[TipBen] [int] NULL,
	[CodBene] [varchar](30) NULL,
	[AOD] [varchar](1) NOT NULL,
	[TDC] [int] NULL,
	[DesTDC] [varchar](70) NULL,
	[CDCD] [int] NULL,
	[Descripcion] [varchar](70) NULL,
	[Comentario1] [varchar](70) NULL,
	[Comentario2] [varchar](70) NULL,
	[Comentario3] [varchar](70) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL,
	[MtoEfe] [decimal](28, 2) NULL,
	[MtoChe] [decimal](28, 2) NULL,
	[MtoTar] [decimal](28, 2) NULL,
	[MtoTxt1] [varchar](150) NULL,
	[MtoTxt2] [varchar](150) NULL,
	[MtoTxt3] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_EMILY_SCOTT_STIB02]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_EMILY_SCOTT_STIB02](
	[NOpe] [int] NULL,
	[CodCta] [varchar](70) NULL,
	[DesCta] [varchar](70) NULL,
	[Descripcion] [varchar](70) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_PARTSERPROD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_PARTSERPROD](
	[CodTabla] [varchar](100) NULL,
	[Tipo] [varchar](10) NULL,
	[CodProd] [varchar](20) NULL,
	[Descrip] [varchar](50) NULL,
	[CodAlte] [varchar](20) NULL,
	[Cantidad] [numeric](28, 3) NULL,
	[NroSerial] [varchar](40) NULL,
	[CodUbic] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_PARTSERPRODVCO]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_PARTSERPRODVCO](
	[CodTabla] [varchar](100) NULL,
	[Tipo] [varchar](10) NULL,
	[TipoDoc] [varchar](15) NULL,
	[NumeroD] [varchar](15) NULL,
	[Codigo] [varchar](20) NULL,
	[CodProd] [varchar](20) NULL,
	[CodAlte] [varchar](15) NULL,
	[Cantidad] [numeric](28, 3) NULL,
	[NroSerial] [varchar](15) NULL,
	[CodUbic] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_SADEYPAIVA]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_SADEYPAIVA](
	[CodTabla] [varchar](100) NULL,
	[Tipo_Tra] [int] NULL,
	[FechaE] [smalldatetime] NULL,
	[IVA_Incluido] [decimal](28, 3) NULL,
	[Base_Imponible] [decimal](28, 3) NULL,
	[IVA_Retenido] [decimal](28, 3) NULL,
	[IVA] [decimal](28, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_SAESRVD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_SAESRVD](
	[CodTabla] [varchar](100) NULL,
	[CodMeca] [varchar](10) NULL,
	[Periodo] [varchar](6) NULL,
	[Mes] [varchar](10) NULL,
	[MtoVentas] [float] NULL,
	[CntVentas] [int] NULL,
	[Comision] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_SAEVEN]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_SAEVEN](
	[CodTabla] [varchar](100) NULL,
	[CodVend] [varchar](10) NULL,
	[Periodo] [varchar](6) NULL,
	[Mes] [varchar](10) NULL,
	[MtoVentas] [float] NULL,
	[MtoIngreso] [float] NULL,
	[Costo] [float] NULL,
	[MtoComiVta] [float] NULL,
	[MtoComiCob] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_TRANRESPROD]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_TRANRESPROD](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CodTabla] [varchar](100) NULL,
	[CodItem] [varchar](100) NULL,
	[Descrip1] [varchar](50) NULL,
	[Unidad] [varchar](50) NULL,
	[ExActual] [float] NULL,
	[Cant] [float] NULL,
	[Precio] [float] NULL,
	[Utilidad] [float] NULL,
	[Costo] [float] NULL,
	[EsUnid] [int] NULL,
 CONSTRAINT [IX_TMP_TRANRESPROD] UNIQUE NONCLUSTERED 
(
	[ID] ASC,
	[CodTabla] ASC,
	[CodItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_VENTASPC_STIB01]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_VENTASPC_STIB01](
	[NOpe] [int] NULL,
	[CodBanco] [varchar](30) NULL,
	[DesBanco] [varchar](70) NULL,
	[NoCuenta] [varchar](20) NULL,
	[NroDcto] [varchar](25) NULL,
	[NroComp] [varchar](25) NULL,
	[Fecha] [datetime] NULL,
	[FechaA] [varchar](4) NULL,
	[FechaM] [varchar](4) NULL,
	[FechaD] [varchar](4) NULL,
	[TipBen] [int] NULL,
	[CodBene] [varchar](30) NULL,
	[AOD] [varchar](1) NOT NULL,
	[TDC] [int] NULL,
	[DesTDC] [varchar](50) NULL,
	[CDCD] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL,
	[MtoEfe] [decimal](28, 2) NULL,
	[MtoChe] [decimal](28, 2) NULL,
	[MtoTar] [decimal](28, 2) NULL,
	[MtoTxt1] [varchar](150) NULL,
	[MtoTxt2] [varchar](150) NULL,
	[MtoTxt3] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_VENTASPC_STIB02]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_VENTASPC_STIB02](
	[NOpe] [int] NULL,
	[CodCta] [varchar](50) NULL,
	[DesCta] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_VENTASxVEND]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_VENTASxVEND](
	[CodTabla] [varchar](255) NULL,
	[CodVend] [varchar](50) NULL,
	[Descrip] [varchar](100) NULL,
	[MontoVenta] [decimal](28, 2) NULL,
	[Por] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_OF_RUN]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_OF_RUN](
	[USERID] [int] NOT NULL,
	[NUM_OF_RUN_ID] [int] NOT NULL,
	[STARTDATE] [datetime] NOT NULL,
	[ENDDATE] [datetime] NOT NULL,
	[ISNOTOF_RUN] [int] NULL,
	[ORDER_RUN] [int] NULL,
 CONSTRAINT [USER_ST_NUM] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[NUM_OF_RUN_ID] ASC,
	[STARTDATE] ASC,
	[ENDDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USER_SPEDAY]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER_SPEDAY](
	[USERID] [int] NOT NULL,
	[STARTSPECDAY] [datetime] NOT NULL,
	[ENDSPECDAY] [datetime] NULL,
	[DATEID] [smallint] NOT NULL,
	[YUANYING] [varchar](200) NULL,
	[DATE] [datetime] NULL,
 CONSTRAINT [USER_SEP] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[STARTSPECDAY] ASC,
	[DATEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_TEMP_SCH]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_TEMP_SCH](
	[USERID] [int] NOT NULL,
	[COMETIME] [datetime] NOT NULL,
	[LEAVETIME] [datetime] NOT NULL,
	[OVERTIME] [int] NOT NULL,
	[TYPE] [smallint] NULL,
	[FLAG] [smallint] NULL,
	[SCHCLASSID] [int] NULL,
 CONSTRAINT [USER_TEMP] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC,
	[COMETIME] ASC,
	[LEAVETIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USERINFO]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USERINFO](
	[USERID] [int] IDENTITY(1,1) NOT NULL,
	[BADGENUMBER] [varchar](12) NOT NULL,
	[SSN] [varchar](20) NULL,
	[NAME] [varchar](20) NULL,
	[GENDER] [varchar](2) NULL,
	[TITLE] [varchar](20) NULL,
	[PAGER] [varchar](20) NULL,
	[BIRTHDAY] [datetime] NULL,
	[HIREDDAY] [datetime] NULL,
	[STREET] [varchar](40) NULL,
	[CITY] [varchar](2) NULL,
	[STATE] [varchar](2) NULL,
	[ZIP] [varchar](12) NULL,
	[OPHONE] [varchar](20) NULL,
	[FPHONE] [varchar](20) NULL,
	[VERIFICATIONMETHOD] [smallint] NULL,
	[DEFAULTDEPTID] [smallint] NULL,
	[SECURITYFLAGS] [smallint] NULL,
	[ATT] [smallint] NOT NULL,
	[INLATE] [smallint] NOT NULL,
	[OUTEARLY] [smallint] NOT NULL,
	[OVERTIME] [smallint] NOT NULL,
	[SEP] [smallint] NOT NULL,
	[HOLIDAY] [smallint] NOT NULL,
	[MINZU] [varchar](8) NULL,
	[PASSWORD] [varchar](20) NULL,
	[LUNCHDURATION] [smallint] NOT NULL,
	[MVerifyPass] [varchar](10) NULL,
	[PHOTO] [image] NULL,
 CONSTRAINT [USERIDS] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMsg]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMsg](
	[NLine] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [varchar](10) NOT NULL,
	[StationName] [varchar](50) NOT NULL,
	[IDFrom] [varchar](10) NOT NULL,
	[Note] [text] NOT NULL,
	[dtDate] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [UserMsg0] PRIMARY KEY CLUSTERED 
(
	[NLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X1OEM_STIB01]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X1OEM_STIB01](
	[NOpe] [int] NULL,
	[CodBanco] [varchar](30) NULL,
	[DesBanco] [varchar](70) NULL,
	[NoCuenta] [varchar](20) NULL,
	[NroDcto] [varchar](25) NULL,
	[NroComp] [varchar](25) NULL,
	[Fecha] [datetime] NULL,
	[FechaA] [varchar](4) NULL,
	[FechaM] [varchar](4) NULL,
	[FechaD] [varchar](4) NULL,
	[TipBen] [int] NULL,
	[CodBene] [varchar](30) NULL,
	[AOD] [varchar](1) NOT NULL,
	[TDC] [int] NULL,
	[DesTDC] [varchar](50) NULL,
	[CDCD] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Comentario1] [varchar](50) NULL,
	[Comentario2] [varchar](50) NULL,
	[Comentario3] [varchar](50) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL,
	[MtoEfe] [decimal](28, 2) NULL,
	[MtoChe] [decimal](28, 2) NULL,
	[MtoTar] [decimal](28, 2) NULL,
	[MtoTxt1] [varchar](150) NULL,
	[MtoTxt2] [varchar](150) NULL,
	[MtoTxt3] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[X1OEM_STIB02]    Script Date: 28/04/2016 12:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[X1OEM_STIB02](
	[NOpe] [int] NULL,
	[CodCta] [varchar](50) NULL,
	[DesCta] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[MtoOp] [decimal](28, 2) NULL,
	[MtoDb] [decimal](28, 2) NULL,
	[MtoCr] [decimal](28, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CGAUTR] ADD  DEFAULT ((0)) FOR [Modulo]
GO
ALTER TABLE [dbo].[CGAUTR] ADD  DEFAULT ((0)) FOR [Parametro]
GO
ALTER TABLE [dbo].[CGEXNU] ADD  DEFAULT ((0)) FOR [Estado]
GO
ALTER TABLE [dbo].[CGNIVL] ADD  DEFAULT ((0)) FOR [CodNivl]
GO
ALTER TABLE [dbo].[CGOPMN] ADD  DEFAULT ((0)) FOR [Accion]
GO
ALTER TABLE [dbo].[CGOPMN] ADD  DEFAULT ((0)) FOR [OpActiva]
GO
ALTER TABLE [dbo].[CGOPMN] ADD  DEFAULT ((0)) FOR [UPrinter]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [Modulo]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [Parametro]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [NoData]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [TipoData]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [IDataF]
GO
ALTER TABLE [dbo].[CGPARD] ADD  DEFAULT ((0)) FOR [FDataF]
GO
ALTER TABLE [dbo].[CGPARM] ADD  DEFAULT ((0)) FOR [Modulo]
GO
ALTER TABLE [dbo].[CGPARM] ADD  DEFAULT ((0)) FOR [Parametro]
GO
ALTER TABLE [dbo].[CGPARM] ADD  DEFAULT ((0)) FOR [Activo]
GO
ALTER TABLE [dbo].[CGPARM] ADD  DEFAULT ((0)) FOR [Clave]
GO
ALTER TABLE [dbo].[CGPARM] ADD  DEFAULT ((0)) FOR [Habilitado]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [USERID]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [CHECKTIME]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [CHECKTYPE]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [ISADD]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [ISMODIFY]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [ISDELETE]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [INCOUNT]
GO
ALTER TABLE [dbo].[CHECKEXACT] ADD  DEFAULT ((0)) FOR [ISCOUNT]
GO
ALTER TABLE [dbo].[CHECKINOUT] ADD  DEFAULT (getdate()) FOR [CHECKTIME]
GO
ALTER TABLE [dbo].[CHECKINOUT] ADD  DEFAULT ('I') FOR [CHECKTYPE]
GO
ALTER TABLE [dbo].[CHECKINOUT] ADD  DEFAULT ((0)) FOR [VERIFYCODE]
GO
ALTER TABLE [dbo].[City] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[CompaniyType] ADD  DEFAULT ('X.X.XX.XX.XXX') FOR [MaskCode]
GO
ALTER TABLE [dbo].[CompaniyType] ADD  DEFAULT ((1)) FOR [boStatus]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('ID Fiscal') FOR [IDLabel]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [EtySize]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [EtyCapital]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT (getdate()) FOR [dtDate]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [siPeriodDef]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((1)) FOR [boStatus]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [EtyConsol]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT (getdate()) FOR [dtMigrated]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('000000000000000') FOR [Reserved]
GO
ALTER TABLE [dbo].[Company] ADD  DEFAULT ((0)) FOR [Prefix]
GO
ALTER TABLE [dbo].[CompanyJoin] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ((0)) FOR [siType]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ((0)) FOR [boSSW]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ('REGISTRO NUEVO') FOR [DBServer]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ('REGISTRO NUEVO') FOR [DBName]
GO
ALTER TABLE [dbo].[Connections] ADD  DEFAULT ((0)) FOR [boStatus]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [Idversion]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaPantT]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [TipoKeyB]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaImag]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaDescrip2]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaDescrip3]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaPeso]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaVolum]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaEmpaq]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((1)) FOR [TipoPvP]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [TipoPvPLot]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaPrecioD]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [TipoPvPD]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaDesgTax]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaDesgD]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [UsaPorcD]
GO
ALTER TABLE [dbo].[CPSistema] ADD  DEFAULT ((0)) FOR [TiempoRet]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ((1)) FOR [boStatus]
GO
ALTER TABLE [dbo].[DBTHIRD] ADD  DEFAULT (0) FOR [TipoID3]
GO
ALTER TABLE [dbo].[DEPARTMENTS] ADD  DEFAULT ((1)) FOR [SUPDEPTID]
GO
ALTER TABLE [dbo].[EntityPrefix] ADD  DEFAULT ((1)) FOR [Prefix]
GO
ALTER TABLE [dbo].[HOLIDAYS] ADD  DEFAULT ((1)) FOR [HOLIDAYDAY]
GO
ALTER TABLE [dbo].[LogLockReg] ADD  DEFAULT ((0)) FOR [IDStation]
GO
ALTER TABLE [dbo].[LogLockReg] ADD  DEFAULT ((0)) FOR [siPeriod]
GO
ALTER TABLE [dbo].[LogLockReg] ADD  DEFAULT (getdate()) FOR [dtDate]
GO
ALTER TABLE [dbo].[LogLockReg] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[LogStation] ADD  DEFAULT ((0)) FOR [IDStation]
GO
ALTER TABLE [dbo].[LogStation] ADD  DEFAULT ((0)) FOR [IDLog]
GO
ALTER TABLE [dbo].[LogStation] ADD  DEFAULT (getdate()) FOR [dtDate]
GO
ALTER TABLE [dbo].[LogStation] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[LogStation] ADD  DEFAULT (host_name()) FOR [StationName]
GO
ALTER TABLE [dbo].[ModelAccount] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[ModelAccount] ADD  DEFAULT ((1)) FOR [siLevel]
GO
ALTER TABLE [dbo].[ModelAccount] ADD  DEFAULT ((0)) FOR [boStatus]
GO
ALTER TABLE [dbo].[ModelAccount] ADD  DEFAULT (getdate()) FOR [dtDate]
GO
ALTER TABLE [dbo].[Municipality] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[NUM_RUN] ADD  DEFAULT ((-1)) FOR [OLDID]
GO
ALTER TABLE [dbo].[NUM_RUN] ADD  DEFAULT ('1900-1-1') FOR [STARTDATE]
GO
ALTER TABLE [dbo].[NUM_RUN] ADD  DEFAULT ('2099-12-31') FOR [ENDDATE]
GO
ALTER TABLE [dbo].[NUM_RUN] ADD  DEFAULT ((1)) FOR [CYLE]
GO
ALTER TABLE [dbo].[NUM_RUN] ADD  DEFAULT ((1)) FOR [UNITS]
GO
ALTER TABLE [dbo].[NUM_RUN_DEIL] ADD  DEFAULT ((-1)) FOR [SCHCLASSID]
GO
ALTER TABLE [dbo].[PriceIdx] ADD  DEFAULT ((0)) FOR [siYear]
GO
ALTER TABLE [dbo].[PriceIdx] ADD  DEFAULT ((0)) FOR [siMonth]
GO
ALTER TABLE [dbo].[PriceIdx] ADD  DEFAULT ((0)) FOR [Factor]
GO
ALTER TABLE [dbo].[Rates] ADD  DEFAULT ((0)) FOR [siYear]
GO
ALTER TABLE [dbo].[Rates] ADD  DEFAULT ((0)) FOR [siMonth]
GO
ALTER TABLE [dbo].[Rates] ADD  DEFAULT ((0)) FOR [CurrencyRate]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_Monto]  DEFAULT ((0)) FOR [Monto]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoTax]  DEFAULT ((0)) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_TGravable]  DEFAULT ((0)) FOR [TGravable]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_TExento]  DEFAULT ((0)) FOR [TExento]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_Contado]  DEFAULT ((0)) FOR [Contado]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_Credito]  DEFAULT ((0)) FOR [Credito]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_TipoCli]  DEFAULT ((0)) FOR [TipoCli]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_BaseIva1]  DEFAULT ((0)) FOR [BaseIva1]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_BaseIva2]  DEFAULT ((0)) FOR [BaseIva2]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_BaseIva3]  DEFAULT ((0)) FOR [BaseIva3]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoIva1]  DEFAULT ((0)) FOR [MtoIva1]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoIva2]  DEFAULT ((0)) FOR [MtoIva2]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoIva3]  DEFAULT ((0)) FOR [MtoIva3]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoAlic1]  DEFAULT ((0)) FOR [MtoAlic1]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_MtoAlic2]  DEFAULT ((0)) FOR [MtoAlic2]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_RetencionIVA]  DEFAULT ((0)) FOR [RetencionIVA]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_AlicRet]  DEFAULT ((0)) FOR [AlicRet]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_BaseRet]  DEFAULT ((0)) FOR [BaseRet]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_IvaRet]  DEFAULT ((0)) FOR [IvaRet]
GO
ALTER TABLE [dbo].[SAA_LIB] ADD  CONSTRAINT [DF_SAA_LIB_PGroup]  DEFAULT ((1)) FOR [PGroup]
GO
ALTER TABLE [dbo].[SAACAMPOS] ADD  DEFAULT (0) FOR [NumGrp]
GO
ALTER TABLE [dbo].[SAACAMPOS] ADD  DEFAULT (0) FOR [TipoCpo]
GO
ALTER TABLE [dbo].[SAACAMPOS] ADD  DEFAULT (0) FOR [Longitud]
GO
ALTER TABLE [dbo].[SAACAMPOS] ADD  DEFAULT (0) FOR [Requerido]
GO
ALTER TABLE [dbo].[SAACAMPOS] ADD  DEFAULT (0) FOR [CBusqueda]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [FromTran]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [MontoMEx]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [SaldoMEx]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [MontoNeto]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [OrgTax]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [EsLibroI]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [BaseImpo]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelI]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelA]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelE]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelC]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelT]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelG]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [EsUnPago]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [AfectaVta]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [AfectaComi]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [EsChqDev]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [SaldoOrg]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelP]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT (0) FOR [CancelD]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT ((0)) FOR [EsRetenIVA]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT ((0)) FOR [Debitos]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT ((0)) FOR [Creditos]
GO
ALTER TABLE [dbo].[SAACXC] ADD  DEFAULT ((0)) FOR [TipoTraE]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [FromTran]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [MontoMEx]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [SaldoMEx]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [MontoNeto]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [OrgTax]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [EsLibroI]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [BaseImpo]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelI]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelA]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelE]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelC]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelT]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelG]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [EsUnPago]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [AfectaCom]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [SaldoOrg]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT (0) FOR [CancelD]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT ((0)) FOR [EsRetenIVA]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT ((0)) FOR [Debitos]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT ((0)) FOR [Creditos]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT ((0)) FOR [TipoSus]
GO
ALTER TABLE [dbo].[SAACXP] ADD  DEFAULT ((0)) FOR [TipoTraE]
GO
ALTER TABLE [dbo].[SAAGRUPOS] ADD  DEFAULT (0) FOR [NumGrp]
GO
ALTER TABLE [dbo].[SAAGRUPOS] ADD  DEFAULT (0) FOR [EsTrans]
GO
ALTER TABLE [dbo].[SAAGRUPOS] ADD  DEFAULT (0) FOR [NMeses]
GO
ALTER TABLE [dbo].[SAAGRUPOS] ADD  DEFAULT (0) FOR [NMovim]
GO
ALTER TABLE [dbo].[SAANULAC] ADD  DEFAULT ((0)) FOR [NroInicio]
GO
ALTER TABLE [dbo].[SAANULAC] ADD  DEFAULT ((0)) FOR [NroFinal]
GO
ALTER TABLE [dbo].[SAAOPER] ADD  DEFAULT (0) FOR [NumGrp]
GO
ALTER TABLE [dbo].[SAAOPER] ADD  DEFAULT (0) FOR [NroOper]
GO
ALTER TABLE [dbo].[SAAOPER] ADD  DEFAULT (0) FOR [PDtaReq]
GO
ALTER TABLE [dbo].[SAAUTORIZ] ADD  DEFAULT ((0)) FOR [NroInicio]
GO
ALTER TABLE [dbo].[SAAUTORIZ] ADD  DEFAULT ((0)) FOR [NroFinal]
GO
ALTER TABLE [dbo].[SACIUDAD] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SACIUDAD] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [TipoCli]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [TipoPVP]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [IntMora]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [EsGranCont]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [EsCredito]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [LimiteCred]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [DiasCred]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [EsToleran]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [DiasTole]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [MontoMax]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [MtoMaxCred]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [PagosA]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [PromPago]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [MontoUV]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [MontoUP]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [EsMoneda]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [SaldoPtos]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [TipoID3]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SACLIE] ADD  DEFAULT ((0)) FOR [TipoID]
GO
ALTER TABLE [dbo].[SACLPR] ADD  DEFAULT ((0)) FOR [EsServ]
GO
ALTER TABLE [dbo].[SACLPR] ADD  DEFAULT ((0)) FOR [cantidad]
GO
ALTER TABLE [dbo].[SACLPR] ADD  DEFAULT ((0)) FOR [precio]
GO
ALTER TABLE [dbo].[SACMEC] ADD  DEFAULT (0) FOR [TipoRgo]
GO
ALTER TABLE [dbo].[SACMEC] ADD  DEFAULT (0) FOR [NroUnico]
GO
ALTER TABLE [dbo].[SACMEC] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SACMEC] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SACMEC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Signo]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MontoMEx]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [OtrosC]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Fletes]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [DesctoP]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelI]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelE]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelT]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelC]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelA]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [CancelG]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Descto1]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoInt1]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Descto2]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoInt2]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoFinanc]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [TotalPrd]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [TotalSrv]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [NGiros]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [NMeses]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoNCredito]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoNDebito]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [MtoTotal]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT ((0)) FOR [TipoTraE]
GO
ALTER TABLE [dbo].[SACOMP] ADD  DEFAULT ((0)) FOR [TipoSus]
GO
ALTER TABLE [dbo].[SACOMP_01] ADD  DEFAULT ((0)) FOR [Ret_Alcaldia]
GO
ALTER TABLE [dbo].[SACOMP_01] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [IdVersion]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [IdVerXtra]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [MesTran]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [MesOC]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [MesPrf]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [CostoMes]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [CorrelPrd]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [MtoExtraG]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [ImpFleteV]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [ImpFleteC]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [AutoReten]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [PorctReten]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [PedirNCtrl]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [RetenIsrl]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Redond]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [RedTotal]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [ObliOper]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [PaswLim]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [EsMoneda]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [UsaNEL]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [InvConsig]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [PrioridadIC]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [CorrelUNC]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [ValorPtos]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [MesesPtos]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [FactorM]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [UsaFactorM]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT (0) FOR [IdAppNot]
GO
ALTER TABLE [dbo].[SACONF] ADD  DEFAULT ((0)) FOR [ValorPtosV]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaPTactil]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaDescrip2]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaDescrip3]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaImagen]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (3) FOR [TipoPVP]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (3) FOR [PVPLote]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaTax]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaDscto]
GO
ALTER TABLE [dbo].[SACONPRECIO] ADD  DEFAULT (0) FOR [UsaPorcD]
GO
ALTER TABLE [dbo].[SACONV] ADD  DEFAULT (0) FOR [EsFijo]
GO
ALTER TABLE [dbo].[SACONV] ADD  DEFAULT (0) FOR [TipoCnv]
GO
ALTER TABLE [dbo].[SACONV] ADD  DEFAULT (0) FOR [EsBase]
GO
ALTER TABLE [dbo].[SACONV] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SACONV] ADD  DEFAULT (0) FOR [Frecuencia]
GO
ALTER TABLE [dbo].[SACORRELSIS] ADD  DEFAULT (0) FOR [ValueInt]
GO
ALTER TABLE [dbo].[SACORRELSIS] ADD  DEFAULT (0) FOR [ValueDec]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTotal]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [NroFacts]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTotal1]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTax1]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTotal2]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTax2]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTotal3]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [MtoTax3]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [TDevExento]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTotal]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTotal1]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTax1]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTotal2]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTax2]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTotal3]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT (0) FOR [DevMtoTax3]
GO
ALTER TABLE [dbo].[SACORTEZ] ADD  DEFAULT ((0)) FOR [NroDevol]
GO
ALTER TABLE [dbo].[SACVEN] ADD  DEFAULT (0) FOR [TipoRgo]
GO
ALTER TABLE [dbo].[SACVEN] ADD  DEFAULT (0) FOR [NroUnico]
GO
ALTER TABLE [dbo].[SACVEN] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SACVEN] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SACVEN] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [EsVirtual]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [Printer]
GO
ALTER TABLE [dbo].[SADEPO] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SADOLAR] ADD  CONSTRAINT [DF_SADOLAR_VALOR]  DEFAULT ((0)) FOR [VALOR]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [NroFacts]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [MtoDevol]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [NroDevol]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [NroPagos]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [MtoNDebito]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [NroNDebito]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [MtoNCredito]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [NroNCredito]
GO
ALTER TABLE [dbo].[SAECLI] ADD  DEFAULT (0) FOR [MtoRetenImp]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [MtoCompra]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [Fletes]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [NroComps]
GO
ALTER TABLE [dbo].[SAECOM] ADD  DEFAULT (0) FOR [NroDevol]
GO
ALTER TABLE [dbo].[SAEMEC] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAEMEC] ADD  DEFAULT (0) FOR [CntVentas]
GO
ALTER TABLE [dbo].[SAEMEC] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [MtoCargos]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [MtoDescarg]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [MtoTraslad]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [CntCargos]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [CntDescarg]
GO
ALTER TABLE [dbo].[SAEOPI] ADD  DEFAULT (0) FOR [CntTraslad]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [ExInicial]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [MtoCompra]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CntCompra]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CntVentas]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [MtoCargos]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CntCargos]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [MtoDescarg]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CntDescarg]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CntInicial]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [ExFinal]
GO
ALTER TABLE [dbo].[SAEPRD] ADD  DEFAULT (0) FOR [CostoFinal]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [NroComps]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [MtoDevol]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [NroDevol]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [NroPagos]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [MtoNDebito]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [NroNDebito]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [MtoNCredito]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [NroNCredito]
GO
ALTER TABLE [dbo].[SAEPRV] ADD  DEFAULT (0) FOR [MtoRetenImp]
GO
ALTER TABLE [dbo].[SAESRV] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAESRV] ADD  DEFAULT (0) FOR [CntVentas]
GO
ALTER TABLE [dbo].[SAESRV] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAESRV] ADD  DEFAULT (0) FOR [MtoCompra]
GO
ALTER TABLE [dbo].[SAESRV] ADD  DEFAULT (0) FOR [CntCompra]
GO
ALTER TABLE [dbo].[SAESTA] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAESTA] ADD  DEFAULT ((0)) FOR [CodUsua]
GO
ALTER TABLE [dbo].[SAESTADO] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoRetenImp]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [Impuesto]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoTotReten]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoTips]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoIngreso]
GO
ALTER TABLE [dbo].[SAETAR] ADD  DEFAULT (0) FOR [MtoCompra]
GO
ALTER TABLE [dbo].[SAEVEN] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAEVEN] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAEVEN] ADD  DEFAULT (0) FOR [MtoIngreso]
GO
ALTER TABLE [dbo].[SAEVEN] ADD  DEFAULT (0) FOR [MtoComiVta]
GO
ALTER TABLE [dbo].[SAEVEN] ADD  DEFAULT (0) FOR [MtoComiCob]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [Fletes]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [NroFacts]
GO
ALTER TABLE [dbo].[SAEVTA] ADD  DEFAULT (0) FOR [NroDevol]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [Existen]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [ExUnidad]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [CantPed]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [UnidPed]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [CantCom]
GO
ALTER TABLE [dbo].[SAEXIS] ADD  DEFAULT (0) FOR [UnidCom]
GO
ALTER TABLE [dbo].[SAEXISCON] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAEXISCON] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAEXISCON] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAEXISCON] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAEXTSERVICES] ADD  DEFAULT ((0)) FOR [ServiceType]
GO
ALTER TABLE [dbo].[SAEXTSERVICES] ADD  DEFAULT ((0)) FOR [PortService]
GO
ALTER TABLE [dbo].[SAEXTSERVICES] ADD  DEFAULT ((0)) FOR [ServiceId]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Signo]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [EsExPickup]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MontoMEx]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Fletes]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CostoPrd]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CostoSrv]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [DesctoP]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelI]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelA]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelE]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelC]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelT]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelG]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Cambio]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoExtra]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Descto1]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [PctAnual]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoInt1]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Descto2]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [PctManejo]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoInt2]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoFinanc]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [TotalPrd]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [TotalSrv]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [NGiros]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [NMeses]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoComiVta]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoComiCob]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoComiVtaD]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoComiCobD]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoNCredito]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoNDebito]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [ValorPtos]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [CancelP]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [MtoTotal]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT ((1)) FOR [FACTURAPENDIENTE]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT ((0)) FOR [EsCorrel]
GO
ALTER TABLE [dbo].[SAFACT] ADD  DEFAULT ((0)) FOR [TipoTraE]
GO
ALTER TABLE [dbo].[SAFALO] ADD  DEFAULT (0) FOR [DiasCred]
GO
ALTER TABLE [dbo].[SAFALO] ADD  DEFAULT (0) FOR [TipoFac]
GO
ALTER TABLE [dbo].[SAFALO] ADD  DEFAULT ((0)) FOR [TipoOpe]
GO
ALTER TABLE [dbo].[SAFLDREF] ADD  DEFAULT (0) FOR [NCampo]
GO
ALTER TABLE [dbo].[SAFLDREF] ADD  DEFAULT (0) FOR [TipoC]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [ExInicial]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [ExUndIni]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [ExFinal]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [ExUndFinal]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAINITI] ADD  DEFAULT (0) FOR [CostoFinal]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [Nivel]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [InsPadre]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [CodCate]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [CatPadre]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsComp]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsSeri]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsLote]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsComi]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsCorrel]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DigitosC]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [DEsTabla]
GO
ALTER TABLE [dbo].[SAINSTA] ADD  DEFAULT (0) FOR [TipoIns]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT (0) FOR [TipoPag]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT (0) FOR [Impuesto]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT (0) FOR [RetencT]
GO
ALTER TABLE [dbo].[SAIPACXC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT (0) FOR [TipoPag]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT (0) FOR [Propina]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT (0) FOR [Impuesto]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT (0) FOR [RetencT]
GO
ALTER TABLE [dbo].[SAIPAVTA] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [TipoCnv]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Medida]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [Frecuencia]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT (0) FOR [MontoMax]
GO
ALTER TABLE [dbo].[SAITCV] ADD  DEFAULT ((0)) FOR [TipoPVP]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Signo]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [CantidadC]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [CantidadU]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [CantidadA]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [CantidadUA]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Precio1]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Precio2]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Precio3]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [PrecioU]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [EsFreeP]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [EsPesa]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [EsExento]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [UsaServ]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [DEsLote]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [DEsSeri]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [ExistAnt]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Faltante]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [CantidadO]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [ExistAntU]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [Tara]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [TotalItem]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [PrecioU2]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [PrecioU3]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT (0) FOR [NroUnicoL]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT ((0)) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT ((0)) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAITEMCOM] ADD  DEFAULT ((0)) FOR [CostOrg]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  CONSTRAINT [DF__SAITEMFAC__Signo__0CDAE408]  DEFAULT ((1)) FOR [Signo]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantMayor]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantidadU]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantidadC]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantidadA]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantidadUA]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [EsFreeP]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [EsPesa]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [EsExento]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [UsaServ]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [DEsLote]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [DEsSeri]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [DEsComp]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [ExistAnt]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [CantidadO]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [ExistAntU]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [NroUnicoL]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [Tara]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT (0) FOR [TotalItem]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT ((0)) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAITEMFAC] ADD  DEFAULT ((0)) FOR [PriceO]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Signo]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [CantidadC]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [CantidadU]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [CantidadA]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [CantidadUA]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [EsFreeP]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [EsPesa]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [EsExento]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [UsaServ]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [DEsLote]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [DEsSeri]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [ExistAnt]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [CantidadO]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [ExistAntU]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [ExistAnt2]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [ExistAntU2]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [Tara]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [TotalItem]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [NroUnicoL]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT (0) FOR [PrecioU]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITEMOPI] ADD  DEFAULT ((0)) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelI]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelA]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelE]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelC]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelT]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [CancelG]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAITEMPLANI] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [TipoOfe]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [Medida]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SAITEO] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SAITESERVFAC_01] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITESERVFAC_01] ADD  DEFAULT (0) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SAITESERVFAC_01] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAITFL] ADD  DEFAULT (0) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAITFL] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAITFL] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAITFL] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [TipoTra]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [Status]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [MtoTax1]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [MtoTax2]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [MtoTax3]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [MtoTax4]
GO
ALTER TABLE [dbo].[SAITOR] ADD  DEFAULT (0) FOR [MtoTax5]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT (0) FOR [Precio]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT (0) FOR [PrecioU]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT (0) FOR [CantidadU]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [Precio2]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [PrecioU2]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [Precio3]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [PrecioU3]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [Precio1]
GO
ALTER TABLE [dbo].[SALOTE] ADD  DEFAULT ((0)) FOR [PrecioU1]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [DEsComi]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [TipoID3]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SAMECA] ADD  DEFAULT ((0)) FOR [TipoID]
GO
ALTER TABLE [dbo].[SAMUNICIPIO] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SAMUNICIPIO] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAMUNICIPIO] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAOFER] ADD  DEFAULT (0) FOR [TipoOfe]
GO
ALTER TABLE [dbo].[SAOFER] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SAOPEI] ADD  DEFAULT (0) FOR [Signo]
GO
ALTER TABLE [dbo].[SAOPEI] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAOPEI] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SAOPEI] ADD  DEFAULT (0) FOR [UsoInterno]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [TipoTra]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [Status]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [TipoCli]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [MtoTax1]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [MtoTax2]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [MtoTax3]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [MtoTax4]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [MtoTax5]
GO
ALTER TABLE [dbo].[SAORDT] ADD  DEFAULT (0) FOR [EsExPickup]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [MontoDocA]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [BaseReten]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [BaseImpo]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT ((0)) FOR [EsRetenIVA]
GO
ALTER TABLE [dbo].[SAPAGCXC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [MontoDocA]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [BaseReten]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [BaseImpo]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT (0) FOR [TExento]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT ((0)) FOR [EsRetenIVA]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT ((0)) FOR [Sustraendo]
GO
ALTER TABLE [dbo].[SAPAGCXP] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAPART] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAPART] ADD  DEFAULT (0) FOR [EsUnid]
GO
ALTER TABLE [dbo].[SAPART] ADD  DEFAULT (0) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAPLANI] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SAPLANI] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [CostAct]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [CostPro]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [CostAnt]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Precio1]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Precio2]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Precio3]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo1]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo2]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo3]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo4]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo5]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo6]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo7]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo8]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo9]
GO
ALTER TABLE [dbo].[SAPRIM] ADD  DEFAULT (0) FOR [Costo10]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioU]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Precio1]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Precio2]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Precio3]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioI1]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioI2]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioI3]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo1]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo2]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo3]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo4]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo5]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo6]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo7]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo8]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo9]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [Costo10]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioU2]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT (0) FOR [PrecioU3]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAPRIMCOM] ADD  DEFAULT ((0)) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SAPRNGIROS] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [CodInst]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [CantEmpaq]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Precio1]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Precio2]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Precio3]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [PrecioU]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [CostAct]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [CostPro]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [CostAnt]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Existen]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [ExUnidad]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [ExistenCon]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [ExUnidadCon]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Compro]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Pedido]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Minimo]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Maximo]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Tara]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DEsComp]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DEsComi]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DEsSeri]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DEsLote]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DEsVence]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsPublish]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsImport]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsExento]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsEnser]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsOferta]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsPesa]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsEmpaque]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [ExDecimal]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [DiasEntr]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [PrecioU2]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [PrecioU3]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Peso]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [Volumen]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAPROD] ADD  DEFAULT ((0)) FOR [DiasTole]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [TipoPrv]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [DiasCred]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [MontoMax]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [PagosA]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [PromPago]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [MontoUC]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [MontoUP]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [EsMoneda]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [TipoID3]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [RetenISLR]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SAPROV] ADD  DEFAULT ((0)) FOR [TipoID]
GO
ALTER TABLE [dbo].[SAPRSRI] ADD  DEFAULT ((0)) FOR [NroInicio]
GO
ALTER TABLE [dbo].[SAPRSRI] ADD  DEFAULT ((0)) FOR [NroFinal]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [NroFacts]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [Credito]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [Contado]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [MtoVentas]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [Descto]
GO
ALTER TABLE [dbo].[SAPTOSCLIENTE] ADD  DEFAULT (0) FOR [ValorPtos]
GO
ALTER TABLE [dbo].[SAPVPR] ADD  DEFAULT (0) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SAPVPR] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SAPVPR] ADD  DEFAULT ((0)) FOR [EsServ]
GO
ALTER TABLE [dbo].[SAPVPR] ADD  DEFAULT ((0)) FOR [CodItem]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [CodInst]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [TipoRgo]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [NroUnico]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SARGOCAT] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SARGORET] ADD  DEFAULT (0) FOR [TipoRgo]
GO
ALTER TABLE [dbo].[SARGORET] ADD  DEFAULT (0) FOR [NroUnico]
GO
ALTER TABLE [dbo].[SARGORET] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SARGORET] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SARGORET] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SARGOTJT] ADD  DEFAULT (0) FOR [TipoRgo]
GO
ALTER TABLE [dbo].[SARGOTJT] ADD  DEFAULT (0) FOR [NroUnico]
GO
ALTER TABLE [dbo].[SARGOTJT] ADD  DEFAULT (0) FOR [Desde]
GO
ALTER TABLE [dbo].[SARGOTJT] ADD  DEFAULT (0) FOR [Hasta]
GO
ALTER TABLE [dbo].[SARGOTJT] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SASEPRCOM] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SASEPRCOM] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SASEPRCOM] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SASEPRCOM] ADD  DEFAULT ((0)) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SASEPRFAC] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SASEPRFAC] ADD  DEFAULT (0) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SASEPRFAC] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SASEPRFAC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SASEPROPI] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SASEPROPI] ADD  DEFAULT (0) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SASEPROPI] ADD  DEFAULT (0) FOR [EsConsig]
GO
ALTER TABLE [dbo].[SASEPROPI] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SASERICON] ADD  DEFAULT (0) FOR [NroRegi]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [CodInst]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [Precio1]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [PrecioI1]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [Precio2]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [PrecioI2]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [Precio3]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [PrecioI3]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [Costo]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [EsExento]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [EsPorCost]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [UsaServ]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [Comision]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [EsPorComi]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [EsImport]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT ((1)) FOR [EsVenta]
GO
ALTER TABLE [dbo].[SASERV] ADD  DEFAULT ((1)) FOR [EsCompra]
GO
ALTER TABLE [dbo].[SASICOS_CHILD] ADD  CONSTRAINT [DF_SASICOS_CHILD_CodStatus]  DEFAULT ('001') FOR [CodStatus]
GO
ALTER TABLE [dbo].[SASICOS_CHILD] ADD  CONSTRAINT [DF_SASICOS_CHILD_CodPrior]  DEFAULT ((0)) FOR [CodPrior]
GO
ALTER TABLE [dbo].[SASICOS_CHILD] ADD  DEFAULT ((0)) FOR [Garantia]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ETIQUETA] ADD  CONSTRAINT [DF_SASICOS_CHILD_ETIQUETA_eTecnico]  DEFAULT ((0)) FOR [eTecnico]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ETIQUETA] ADD  CONSTRAINT [DF_SASICOS_CHILD_ETIQUETA_eCliente]  DEFAULT ((0)) FOR [eCliente]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ETIQUETA] ADD  CONSTRAINT [DF_SASICOS_CHILD_ETIQUETA_eSupervisor]  DEFAULT ((0)) FOR [eSupervisor]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  CONSTRAINT [DF_Table_1_Precio]  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  CONSTRAINT [DF_SASICOS_CHILD_ITFACT_CodMeca]  DEFAULT ((0)) FOR [CodMeca]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  DEFAULT ((0)) FOR [EsExento]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  DEFAULT ((0)) FOR [UsaServ]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  DEFAULT ((0)) FOR [Costo]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_ITFACT] ADD  DEFAULT ((0)) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRD] ADD  CONSTRAINT [DF_SASICOS_CHILD_PRD_Cantidad]  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRD] ADD  CONSTRAINT [DF_SASICOS_CHILD_PRD_CostPro]  DEFAULT ((0)) FOR [CostPro]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRD] ADD  DEFAULT ((0)) FOR [Eliminado]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRD] ADD  DEFAULT ((0)) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRD] ADD  DEFAULT ((0)) FOR [EsExento]
GO
ALTER TABLE [dbo].[SASICOS_CHILD_PRDSERIAL] ADD  DEFAULT ((0)) FOR [BKUP]
GO
ALTER TABLE [dbo].[SASICOS_EMAIL] ADD  CONSTRAINT [DF_Table_1_Enviado]  DEFAULT ((0)) FOR [Estado]
GO
ALTER TABLE [dbo].[SASICOS_EMAIL] ADD  DEFAULT ((0)) FOR [Intentos]
GO
ALTER TABLE [dbo].[SASICOS_EMAILCFG] ADD  CONSTRAINT [DF_SASICOS_EMAILCFG_Puerto]  DEFAULT ((0)) FOR [Puerto]
GO
ALTER TABLE [dbo].[SASICOS_HEAD] ADD  CONSTRAINT [DF_SASICOS_HEAD_Condicion]  DEFAULT ('Nueva') FOR [Condicion]
GO
ALTER TABLE [dbo].[SASICOS_USR] ADD  CONSTRAINT [DF_SASICOS_USR_Nivel]  DEFAULT ((3)) FOR [Nivel]
GO
ALTER TABLE [dbo].[SASNNOTIF] ADD  DEFAULT ((0)) FOR [NotifyId]
GO
ALTER TABLE [dbo].[SASNNOTIF] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[SASNNOTIF] ADD  DEFAULT ((0)) FOR [TipoVerif]
GO
ALTER TABLE [dbo].[SASNNOTIF] ADD  DEFAULT ((0)) FOR [Monto]
GO
ALTER TABLE [dbo].[SASNUSERS] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[SASUCURSAL] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SASUCURSAL] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SASUCURSAL] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SASUCURSAL] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT (0) FOR [Impuesto]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT (0) FOR [DiasDif]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT (0) FOR [BaseReten]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT ((0)) FOR [RetenIVA]
GO
ALTER TABLE [dbo].[SATARJ] ADD  DEFAULT ((0)) FOR [TipoIns]
GO
ALTER TABLE [dbo].[SATAXCOM] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXCOM] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXCOM] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXCOM] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXCOM] ADD  DEFAULT ((0)) FOR [EsReten]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXCXC] ADD  DEFAULT ((0)) FOR [EsReten]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXCXP] ADD  DEFAULT ((0)) FOR [EsReten]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsPorct]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsCosto]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsLibroI]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsPartic]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [TipoIVA]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsTaxVenta]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsTaxCompra]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsFijo]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [EsReten]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [MontoMax]
GO
ALTER TABLE [dbo].[SATAXES] ADD  DEFAULT (0) FOR [Sustraendo]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXITC] ADD  DEFAULT ((0)) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT (0) FOR [NroLineaC]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXITF] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXPRD] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXPRD] ADD  DEFAULT (0) FOR [EsPorct]
GO
ALTER TABLE [dbo].[SATAXSRV] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXSRV] ADD  DEFAULT (0) FOR [EsPorct]
GO
ALTER TABLE [dbo].[SATAXVTA] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATAXVTA] ADD  DEFAULT (0) FOR [MtoTax]
GO
ALTER TABLE [dbo].[SATAXVTA] ADD  DEFAULT (0) FOR [TGravable]
GO
ALTER TABLE [dbo].[SATAXVTA] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SATAXVTA] ADD  DEFAULT ((0)) FOR [EsReten]
GO
ALTER TABLE [dbo].[SATMPCHQ] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SATMPCHQ] ADD  DEFAULT ('00000') FOR [CodSucu]
GO
ALTER TABLE [dbo].[SAUSRREP] ADD  DEFAULT (0) FOR [SisSnt]
GO
ALTER TABLE [dbo].[SAUSRREP] ADD  DEFAULT (0) FOR [NroRpt]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiPV]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiTV]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiTC]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiTU]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiUT]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiDT]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [EsComiTM]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [TipoID3]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SAVEND] ADD  DEFAULT ((0)) FOR [TipoID]
GO
ALTER TABLE [dbo].[SAZONA] ADD  DEFAULT (1) FOR [Activo]
GO
ALTER TABLE [dbo].[SBACUM] ADD  DEFAULT (0) FOR [TipoAcum]
GO
ALTER TABLE [dbo].[SBACUM] ADD  DEFAULT (0) FOR [Debitos]
GO
ALTER TABLE [dbo].[SBACUM] ADD  DEFAULT (0) FOR [Creditos]
GO
ALTER TABLE [dbo].[SBAPPD] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SBAPPD] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBAPPM] ADD  DEFAULT (0) FOR [NroPagos]
GO
ALTER TABLE [dbo].[SBAPPM] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [SaldoC1]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [SaldoC2]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [PrxConc]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [InvChe]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [IDB]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [PDB]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [PrxNDDB]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [CtaConc]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [RTransf]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [MesesH]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [VNoCh]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [VNoDp]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [VNoNc]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [VNoNd]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [PrxCheque]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP0]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP1]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP2]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP3]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP4]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [NCOMP5]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SBBANC] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [Pais]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [Ciudad]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [UMonto]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [ECG]
GO
ALTER TABLE [dbo].[SBBENE] ADD  DEFAULT (0) FOR [Municipio]
GO
ALTER TABLE [dbo].[SBCOBA] ADD  DEFAULT (0) FOR [CodBanc]
GO
ALTER TABLE [dbo].[SBCOBA] ADD  DEFAULT (0) FOR [ValueInt]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoConc]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [SaldoI]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoDepoC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoCredC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoCheqC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoNDebC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtDepoC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtCredC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtCheqC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtNDebC]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoDepoT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoCredT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoCheqT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [NoNDebT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtDepoT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtCredT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtCheqT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [MtNDebT]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [SaldoF]
GO
ALTER TABLE [dbo].[SBConc] ADD  DEFAULT (0) FOR [SaldoLib]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [MaxCheque]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [DiasD1]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [DiasD2]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [DiasD3]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [IChequeNE]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ICEgreso]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [PrxCEgreso]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [PrxDeposito]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [PrxNDebito]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [PrxNCredito]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [PDebBan]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [MesesH]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [AlertarND]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [MOpeConc]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [Consolida]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [CCTipo]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [CCSSW]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [CCPrefix]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas0]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas1]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas2]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas3]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas4]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [ACtas5]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe1]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe2]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe3]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe4]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe5]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe6]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe7]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe8]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe9]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NOpe10]
GO
ALTER TABLE [dbo].[SBCONF] ADD  DEFAULT (0) FOR [NroCxB]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [IEA]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [UMonto]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [EsBanco]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [SaldoAct]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [CtaCF]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [CtaMov]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [CtaTer]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [CtaCC]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [CtaBase]
GO
ALTER TABLE [dbo].[SBCTAS] ADD  DEFAULT (0) FOR [ECG]
GO
ALTER TABLE [dbo].[SBDEFPD] ADD  DEFAULT (0) FOR [NDefAPP]
GO
ALTER TABLE [dbo].[SBDEFPD] ADD  DEFAULT (0) FOR [TipoCDT]
GO
ALTER TABLE [dbo].[SBDEFPD] ADD  DEFAULT (0) FOR [NLinea]
GO
ALTER TABLE [dbo].[SBDEFPD] ADD  DEFAULT (0) FOR [NCampo]
GO
ALTER TABLE [dbo].[SBDEFPD] ADD  DEFAULT (0) FOR [TipoDat]
GO
ALTER TABLE [dbo].[SBDesA] ADD  DEFAULT (0) FOR [IOri]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [NLinea]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [TipoOpe]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [MontoE]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [PlazaC]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [MontoC]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [MontoBT]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [BaseIT]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [ComiT]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [ImpT]
GO
ALTER TABLE [dbo].[SBDIFE] ADD  DEFAULT (0) FOR [NetoT]
GO
ALTER TABLE [dbo].[SBDOpF] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBDOpF] ADD  DEFAULT (0) FOR [Monto2]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [NLinea]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [EsTransf]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [EsCuenta]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [EncOpe]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [DH]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [NMo]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [BaseTr]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [Consolidado]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [SiCentro]
GO
ALTER TABLE [dbo].[SBDTRN] ADD  DEFAULT (0) FOR [SiTercero]
GO
ALTER TABLE [dbo].[SBEsti] ADD  DEFAULT (0) FOR [TipoAcum]
GO
ALTER TABLE [dbo].[SBEsti] ADD  DEFAULT (0) FOR [Debitos]
GO
ALTER TABLE [dbo].[SBEsti] ADD  DEFAULT (0) FOR [Creditos]
GO
ALTER TABLE [dbo].[SBFDCCONS] ADD  DEFAULT (0) FOR [NLinea]
GO
ALTER TABLE [dbo].[SBFDCCONS] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBFDCPER] ADD  DEFAULT (0) FOR [SaldoA]
GO
ALTER TABLE [dbo].[SBFMTS] ADD  DEFAULT (0) FOR [TipoOpe]
GO
ALTER TABLE [dbo].[SBMONE] ADD  DEFAULT (0) FOR [Factor]
GO
ALTER TABLE [dbo].[SBMONE] ADD  DEFAULT (0) FOR [EsBase]
GO
ALTER TABLE [dbo].[SBOPCTAS] ADD  DEFAULT (0) FOR [NroILB]
GO
ALTER TABLE [dbo].[SBOPCTAS] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SBOPCTAS] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBOPCTAS] ADD  DEFAULT (0) FOR [FData]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [EdoPago]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [NroIDOP]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [NroUTrnB]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [NroURecP]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [NroURetP]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [NroDcts]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [MtoReten]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [Porcent]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [UsaIDB]
GO
ALTER TABLE [dbo].[SBOPCXPP] ADD  DEFAULT (0) FOR [MtoIDB]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [TipoOpe]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [Avisar]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [Siempre]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [NPagos]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [Frecuencia]
GO
ALTER TABLE [dbo].[SBOpFr] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [EdoPago]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [NroIDOP]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [NroUTrnB]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [NroURecP]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [NroURetP]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [NroDcts]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [MtoPagos]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [MtoReten]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [Porcent]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [UsaIDB]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [MtoIDB]
GO
ALTER TABLE [dbo].[SBOPMSTR] ADD  DEFAULT (0) FOR [MtoRec]
GO
ALTER TABLE [dbo].[SBOPPGOS] ADD  DEFAULT (0) FOR [NroUCxP]
GO
ALTER TABLE [dbo].[SBOPPGOS] ADD  DEFAULT (0) FOR [NroLinea]
GO
ALTER TABLE [dbo].[SBOPPGOS] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBOPPGOS] ADD  DEFAULT (0) FOR [FData]
GO
ALTER TABLE [dbo].[SBPres] ADD  DEFAULT (0) FOR [TipoAcum]
GO
ALTER TABLE [dbo].[SBPres] ADD  DEFAULT (0) FOR [Debitos]
GO
ALTER TABLE [dbo].[SBPres] ADD  DEFAULT (0) FOR [Creditos]
GO
ALTER TABLE [dbo].[SBPrxC] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBPrxC] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBRptD] ADD  DEFAULT (0) FOR [MtoRpt1]
GO
ALTER TABLE [dbo].[SBRptD] ADD  DEFAULT (0) FOR [MtoRpt2]
GO
ALTER TABLE [dbo].[SBRptD] ADD  DEFAULT (0) FOR [MtoRpt3]
GO
ALTER TABLE [dbo].[SBRptD] ADD  DEFAULT (0) FOR [MtoRpt4]
GO
ALTER TABLE [dbo].[SBRptD] ADD  DEFAULT (0) FOR [MtoRpt5]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [NroComp]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [OpeRel]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [TipBen]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [NoConc]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Endosable]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [TipoOpe]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoIDB]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Consolidado]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [NroEgreso]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoDebito]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoOrigen]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Monto1]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Monto2]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoDeb]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [MtoOri]
GO
ALTER TABLE [dbo].[SBTRAN] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [NoConc]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [Monto]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [Monto1]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [Monto2]
GO
ALTER TABLE [dbo].[SBTrTr] ADD  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[SCICONEX] ADD  DEFAULT (0) FOR [Periodo]
GO
ALTER TABLE [dbo].[SCIDEPART] ADD  DEFAULT (2) FOR [UCCO]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (0) FOR [DPCCI]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CxcGeneral]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CxpGeneral]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CtaDevolucionesV]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CtaDevolucionesCrV]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CtaDevolucionesC]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CtaRetencionV]
GO
ALTER TABLE [dbo].[SCIOPERA] ADD  DEFAULT (' ') FOR [CtaRetencionC]
GO
ALTER TABLE [dbo].[SCIPARAM] ADD  DEFAULT ('0') FOR [UsaPFiscal]
GO
ALTER TABLE [dbo].[SCIPARAM] ADD  DEFAULT (' ') FOR [CtaAdelantoV]
GO
ALTER TABLE [dbo].[SCIPARAM] ADD  DEFAULT (' ') FOR [CtaAdelantoC]
GO
ALTER TABLE [dbo].[SCIPROD] ADD  DEFAULT (2) FOR [UCCO]
GO
ALTER TABLE [dbo].[SCIPROD] ADD  DEFAULT (' ') FOR [CtaDevolucionesV]
GO
ALTER TABLE [dbo].[SCIPROD] ADD  DEFAULT (' ') FOR [CtaDevolucionesCrV]
GO
ALTER TABLE [dbo].[SCIPROD] ADD  DEFAULT (' ') FOR [CtaDevolucionesC]
GO
ALTER TABLE [dbo].[SCISERV] ADD  DEFAULT (2) FOR [UCCO]
GO
ALTER TABLE [dbo].[SCISERV] ADD  DEFAULT (0) FOR [CPPUD]
GO
ALTER TABLE [dbo].[SCISERV] ADD  DEFAULT (' ') FOR [CtaDevolucionesV]
GO
ALTER TABLE [dbo].[SCISERV] ADD  DEFAULT (' ') FOR [CtaDevolucionesCrV]
GO
ALTER TABLE [dbo].[SCISERV] ADD  DEFAULT (' ') FOR [CtaDevolucionesC]
GO
ALTER TABLE [dbo].[SCITAXS] ADD  DEFAULT (' ') FOR [CtaTaxsD]
GO
ALTER TABLE [dbo].[SCIUSER] ADD  DEFAULT ('11111111') FOR [Consol]
GO
ALTER TABLE [dbo].[SCIUSER] ADD  DEFAULT ('111111111111') FOR [Setup]
GO
ALTER TABLE [dbo].[SERVIT_01] ADD  CONSTRAINT [DF_SERVIT_01_TecAsig]  DEFAULT ('') FOR [TecAsig]
GO
ALTER TABLE [dbo].[SERVIT_02] ADD  CONSTRAINT [DF_SERVIT_02_TecAsig]  DEFAULT ('') FOR [TecAsig]
GO
ALTER TABLE [dbo].[SERVIT_Conf] ADD  CONSTRAINT [DF_SERVIT_Conf_CodConf]  DEFAULT ((1)) FOR [CodConf]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((-1)) FOR [USHIFTID]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ('1900-1-1') FOR [STARTDATE]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ('1900-12-31') FOR [ENDDATE]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [RUNNUM]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH1]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH2]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH3]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH4]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH5]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH6]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH7]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH8]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH9]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH10]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH11]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [SCH12]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [CYCLE]
GO
ALTER TABLE [dbo].[SHIFT] ADD  DEFAULT ((0)) FOR [UNITS]
GO
ALTER TABLE [dbo].[SMENTRADA] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SMENVIOHDR] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SMENVIOMOV] ADD  DEFAULT (0) FOR [NroPpal]
GO
ALTER TABLE [dbo].[SMENVIOMOV] ADD  DEFAULT (0) FOR [Estado]
GO
ALTER TABLE [dbo].[SSAUTR] ADD  DEFAULT (0) FOR [Modulo]
GO
ALTER TABLE [dbo].[SSAUTR] ADD  DEFAULT (0) FOR [Parametro]
GO
ALTER TABLE [dbo].[SSDTAA] ADD  DEFAULT (0) FOR [CodArch]
GO
ALTER TABLE [dbo].[SSDTAA] ADD  DEFAULT (0) FOR [IndDta]
GO
ALTER TABLE [dbo].[SSFLDS] ADD  DEFAULT (0) FOR [NCampo]
GO
ALTER TABLE [dbo].[SSFLDS] ADD  DEFAULT (0) FOR [Activo]
GO
ALTER TABLE [dbo].[SSFLDS] ADD  DEFAULT (0) FOR [Editable]
GO
ALTER TABLE [dbo].[SSFMTS] ADD  DEFAULT (0) FOR [FmtNro]
GO
ALTER TABLE [dbo].[SSNIVL] ADD  DEFAULT (0) FOR [CodNivl]
GO
ALTER TABLE [dbo].[SSOPMN] ADD  DEFAULT (0) FOR [Nivel]
GO
ALTER TABLE [dbo].[SSOPMN] ADD  DEFAULT (0) FOR [Accion]
GO
ALTER TABLE [dbo].[SSOPMN] ADD  DEFAULT (0) FOR [OpActiva]
GO
ALTER TABLE [dbo].[SSOPMN] ADD  DEFAULT (0) FOR [UPrinter]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [Modulo]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [Parametro]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [NoData]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [TipoData]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [IData]
GO
ALTER TABLE [dbo].[SSPARD] ADD  DEFAULT (0) FOR [FData]
GO
ALTER TABLE [dbo].[SSPARM] ADD  DEFAULT (0) FOR [Modulo]
GO
ALTER TABLE [dbo].[SSPARM] ADD  DEFAULT (0) FOR [Parametro]
GO
ALTER TABLE [dbo].[SSPARM] ADD  DEFAULT (0) FOR [Activo]
GO
ALTER TABLE [dbo].[SSPARM] ADD  DEFAULT (0) FOR [Clave]
GO
ALTER TABLE [dbo].[SSPARM] ADD  DEFAULT (0) FOR [Habilitado]
GO
ALTER TABLE [dbo].[SSUSRS] ADD  DEFAULT (0) FOR [IdUserNot]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT ('REGISTRO NUEVO') FOR [Descrip]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [NroComp]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [TipBen]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoOp]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoEfe]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoChe]
GO
ALTER TABLE [dbo].[STIB01] ADD  DEFAULT (0) FOR [MtoTar]
GO
ALTER TABLE [dbo].[STIB02] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[STIB02] ADD  DEFAULT (0) FOR [MtoOp]
GO
ALTER TABLE [dbo].[STIB02] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[STIB02] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [NOpe]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [TipBen]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [TDC]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [CDCD]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoOp]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoDb]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoCr]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoEfe]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoChe]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB01] ADD  DEFAULT ((0)) FOR [MtoTar]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB02] ADD  DEFAULT ((0)) FOR [NOpe]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB02] ADD  DEFAULT ((0)) FOR [MtoOp]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB02] ADD  DEFAULT ((0)) FOR [MtoDb]
GO
ALTER TABLE [dbo].[TMP_EMILY_SCOTT_STIB02] ADD  DEFAULT ((0)) FOR [MtoCr]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [NOpe]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [TipBen]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [TDC]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [CDCD]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoOp]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoDb]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoCr]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoEfe]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoChe]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB01] ADD  DEFAULT ((0)) FOR [MtoTar]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB02] ADD  DEFAULT ((0)) FOR [NOpe]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB02] ADD  DEFAULT ((0)) FOR [MtoOp]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB02] ADD  DEFAULT ((0)) FOR [MtoDb]
GO
ALTER TABLE [dbo].[TMP_VENTASPC_STIB02] ADD  DEFAULT ((0)) FOR [MtoCr]
GO
ALTER TABLE [dbo].[USER_OF_RUN] ADD  DEFAULT ('1900-1-1') FOR [STARTDATE]
GO
ALTER TABLE [dbo].[USER_OF_RUN] ADD  DEFAULT ('2099-12-31') FOR [ENDDATE]
GO
ALTER TABLE [dbo].[USER_OF_RUN] ADD  DEFAULT ((0)) FOR [ISNOTOF_RUN]
GO
ALTER TABLE [dbo].[USER_SPEDAY] ADD  DEFAULT ('1900-1-1') FOR [STARTSPECDAY]
GO
ALTER TABLE [dbo].[USER_SPEDAY] ADD  DEFAULT ('2099-12-31') FOR [ENDSPECDAY]
GO
ALTER TABLE [dbo].[USER_SPEDAY] ADD  DEFAULT ((-1)) FOR [DATEID]
GO
ALTER TABLE [dbo].[USER_TEMP_SCH] ADD  DEFAULT ((0)) FOR [OVERTIME]
GO
ALTER TABLE [dbo].[USER_TEMP_SCH] ADD  DEFAULT ((0)) FOR [TYPE]
GO
ALTER TABLE [dbo].[USER_TEMP_SCH] ADD  DEFAULT ((1)) FOR [FLAG]
GO
ALTER TABLE [dbo].[USER_TEMP_SCH] ADD  DEFAULT ((-1)) FOR [SCHCLASSID]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [DEFAULTDEPTID]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [ATT]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [INLATE]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [OUTEARLY]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [OVERTIME]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [SEP]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [HOLIDAY]
GO
ALTER TABLE [dbo].[USERINFO] ADD  DEFAULT ((1)) FOR [LUNCHDURATION]
GO
ALTER TABLE [dbo].[UserMsg] ADD  DEFAULT (getdate()) FOR [dtDate]
GO
ALTER TABLE [dbo].[UserMsg] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [TipBen]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [TDC]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [CDCD]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoOp]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoEfe]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoChe]
GO
ALTER TABLE [dbo].[X1OEM_STIB01] ADD  DEFAULT (0) FOR [MtoTar]
GO
ALTER TABLE [dbo].[X1OEM_STIB02] ADD  DEFAULT (0) FOR [NOpe]
GO
ALTER TABLE [dbo].[X1OEM_STIB02] ADD  DEFAULT (0) FOR [MtoOp]
GO
ALTER TABLE [dbo].[X1OEM_STIB02] ADD  DEFAULT (0) FOR [MtoDb]
GO
ALTER TABLE [dbo].[X1OEM_STIB02] ADD  DEFAULT (0) FOR [MtoCr]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [CompanyFK01] FOREIGN KEY([ID_TypeEntity])
REFERENCES [dbo].[CompaniyType] ([ID_TypeEntity])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [CompanyFK01]
GO
ALTER TABLE [dbo].[CompanyJoin]  WITH CHECK ADD  CONSTRAINT [CompanyJoinFK01] FOREIGN KEY([ID_Entity])
REFERENCES [dbo].[Company] ([ID_Entity])
GO
ALTER TABLE [dbo].[CompanyJoin] CHECK CONSTRAINT [CompanyJoinFK01]
GO
ALTER TABLE [dbo].[ModelAccountType]  WITH CHECK ADD  CONSTRAINT [ModelAccountTypeFK01] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[ModelAccount] ([ID_Account])
GO
ALTER TABLE [dbo].[ModelAccountType] CHECK CONSTRAINT [ModelAccountTypeFK01]
GO
ALTER TABLE [dbo].[ModelAccountType]  WITH CHECK ADD  CONSTRAINT [ModelAccountTypeFK02] FOREIGN KEY([ID_TypeEntity])
REFERENCES [dbo].[CompaniyType] ([ID_TypeEntity])
GO
ALTER TABLE [dbo].[ModelAccountType] CHECK CONSTRAINT [ModelAccountTypeFK02]
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD  CONSTRAINT [RatesFK01] FOREIGN KEY([ID_Currency])
REFERENCES [dbo].[Currency] ([ID_Currency])
GO
ALTER TABLE [dbo].[Rates] CHECK CONSTRAINT [RatesFK01]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD CHECK  ((len([IDCity])>(0)))
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD CHECK  ((len([IDCountry])>(0)))
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD CHECK  ((len([IDState])>(0)))
GO
ALTER TABLE [dbo].[CompaniyType]  WITH CHECK ADD CHECK  ((len([MaskCode])>(1)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  ((len([Descrip])>(0)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  (([EtyCapital]=(2) OR [EtyCapital]=(1) OR [EtyCapital]=(0)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  (([EtyConsol]>=(0) AND [EtyConsol]<=(2)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  (([EtySize]=(2) OR [EtySize]=(1) OR [EtySize]=(0)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  ((len([ID_TypeEntity])<>(0)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  ((len([IDLabel])>(0)))
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD CHECK  ((len([Reserved])=(15)))
GO
ALTER TABLE [dbo].[CompanyJoin]  WITH CHECK ADD CHECK  (([Status]>=(0) AND [Status]<=(3)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  (([boSSW]=(1) OR [boSSW]=(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  (([boStatus]=(1) OR [boStatus]=(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  ((len([DBName])<>(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  ((len([DBServer])<>(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  ((len([ID_Connec])<>(0)))
GO
ALTER TABLE [dbo].[Connections]  WITH CHECK ADD CHECK  (([siType]=(2) OR [siType]=(1) OR [siType]=(0)))
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD CHECK  ((len([IDCountry])>(0)))
GO
ALTER TABLE [dbo].[EntityPrefix]  WITH CHECK ADD CHECK  (([Prefix]>(0)))
GO
ALTER TABLE [dbo].[LogLockReg]  WITH CHECK ADD CHECK  ((len([ID_Entity])>(0)))
GO
ALTER TABLE [dbo].[LogLockReg]  WITH CHECK ADD CHECK  (([siPeriod]>=(1980) AND [siPeriod]<=(2025)))
GO
ALTER TABLE [dbo].[LogLockReg]  WITH CHECK ADD CHECK  (([Status]=(1) OR [Status]=(0) OR [Status]=(-1)))
GO
ALTER TABLE [dbo].[LogStation]  WITH CHECK ADD CHECK  ((len([ID_Entity])>(0)))
GO
ALTER TABLE [dbo].[LogStation]  WITH CHECK ADD CHECK  ((len([IDUser])>(0)))
GO
ALTER TABLE [dbo].[LogStation]  WITH CHECK ADD CHECK  (([Status]=(1) OR [Status]=(0) OR [Status]=(-1)))
GO
ALTER TABLE [dbo].[ModelAccount]  WITH CHECK ADD CHECK  (([boStatus]=(1) OR [boStatus]=(0)))
GO
ALTER TABLE [dbo].[ModelAccount]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[ModelAccount]  WITH CHECK ADD CHECK  ((len([ID_Account])<>(0)))
GO
ALTER TABLE [dbo].[ModelAccount]  WITH CHECK ADD CHECK  (([siLevel]>=(1)))
GO
ALTER TABLE [dbo].[ModelAccountType]  WITH CHECK ADD CHECK  ((len([ID_Account])<>(0)))
GO
ALTER TABLE [dbo].[ModelAccountType]  WITH CHECK ADD CHECK  ((len([ID_TypeEntity])<>(0)))
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD CHECK  ((len([IDCity])>(0)))
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD CHECK  ((len([IDCountry])>(0)))
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD CHECK  ((len([IDMunicipality])>(0)))
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD CHECK  ((len([IDState])>(0)))
GO
ALTER TABLE [dbo].[PriceIdx]  WITH CHECK ADD CHECK  (([siMonth]>=(1) AND [siMonth]<=(12)))
GO
ALTER TABLE [dbo].[PriceIdx]  WITH CHECK ADD CHECK  (([siYear]>=(1950) AND [siYear]<=(2020)))
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD CHECK  (([siMonth]>=(1) AND [siMonth]<=(12)))
GO
ALTER TABLE [dbo].[Rates]  WITH CHECK ADD CHECK  (([siYear]>=(1980) AND [siYear]<=(2025)))
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD CHECK  ((len([Descrip])<>(0)))
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD CHECK  ((len([IDCountry])>(0)))
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD CHECK  ((len([IDState])>(0)))
GO
ALTER TABLE [dbo].[UserMsg]  WITH CHECK ADD CHECK  ((len([IDFrom])>(0)))
GO
ALTER TABLE [dbo].[UserMsg]  WITH CHECK ADD CHECK  ((len([IDUser])>(0)))
GO
ALTER TABLE [dbo].[UserMsg]  WITH CHECK ADD CHECK  (([Status]=(2) OR [Status]=(1) OR [Status]=(0)))
GO
