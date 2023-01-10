create view vd_MachineInformation as
select RID, MachineName + '.' +  Domain as FullName, IPAddress, OSType,
	case
		when SystemFamily is null then 'VM'
		when SystemFamily = 'Virtual Machine' then 'VM'
		else 'Physical' end as [MachineType],
	Manufacturer, SystemFamily, BIOSName, BIOSVersion
from RAWData