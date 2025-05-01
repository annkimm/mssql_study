-- CASE 문
-- 조건에 따라서 데이터를 다르게 획득 가능
-- CASE WHEN THEN  ELSE END

SELECT [USERNO]
      ,[PRODUCTNAME]
      ,[PRODUCTNUM]
      ,[PRICE],
      CASE PRICE WHEN 1000 THEN N'SSS 손님'
                WHEN 2000 THEN N'SS 손님'
                WHEN 6000 THEN N'일반 손님'
                ELSE N'손님'
        END AS CUSTOMER
  FROM TBL_ORDER

  SELECT [USERNO]
      ,[PRODUCTNAME]
      ,[PRODUCTNUM]
      ,[PRICE],
      CASE WHEN PRICE<1500 THEN N'일반 손님'
            WHEN PRICE > 1500 AND PRICE < 3000 THEN N'A 손님'
            WHEN PRICE > 5000 THEN N'S 손님'
            ELSE N'손님'
        END AS CUSTOMER
  FROM TBL_ORDER

