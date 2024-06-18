-- -------------------------------------------------------------------------------------------------
-- Tables
-- -------------------------------------------------------------------------------------------------
IF OBJECT_ID('dbo.RSSVEmployeeWorkOrderQty', 'U') IS NOT NULL

CREATE TABLE [dbo].[RSSVEmployeeWorkOrderQty](
	[CompanyID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[NbrOfAssignedOrders] [int] NOT NULL,
	[LastModifiedDateTime] [datetime] NOT NULL,
 CONSTRAINT [RSSVEmployeeWorkOrderQty_PK] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RSSVEmployeeWorkOrderQty] ADD  DEFAULT ((0)) FOR [CompanyID]
GO
