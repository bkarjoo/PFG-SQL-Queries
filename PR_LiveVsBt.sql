SELECT 
A.BBox, A.Gross as 'LGross', B.Gross as 'BTGross', A.Shares as 'LShrs', B.Shares as 'BTShrs', 
A.CPS as 'LCPS', B.CPS as 'BTCPS'  FROM
(SELECT 
      [BBox]
      ,CONVERT(DECIMAL(10,0),SUM(GrossPnL)) AS 'Gross'
      ,SUM(SharesTraded) AS 'Shares'
      ,CONVERT(DECIMAL(10,2),CASE WHEN SUM(SharesTraded) > 0 THEN SUM(GrossPnL)/SUM(SharesTraded)
		ELSE 0 END) AS 'CPS'
  FROM [PrimusGroup].[dbo].[PrmsBlotter]
  WHERE [RunType] = 'Live' 
  GROUP BY [BBox]) As A
  ,
  (SELECT 
      [BBox]
      ,CONVERT(DECIMAL(10,0),SUM(GrossPnL)) AS 'Gross'
      ,SUM(SharesTraded) AS 'Shares'
      ,CONVERT(DECIMAL(10,2),CASE WHEN SUM(SharesTraded) > 0 THEN SUM(GrossPnL)/SUM(SharesTraded)
		ELSE 0 END) AS 'CPS'
  FROM [PrimusGroup].[dbo].[PrmsBlotter]
  WHERE [RunType] = 'Backtesting' 
  GROUP BY [BBox]) AS B
  WHERE A.BBox = B.BBox
