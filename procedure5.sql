-- 변수 선언
DECLARE @userCount int

-- TODO: Set parameter values here.

EXECUTE USER_SELECT
   N'홍길동'
  ,@userCount OUTPUT

-- 변수 값 select로 확인
SELECT @userCount

