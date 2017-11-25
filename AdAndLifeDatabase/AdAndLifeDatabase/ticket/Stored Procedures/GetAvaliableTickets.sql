-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[GetAvaliableTickets]
	@eventId int
AS
BEGIN
	SET NOCOUNT ON;

	select * from ticket.Tickets 
	where 
		EventId = @eventId 
		and (LockedUntil is null or LockedUntil < GETDATE())
		and PurchaseDate is null

END