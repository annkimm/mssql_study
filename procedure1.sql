-- 프로시저
-- query를 묶어서 저장할 수 있는 기능을 저장 프로시져로 제공
-- 재사용이 가능
-- 관련된을 묶어서 처리하기 때문에 유지보수나 관리하는데 편리
-- 여러 어플리케이션에서 공유 가능(자바, C#)

CREATE TABLE TBL_USER
(
USERNO INT,
USERNAME NVARCHAR(40),
PHONENUMBER NVARCHAR(40),
ADDRESSINFO NVARCHAR(2000)
PRIMARY KEY(USERNO)
);

CREATE SEQUENCE USERSEQ
AS int -- int형
START WITH 0 -- 시작값
INCREMENT BY 1       -- 증가값
MINVALUE 0 -- 최소값 -값도 가능
MAXVALUE 2147483647  -- 최대값
NO CYCLE; -- 비순환