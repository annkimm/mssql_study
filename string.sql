CREATE TABLE USERTABLE
(
    USERNO INT,
    USERID VARCHAR(20),
    USERPW VARCHAR(40),
    USERNICKNAME VARCHAR(40)
)

-- VARCHAR은 가변적 문열을 저장해서 공간을 효율적으로 사용
-- CHAR은 고정된 문자열 길이를 사용해서 길이를 20으로 지정하면 입력한 문자열 제외하고 빈값을 저장 

INSERT INTO [MYDB1].[dbo].[USERTABLE]
(
    [USERNO]
    ,[USERID]
    ,[USERPW]
    ,[USERNICKNAME]
)
VALUES
(
		3
		,'aaa1'
		,'pw1234'
		,'김모모'
)

-- 한글 깨짐 현상이 발생
-- 열을 만들 때 타입으로 NVARCHAR을 선언해야 함
-- 왜냐면 VARCHAR은 영문 데이터와 테이블에 설정된 기본 언어 타입을 사용하고,
-- NVARCHAR은 유니코드를 지원을 위한 데이터형이기 때문
-- 게다가 한글 데이터를 저장시킬 때는 N'한글'같이 앞에 N을 붙여서 저장해서 한글 깨짐 현상을 방지할 수 있다.