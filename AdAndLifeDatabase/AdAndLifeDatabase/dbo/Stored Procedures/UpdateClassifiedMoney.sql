-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UpdateClassifiedMoney
AS
BEGIN
	SET NOCOUNT ON;

	insert ClassifiedMoney (PhilaId, BaltimoreId, AdText, Price, AdCreated, AdExpirationDate)
	SELECT Id, null, AdText, WebsitePromitionPrice, clasTimestamp, WebsitePromotionExpirationDate
	from ClassifiedAd c
	where WebsitePromitionPrice is not null and WebsitePromitionPrice > 0 and
	  not exists(select 1 from ClassifiedMoney where PhilaId = c.Id)

	insert ClassifiedMoney (PhilaId, BaltimoreId, AdText, Price, AdCreated, AdExpirationDate)
	SELECT null, Id, AdText, WebsitePromitionPrice, clasTimestamp, WebsitePromotionExpirationDate
	from ClassifiedAdBaltimore c
	where WebsitePromitionPrice is not null and WebsitePromitionPrice > 0 and
	  not exists(select 1 from ClassifiedMoney where BaltimoreId = c.Id)

END