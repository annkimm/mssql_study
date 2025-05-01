DECLARE @RC int
DECLARE @INFO nvarchar(200)

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[RESULT_DAY_INSERT] 
   'AAA'
GO