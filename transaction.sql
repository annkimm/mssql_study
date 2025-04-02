-- 계좌로 업데이트나 insert문 할 때 사용
BEGIN TRAN

UPDATE dbo.USERTABLE
SET USERPW = 'ㅇㅇㅇㅇ'
WHERE USERNO = 4

--COMMIT TRAN

ROLLBACK TRAN -- 작업이 정상적으로 처리되지 않은 경우
-- begin tran 후에 commit tran이나 rollback tran을 처리해주지 않으면
-- lock이 걸리면서 다른 개발자가 접근 불가 -> 동시성 제어가 가능, 즉 도중에 데이터가 제어되지 않도록 무결성을 유지할 있음

SELECT * FROM dbo.USERTABLE
-- begin 안에 있을 경우 (norock)이라는 키워드를 걸어서 select문이 조회가 가능하도록 조치