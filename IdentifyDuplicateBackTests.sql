SELECT COUNT(*), TestDateFrom, BBox, RunType, CONVERT(date, RunDateStart) As 'RunDate' FROM [PrimusGroup].[dbo].[PrmsBlotter]
WHERE RunType = 'Backtesting' 
GROUP BY  TestDateFrom, BBox, RunType, CONVERT(date, RunDateStart)
HAVING COUNT(*) > 1
