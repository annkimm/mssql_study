SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,LOWER(USERNICKNAME) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- LOWER(USERNICKNAME)
  -- 텍스트를 소문자로 출력이 가능

  SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,UPPER(USERNICKNAME) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- UPPER(USERNICKNAME)
  -- 텍스트를 대문자로 출력이 가능

  SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,CONCAT(USERNICKNAME, USERID) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- CONCAT(USERNICKNAME, USERID)
  -- 텍스트를 USERNICKNAME와 USERID의 값을 mDsEdSaaa1로 출력이 가능
  -- concat을 사용하지 않고 그냥 더했을 떄 값중에 하나라도 null이 있다면 더했을 때 null 값이 도출되지만, concat은 null을 빼고 더한 값을 출력

  
  SELECT TOP (1000) [USERNO]
      ,[USERPW]
      ,REPLACE(USERID, 'a1', 'bc') as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- REPLACE(USERNICKNAME,'a1', 'bc') -> 컬럼, 찾을 문자, 바꿀 문자
  -- 기존의 값에서 다른 값으로 변환해서 출력

  SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,SUBSTRING(USERNICKNAME, 1,3) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- SUBSTRING(USERNICKNAME, 1,3) -> 컬럼, 시작점, 마지막지점
  -- 문자를 잘라서 출력

  SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,LEN(USERNICKNAME) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- SUBSTRING(USERNICKNAME)
  -- 문자열 길이 출력

  SELECT TOP (1000) [USERNO]
      ,LTRIM(USERID)
      ,[USERPW]
      ,LEN(USERNICKNAME) as NICKNAME
  FROM [MYDB1].[dbo].[USERTABLE]

  -- LTRIM(USERNICKNAME), RTRIM(USERNICKNAME)
  -- 왼쪽 공백 제거, 오른쪽 공백 제가

  SELECT FLOOR(153.666)

  -- FLOOR(숫자)
  -- 소숫점 첫번째 이하부터 내림

  SELECT ROUND(153.666666,3, 0)

  -- ROUND(숫자)
  -- 3번째 자리에서 숫자를 반올림
  -- ROUND(153.666666,3,1) 숫자를 자르고 무조거 반올림하여 나머지는 0으로 표시,   -- ROUND(153.666666,3,0) 숫자를 무조건 내리고 나머지 숫자는 자르고 0으로 표시

SELECT DATEADD(YEAR, 3, getdate())
-- 현재 년도보다 3년 추가하여 연산하여 출력
SELECT DATEADD(YEAR, -3, getdate())
-- 현재 년도보다 3년 빼서 출력
SELECT DATEADD(MONTH, 3, getdate())
-- 현재 해당 달보다 3달 추가해서 출력
SELECT DATEADD(DAY, 30, getdate())
-- 현재 해당 날짜보다 30일 추가해서 출력
SELECT DATEADD(HOUR, 5, getdate())
-- 현재 해당 시간보다 5시간 추가해서 출력
SELECT DATEADD(MINUTE, 20, getdate())
-- 현재 해당 시간보다 20분 추가해서 출력
SELECT DATEADD(SECOND, 20, getdate())
-- 현재 해당 시간보다 20초 추가해서 출력

SELECT TOP (1000) [USERNO]
      ,[USERID]
      ,[USERPW]
      ,ISNULL(USERNICKNAME, '-1')
  FROM [MYDB1].[dbo].[USERTABLE]

  -- ISNULL(USERNICKNAME, '-1') -> 컬럼, 출력할 데이터
  -- 데이터가 NULL일 경우 대신에서 출력할 수 있는 데이터
  -- 대신할 데이터는 대신에 해당 컬럼 데이터 타입에 맞는걸로 사용해야한다
  -- 해당 컬럼은 문자를 쓰고 있는데 숫자를 쓰지 못함. 쓰면 에러남