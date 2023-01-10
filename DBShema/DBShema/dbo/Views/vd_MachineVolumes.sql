create   view vd_MachineVolumes as
select R.RID, R.MachineName, F.Driver, F.DriveType,
	iif(F.Size = 0, '',
		convert(varchar(10),
			Round( convert(decimal(5, 2) ,
				(F.Remaining/F.Size) * 100 ), 2)) + '%') as RemainingRate,
	convert(varchar(40),
		convert(decimal(10, 2),
			(F.Remaining)/1073741824)) + ' GB' as [RemainintSize]
from RAWData R
	cross apply openjson(R.Volume) with
	(
		Driver varchar(4) '$.Driver',
		Remaining decimal(15, 1) '$.SizeRemaining',
		Size decimal(15, 1) '$.Size',
		DriveType varchar(16) '$.DriveType'
	) F