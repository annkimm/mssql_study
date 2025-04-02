CREATE PROCEDURE USER_SELECT
        @userName NVARCHAR(40),
        @userCount INT OUTPUT

AS
BEGIN
-- 영향받는 행을 세지 않도록 해서 실행 속도를 높여줌
SET NOCOUNT ON

SELECT * FROM TBL_USER with(NOLOCK) WHERE USERNAME = @userName 

SELECT @userCount = COUNT(*) FROM TBL_USER with(NOLOCK)

END
GO
