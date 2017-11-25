
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[GetAllTickets]
	@eventId int
AS
BEGIN
	SET NOCOUNT ON;

	select * from ticket.Tickets 
	where 
		EventId = @eventId 

END