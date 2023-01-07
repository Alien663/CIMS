create view vd_MachineUsers as
select R.RID, R.MachineName, F.*
from RAWData R
	cross apply openjson(R.Users) with
	(
		Account varchar(64) '$.Name',
		[Group] varchar(64) '$.Group',
		isActive varchar(4) '$.isActive'
	) F