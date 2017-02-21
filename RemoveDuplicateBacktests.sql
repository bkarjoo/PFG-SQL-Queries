DELETE FROM [PrimusGroup].[dbo].[PrmsBlotter]
WHERE ID IN (SELECT MAX(ID) FROM [PrimusGroup].[dbo].[PrmsBlotter]
WHERE RunType = 'Backtesting' 
GROUP BY  TestDateFrom, BBox
HAVING COUNT(*) > 1)
