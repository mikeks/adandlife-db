-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ticket.LogTransaction
	@data nvarchar(1000)
AS
BEGIN
	SET NOCOUNT ON;

	insert ticket.TransactionLog (TransactionData)
	values (@data)

END