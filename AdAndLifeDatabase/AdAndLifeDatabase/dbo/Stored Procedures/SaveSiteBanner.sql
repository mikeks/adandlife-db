


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.[SaveSiteBanner]
(
	@id int = null,
	@name nvarchar(100),
	@imageFilename varchar(80),
	@positionRight tinyint,
	@positionHomepage tinyint,
	@price money,
	@endDate date
)
AS
BEGIN

	SET NOCOUNT ON;

	if @id is null
	begin
		insert SiteBanner ( 
			[Name],
			ImageFilename,
			PositionRight,
			PositionHomepage,
			Price,
			EndDate
		)
		values (
			@name,
			@imageFilename,
			@positionRight,
			@positionHomepage,
			@price,
			@endDate
		)

		set @id = SCOPE_IDENTITY()

	end
	else
		update SiteBanner
		set 
			[Name] = @name,
			ImageFilename = @imageFilename,
			PositionRight = @positionRight,
			PositionHomepage = @positionHomepage,
			Price = @price,
			EndDate = @endDate
		where id = @id

	if @positionRight != 0
		update sb
		set 
			PositionRight = PositionRight + 1
		from SiteBanner sb
		where 
			id != @id 
			and PositionRight >= @positionRight

	if @positionHomepage != 0
		update sb
		set 
			PositionHomepage = PositionHomepage + 1
		from SiteBanner sb
		where 
			id != @id 
			and PositionHomepage >= @positionHomepage


	-- normalization
	update sb
	set 
		PositionHomepage = sb.pos
	from (
		select *, 
			ROW_NUMBER() over (order by PositionHomepage) pos 
		from SiteBanner
		where PositionHomepage != 0
	) sb
	
	update sb
	set 
		PositionRight = sb.pos
	from (
		select *, 
			ROW_NUMBER() over (order by PositionRight) pos 
		from SiteBanner
		where PositionRight != 0
	) sb


END