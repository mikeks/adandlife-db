

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveWebsiteNewspaper]
	@newspaperType tinyint,
	@year int,
	@number tinyint,
	@url varchar(500)
AS
BEGIN
	SET NOCOUNT ON;

	--update WebsiteNewspapers
	--set 
	--	[Url] = @url
	--where 
	--	NewspaperType = @newspaperType and [Year] = @year and Number = @number

	--if @@ROWCOUNT = 0
		INSERT INTO WebsiteNewspapers
				   (NewspaperType,
				   [Year],
				   Number,
				   [Url]
				   )
			 VALUES
		  (
					@newspaperType,
					@year,
					@number,
					@url
			)
		   
END