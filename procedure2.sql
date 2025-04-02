-- 웹사이트 사용자, 응용 프록램 사용자가 프로시져를 호출하지 않고, 개발자가 호출하고, 사용자가 입력한 값을 호출
-- 파라미터는 원하는 걸로
CREATE PROCEDURE USER_INSERT
        @userName NVARCHAR(40),
        @phone NVARCHAR(40),
        @address NVARCHAR(200)

AS
BEGIN
-- 영향받는 행을 세지 않도록 해서 실행 속도를 높여줌
SET NOCOUNT ON

INSERT INTO [MYDB1].[dbo].[TBL_USER]
(
		 [USERNO]
		,[USERNAME]
		,[PHONENUMBER]
		,[ADDRESSINFO]
)
VALUES
(
		NEXT VALUE FOR USERSEQ,
		@userName,
		@phone,
		@address
)

SELECT * FROM [MYDB1].[dbo].[TBL_USER](NOLOCK)

END