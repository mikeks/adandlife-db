-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [ticket].[CompeteSellingTransaction]
	@transactionId int,
	@transactionCode varchar(50),
	@redeemCode varchar(10) 
AS
BEGIN
	SET NOCOUNT ON;

	declare @dt datetime
	set @dt = GETDATE()

	update SellTransaction
	set 
		RedeemCode = @redeemCode,
		TransactionCode = @transactionCode,
		PurchaseDate = @dt
	where Id = @transactionId 

	update Tickets 
	set PurchaseDate = @dt
	where TransactionId = @transactionId

END