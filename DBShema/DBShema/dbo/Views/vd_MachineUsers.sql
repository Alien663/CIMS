CREATE view [dbo].[vd_MachineUsers] as
select R.RID, R.MachineName, F.[Group],
	REPLACE(F.Account, '\\', '\') as [Account],
	iif(CHARINDEX('QUANTA', F.Account) > 0, 1, 0) as isDomain,
	case F.isActive
		when 'Yes' then 1
		when 'No' then 0
	end as [isActive]
from RAWData R
	cross apply openjson(R.Users) with
	(
		Account varchar(64) '$.Name',
		[Group] varchar(64) '$.Group',
		isActive varchar(4) '$.isActive'
	) F