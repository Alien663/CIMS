create view vd_MachineVolumes as
select R.RID, R.MachineName, F.*
from RAWData R
	cross apply openjson(R.Volume) with
	(
		Driver varchar(4) '$.Driver',
		Remaining decimal(20, 18) '$.SizeRemaining'
	) F