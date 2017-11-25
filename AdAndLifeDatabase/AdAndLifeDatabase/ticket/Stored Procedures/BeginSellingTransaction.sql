-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[BeginSellingTransaction]
	@eventId int,
	@name nvarchar(100),
	@email varchar(250),
	@userRefferer varchar(70) = null,
	@subscribe bit = 0,
	@seats Seat readonly
AS
BEGIN
	SET NOCOUNT ON;

	declare @transactionId int
	insert ticket.SellTransaction ([Name], Email, UserRefferer, EventId, Subscribe) values (@name, @email, @userRefferer, @eventId, @subscribe)
	set @transactionId = SCOPE_IDENTITY()

	if exists(
		select 1 
		from Tickets 
		where EventId = @eventId and Seat in (select Seat from @seats)
			and LockedUntil > GETDATE()
		)
			RAISERROR ('Already locked', 11, 1)

	update ticket.Tickets 
	set 
		LockedUntil = DATEADD(MINUTE, 5, GETDATE()),
		TransactionId = @transactionId
	where EventId = @eventId and Seat in (select Seat from @seats)

	select @transactionId as Id
END