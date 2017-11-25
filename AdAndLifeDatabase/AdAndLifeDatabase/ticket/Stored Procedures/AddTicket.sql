
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[AddTicket]
	@eventId int,
	@price money,
	@seat varchar(7)
AS
BEGIN
	SET NOCOUNT ON;

	declare @ttid int
	select @ttid = Id 
	from TicketType
	where EventId = @eventId and Price = @price

	if @ttid is null
	begin
		insert TicketType (EventId, Price) 
		values (@eventId, @price)

		set @ttid = SCOPE_IDENTITY()
	end

	insert Tickets (EventId, TicketTypeId, Seat)
	values (@eventId, @ttid, @seat)


END