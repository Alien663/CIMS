
CREATE view [dbo].[vd_MachineVolumes] as
select R.RID, R.MachineName, F.Driver, convert(varchar(10), Round(convert(decimal(5, 2) , F.Remaining * 100 ), 2)) + '%' as RemainingRate
from RAWData R
	cross apply openjson(R.Volume) with
	(
		Driver varchar(4) '$.Driver',
		Remaining decimal(20, 18) '$.SizeRemaining'
	) F