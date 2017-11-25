

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveWebsiteArticle]
(
	@id int = null,
	@name nvarchar(500),
	@txt nvarchar(max)
	--@imageName nvarchar(100),
	--@imageData varbinary(max)
)
AS
BEGIN

	SET NOCOUNT ON;

	if @id is null
	begin
		insert WebsiteArticle ( 
			Name,
			Txt
		)
		values (
			@name,
			@txt
		)

		set @id = SCOPE_IDENTITY()

	end
	else
		update WebsiteArticle
		set 
			Name = @name
			,Txt = @txt
		where id = @id

	--if @imageName is not null
	--begin

	--	declare @baseName nvarchar(100) = @imageName
	--	declare @i int = 0

	--	while exists(select 1 from WebsteImage where Name = @imageName)
	--	begin
	--		set @i = @i +1
	--		set @imageName = @baseName + cast(@i as varchar(3))
	--	end

	--	insert WebsiteImage ([Data], Name, ArticleId) values (@imageData, @imageName, @id)

	--end

END