-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE DoLogin
	@userName varchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * from AdminLogin where Username = @userName
END