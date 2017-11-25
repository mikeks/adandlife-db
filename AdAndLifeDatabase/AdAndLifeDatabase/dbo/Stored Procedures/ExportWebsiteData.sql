/****** Script for SelectTopNRows command from SSMS  ******/

create procedure [dbo].[ExportWebsiteData]
as

delete [AAL-Site].[dbo].[TicketsSale]

set IDENTITY_INSERT [AAL-Site].[dbo].[TicketsSale] ON

insert [AAL-Site].[dbo].[TicketsSale] (
	   [Id]
      ,[Created]
      ,[EventName]
      ,[EventDescription]
      ,[PaypalButtonCode]
      ,[IsAvaliable]
      ,[UrlName]
)
SELECT [Id]
      ,[Created]
      ,[EventName]
      ,[EventDescription]
      ,[PaypalButtonCode]
      ,[IsAvaliable]
      ,[UrlName]
  FROM [AAL-Philadelphia].[dbo].[TicketsSale]

set IDENTITY_INSERT [AAL-Site].[dbo].[TicketsSale] OFF


delete [AAL-Site].[dbo].[WebsiteArticle]

set IDENTITY_INSERT [AAL-Site].[dbo].[WebsiteArticle] ON

insert [AAL-Site].[dbo].[WebsiteArticle] (
	   [Id]
      ,[Name]
      ,[Txt]
)
SELECT [Id]
      ,[Name]
      ,[Txt]
  FROM [AAL-Philadelphia].[dbo].[WebsiteArticle]

set IDENTITY_INSERT [AAL-Site].[dbo].[WebsiteArticle] OFF



delete [AAL-Site].[dbo].[WebsiteNewspapers]

set IDENTITY_INSERT [AAL-Site].[dbo].[WebsiteNewspapers] ON

insert [AAL-Site].[dbo].[WebsiteNewspapers] (
	   [NewspaperType]
      ,[Year]
      ,[Number]
      ,[Url]
      ,[Id]
)
SELECT [NewspaperType]
      ,[Year]
      ,[Number]
      ,[Url]
      ,[Id]
  FROM [AAL-Philadelphia].[dbo].[WebsiteNewspapers]

set IDENTITY_INSERT [AAL-Site].[dbo].[WebsiteNewspapers] OFF