SELECT COUNT(*) FROM [PrimusGroup].[dbo].[PrmsBlotter]
GROUP BY RunID 
HAVING COUNT(*) > 
