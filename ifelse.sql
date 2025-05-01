-- IF문 CASE문
-- 장바구니 물건 담기
-- 글쓰기 요청이나 회원정보요청시 조건문 처리
-- IF(조건)  BEGIN END
-- IF(조건) BEGIN 처리 END ELSE, ELSE IF 처리 END

DECLARE @check INT;
SET @check = 399;

-- SUM이나 AVG 등으로 합계나 평균을 내서 비교 가능
-- COUNT(*) 로 리스트의 길이로 비교도 가능
IF (SELECT SUM(PRICE) FROM TBL_ORDER) >= 100
BEGIN
    SELECT 'AAA';
    SELECT * FROM TBL_ORDER;
    -- 조건식이 맞으면 UPDATE나 DELETE 가능
END
ELSE IF @check = 99
BEGIN
    SELECT 'CCC'
END
ELSE
BEGIN
    SELECT 'BBB'
END