-- -------------------------------------------------------------------------------------------------
-- Tables
-- -------------------------------------------------------------------------------------------------
CREATE TABLE [dbo].[RSSVDevice](
	[CompanyID] [int] NOT NULL,
	[DeviceID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceCD] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Active] [bit] NOT NULL,
	[AvgComplexityOfRepair] [char](1) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVDevice_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVDeviceKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVDeviceKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVDeviceKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVEmployeeWorkOrderQty]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVEmployeeWorkOrderQty](
	[CompanyID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[NbrOfAssignedOrders] [int] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [RSSVEmployeeWorkOrderQty_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVLabor]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVLabor](
	[CompanyID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[InventoryID] [int] NOT NULL,
	[DefaultPrice] [decimal](19, 6) NOT NULL,
	[Quantity] [decimal](19, 6) NOT NULL,
	[ExtPrice] [decimal](19, 6) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVLabor_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ServiceID] ASC,
	[DeviceID] ASC,
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVLaborKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVLaborKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVLaborKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairItem]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairItem](
	[CompanyID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[LineNbr] [int] NOT NULL,
	[RepairItemType] [char](2) NULL,
	[InventoryID] [int] NOT NULL,
	[Required] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[BasePrice] [decimal](19, 6) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVRepairItem_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ServiceID] ASC,
	[DeviceID] ASC,
	[LineNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairItemKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairItemKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVRepairItemKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairPrice]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairPrice](
	[CompanyID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[Price] [decimal](19, 6) NOT NULL,
	[RepairItemLineCntr] [int] NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVRepairPrice_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ServiceID] ASC,
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairPriceKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairPriceKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVRepairPriceKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairService]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairService](
	[CompanyID] [int] NOT NULL,
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCD] [nvarchar](15) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[WalkInService] [bit] NOT NULL,
	[PreliminaryCheck] [bit] NOT NULL,
	[Prepayment] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RSSVRepairService] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVRepairServiceKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVRepairServiceKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVRepairServiceKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVSetup]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVSetup](
	[CompanyID] [int] NOT NULL,
	[NumberingID] [nvarchar](10) NOT NULL,
	[WalkInCustomerID] [int] NOT NULL,
	[DefaultEmployee] [int] NOT NULL,
	[PrepaymentPercent] [decimal](9, 6) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVSetup_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVSetupKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVSetupKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVSetupKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVStockItemDevice]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVStockItemDevice](
	[CompanyID] [int] NOT NULL,
	[InventoryID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVStockItemDevice_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[InventoryID] ASC,
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVStockItemDeviceKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVStockItemDeviceKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVStockItemDeviceKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWarranty]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWarranty](
	[CompanyID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[ContractID] [int] NOT NULL,
	[DefaultWarranty] [bit] NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVWarranty_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[ServiceID] ASC,
	[DeviceID] ASC,
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWarrantyKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWarrantyKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVWarrantyKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrder]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrder](
	[CompanyID] [int] NOT NULL,
	[OrderNbr] [nvarchar](15) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DateCreated] [datetime2](0) NOT NULL,
	[DateCompleted] [datetime2](0) NULL,
	[Status] [char](2) NOT NULL,
	[Hold] [bit] NOT NULL,
	[Description] [nvarchar](60) NULL,
	[ServiceID] [int] NOT NULL,
	[DeviceID] [int] NOT NULL,
	[OrderTotal] [decimal](19, 4) NOT NULL,
	[RepairItemLineCntr] [int] NOT NULL,
	[Assignee] [int] NULL,
	[Priority] [char](1) NULL,
	[InvoiceNbr] [nvarchar](15) NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
	[UsrOrderType] [nvarchar](2) NULL,
 CONSTRAINT [RSSVWorkOrder_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[OrderNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrderItem]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrderItem](
	[CompanyID] [int] NOT NULL,
	[OrderNbr] [nvarchar](15) NOT NULL,
	[LineNbr] [int] NOT NULL,
	[RepairItemType] [char](2) NULL,
	[InventoryID] [int] NOT NULL,
	[BasePrice] [decimal](19, 6) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVWorkOrderItem_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[OrderNbr] ASC,
	[LineNbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrderItemKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrderItemKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVWorkOrderItemKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrderKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrderKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVWorkOrderKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrderLabor]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrderLabor](
	[CompanyID] [int] NOT NULL,
	[OrderNbr] [nvarchar](15) NOT NULL,
	[InventoryID] [int] NOT NULL,
	[DefaultPrice] [decimal](19, 6) NOT NULL,
	[Quantity] [decimal](19, 6) NOT NULL,
	[ExtPrice] [decimal](19, 6) NOT NULL,
	[CreatedByID] [uniqueidentifier] NOT NULL,
	[CreatedByScreenID] [char](8) NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[LastModifiedByID] [uniqueidentifier] NOT NULL,
	[LastModifiedByScreenID] [char](8) NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
	[tstamp] [timestamp] NOT NULL,
	[NoteID] [uniqueidentifier] NULL,
 CONSTRAINT [RSSVWorkOrderLabor_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[OrderNbr] ASC,
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RSSVWorkOrderLaborKvExt]    Script Date: 18/06/2024 7:38:42 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RSSVWorkOrderLaborKvExt](
	[CompanyID] [int] NOT NULL,
	[RecordID] [uniqueidentifier] NOT NULL,
	[FieldName] [varchar](50) NOT NULL,
	[ValueNumeric] [decimal](28, 8) NULL,
	[ValueDate] [datetime] NULL,
	[ValueString] [nvarchar](256) NULL,
	[ValueText] [nvarchar](max) NULL,
 CONSTRAINT [RSSVWorkOrderLaborKvExt_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[RecordID] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[RSSVDevice] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVDeviceKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVEmployeeWorkOrderQty] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVLabor] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVLaborKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairItem] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairItemKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairPrice] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairPriceKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairService] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVRepairServiceKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVSetup] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVSetupKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVStockItemDevice] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVStockItemDeviceKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWarranty] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWarrantyKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrder] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrderItem] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrderItemKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrderKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrderLabor] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
ALTER TABLE [dbo].[RSSVWorkOrderLaborKvExt] ADD  DEFAULT ((0)) FOR [CompanyID]
GO

