
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[DeleteTicket]
	@eventId int,
	@seat varchar(7)
AS
BEGIN
	SET NOCOUNT ON;

	delete from Tickets
	where 
		EventId = @eventId 
		and Seat = @seat
		and (LockedUntil is null or LockedUntil < GETDATE())
		and PurchaseDate is null

END