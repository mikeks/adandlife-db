﻿


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[SaveSaleEvent]
(
	@id int = null,
	@locationId int,
	@eventName nvarchar(250),
	@eventNameEng varchar(100),
	@eventDescription nvarchar(max),
	@eventImage varchar(100),
	@eventDate smalldatetime,
	@urlName varchar(100),
	@isAvaliable bit,
	@ourShare tinyint
)
AS
BEGIN

	SET NOCOUNT ON;

	if @id is null
	begin
		insert SaleEvent ( 
			LocationId,
			EventName,
			EventDescription,
			IsAvaliable,
			UrlName,
			EventNameEng,
			EventImage,
			EventDate,
			OurShare
		)
		values (
			@locationId,
			@eventName,
			@eventDescription,
			@isAvaliable,
			@urlName,
			@eventNameEng,
			@eventImage,
			@eventDate,
			@ourShare
		)

		set @id = SCOPE_IDENTITY()

	end
	else
		update SaleEvent
		set 
			LocationId = @locationId,
			EventName = @eventName,
			EventDescription = @eventDescription,
			IsAvaliable = @isAvaliable,
			UrlName = @urlName,
			EventNameEng = @eventNameEng,
			EventImage = @eventImage,
			EventDate = @eventDate,
			OurShare = @ourShare
		where id = @id

END