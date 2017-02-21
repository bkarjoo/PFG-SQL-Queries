DELETE FROM [PrimusGroup].[dbo].[PrmsBlotter]
WHERE ID IN (SELECT MAX(ID) FROM [PrimusGroup].[dbo].[PrmsBlotter]
GROUP BY RunID 
HAVING COUNT(*) > 1)
