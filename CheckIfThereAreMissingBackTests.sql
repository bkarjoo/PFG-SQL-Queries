select 
    t.BBox
  , convert(date, t.RunDateStart) as dd
from [PrimusGroup].[dbo].[PrmsBlotter] t
where t.RunType = 'Live'
  and not exists (
    select 1
    from [PrimusGroup].[dbo].[PrmsBlotter] i
    where i.RunType = 'Backtesting'
      and i.BBox = t.BBox
      and convert(date,i.TestDateFrom) = convert(date,t.RunDateStart)
      ) ORDER BY dd
