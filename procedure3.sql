DECLARE @RC int
DECLARE @userName nvarchar(40)
DECLARE @phone nvarchar(40)
DECLARE @address nvarchar(200)

-- TODO: Set parameter values here.

EXECUTE [dbo].[USER_INSERT] 
   N'고우당'
  ,'01033332222'
  ,N'서울 특별시 동작구 보라매동'
GO