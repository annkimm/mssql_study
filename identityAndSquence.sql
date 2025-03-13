-- Identity
-- product number, user number를 자동으로 채워주기 위함
-- Identity(시작번호, 증가할 숫자)로 설정
-- 중간에 값이 빌 경우, 빈 번호를 채울 가능성이 존재, 치명적인 오류 발생
-- 차라리 sequence 사용 권장
-- 혹은 프로시저에서 값 조회해서 insert 사용하여 값을 검증

-- Squence
-- Identity와는 다르게 무조건 다음 값을 삽입

CREATE SEQUENCE PRODUCTSEQ
AS int -- int형
START WITH 0 -- 시작값
INCREMENT BY 1       -- 증가값
MINVALUE 0 -- 최소값 -값도 가능
MAXVALUE 2147483647  -- 최대값
NO CYCLE -- 비순환, 최대값으로 갔을 경우: 다시 시작값으로 되돌아가지 않도록 한 것

INSERT INTO PRODUCT
(
PRODUCTNO,
PRODUCTNAME,
MAKEDAY,
PRICE,
PRODUCTINFO
)
VALUES
(
NEXT VALUE FOR PRODUCTSEQ, -- NEXT VALUE FOR 시퀀스이름
'ABCDEE',
getdate(),
500,
'aaa'
);