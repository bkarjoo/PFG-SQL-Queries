INSERT INTO [PrimusGroup].[dbo].[PrmsBlotter]
(BBox,RunDateStart,RunType,TestDateFrom,TestDateTo,GrossPnL,NetPnL,CPS,SharesTraded,
MaxExposure,PercentageWinners,NumberWinners,NumberLosers,TimeFrame,RunID,GrossCommission,
ECNFee,SECFee,TAFFee)
SELECT 
F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,
F11,F12,F13,F14,F15,F16,F17,F18,F19 FROM [PrimusGroup].[dbo].[Sheet1$]
