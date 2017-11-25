/****** Script for SelectTopNRows command from SSMS  ******/

create procedure [dbo].[ExportClassified]
as

delete [AAL-Site].[dbo].[ClassifiedAd]

delete [AAL-Site].[dbo].[ClassifiedRubric]

set IDENTITY_INSERT [AAL-Site].[dbo].[ClassifiedRubric] ON

insert [AAL-Site].[dbo].[ClassifiedRubric] (
	   [Id]
      ,[Name]
      ,[ImageFilename]
      ,[Sort]
)
SELECT [Id]
      ,[Name]
      ,[ImageFilename]
      ,[Sort]
  FROM [AAL-Philadelphia].[dbo].[ClassifiedRubric]

set IDENTITY_INSERT [AAL-Site].[dbo].[ClassifiedRubric] OFF


set IDENTITY_INSERT [AAL-Site].[dbo].[ClassifiedAd] ON

insert [AAL-Site].[dbo].[ClassifiedAd] (
	   [Id]
      ,[Advertizer]
      ,[RubricId]
      ,[AdText]
      ,[IsBorder]
      ,[IsBold]
      ,[IsBackground]
      ,[IsCentered]
      ,[Info]
      ,[IsPaid]
      ,[PaymentMethod]
      ,[Price]
      ,[StartIssueNumber]
      ,[EndIssueNumber]
      ,[clasSM]
      ,[clasTimestamp]
      ,[StartIssueYear]
      ,[EndIssueYear]
)
SELECT [Id]
      ,[Advertizer]
      ,[RubricId]
      ,[AdText]
      ,[IsBorder]
      ,[IsBold]
      ,[IsBackground]
      ,[IsCentered]
      ,[Info]
      ,[IsPaid]
      ,[PaymentMethod]
      ,[Price]
      ,[StartIssueNumber]
      ,[EndIssueNumber]
      ,[clasSM]
      ,[clasTimestamp]
      ,[StartIssueYear]
      ,[EndIssueYear]
  FROM [AAL-Philadelphia].[dbo].[ClassifiedAd]

  set IDENTITY_INSERT [AAL-Site].[dbo].[ClassifiedAd] OFF