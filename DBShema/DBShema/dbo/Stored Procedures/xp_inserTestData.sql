
CREATE   procedure [dbo].[xp_inserTestData] as begin
	declare @jdata varchar(max) = '[
{
    "Domain":  "quanta.corp",
    "BIOSVersion":  "VRTUAL - 5001818",
    "Manufacturer":  "Microsoft Corporation",
    "SystemFamily":  null,
    "IPAddress":  "10.243.29.31",
    "Users":  [
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\iof",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\iofgds1",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\iofgds2",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10611031",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA11107063",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA93110110",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA95110112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SvrMgmt",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\tdsadmin",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSAP31\\Administrator",
                      "isActive":  "No"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSAP31\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSAP31\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSAP31\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10508075",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10509050",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10611001",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10707058",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10810141",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10903011",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10903104",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10905117",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10907055",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10907097",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10908149",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10911144",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11006064",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11007136",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11008120",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11009016",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11009017",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11009018",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11009104",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev11109105",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev96052112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev99110101",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10508075",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10509050",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10611001",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10707058",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10810141",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10903011",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10903104",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10905117",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10907055",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10907097",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10908149",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev10911144",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11006064",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11007136",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11008120",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11009016",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11009017",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11009018",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11009104",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev11109105",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev96052112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\dev99110101",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\Domain Users",
                      "isActive":  "Yes"
                  }
              ],
    "BIOSName":  "BIOS Date: 05/18/18 15:55:38  Ver: 09.00.07",
    "MachineName":  "tdsap31",
    "OSType":  "Microsoft Windows Server 2019 Standard",
    "Volume":  [
                   {
                       "Driver":  "D",
                       "SizeRemaining":  0.88259413601676218
                   },
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.76417855605300544
                   }
               ]
}
,
{
    "Domain":  "quanta.corp",
    "BIOSVersion":  "ALASKA - 1072009",
    "Manufacturer":  "Quanta",
    "SystemFamily":  "To be filled by O.E.M.",
    "IPAddress":  "10.243.28.70",
    "Users":  [
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\iof",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10611031",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA11107063",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA93110110",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA95110112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SvrMgmt",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\tdsadmin",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSHV05\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSHV05\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSHV05\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "TDSHV05\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\Domain Users",
                      "isActive":  "Yes"
                  }
              ],
    "BIOSName":  "BIOS Date: 06/16/14 14:18:40 Ver: 04.06.05",
    "MachineName":  "TDSHV05",
    "OSType":  "Microsoft Windows Server 2019 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.77869459840737842
                   },
                   {
                       "Driver":  "D",
                       "SizeRemaining":  0.32910000623068469
                   }
               ]
}
,
{
    "Domain":  "quanta.corp",
    "BIOSVersion":  "VRTUAL - 1",
    "Manufacturer":  "Microsoft Corporation",
    "SystemFamily":  "Virtual Machine",
    "IPAddress":  "10.243.28.225",
    "Users":  [
                  {
                      "Group":  "Administrators",
                      "Name":  "GLTDSDEVOPS\\Administrator",
                      "isActive":  "No"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLTDSDEVOPS\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLTDSDEVOPS\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLTDSDEVOPS\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10611031",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA11107063",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA93110110",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA95110112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SvrMgmt",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\tdsadmin",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\Domain Users",
                      "isActive":  "Yes"
                  }
              ],
    "BIOSName":  "Hyper-V UEFI Release v4.0",
    "MachineName":  "GLTDSDEVOPS",
    "OSType":  "Microsoft Windows Server 2022 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.30160715161715151
                   }
               ]
}
,
{
    "Domain":  "quanta.corp",
    "BIOSVersion":  "VRTUAL - 1",
    "Manufacturer":  "Microsoft Corporation",
    "SystemFamily":  "Virtual Machine",
    "IPAddress":  "10.243.29.109",
    "Users":  [
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\Administrator",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "GLDOCKERLAB\\localking",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\iof",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10605005",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA10611031",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA11107063",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA93110110",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA95110112",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SMA97030311",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\SvrMgmt",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Administrators",
                      "Name":  "QUANTA\\tdsadmin",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Remote Desktop Users",
                      "Name":  "QUANTA\\dev10707058",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "GLDOCKERLAB\\TestUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "GLDOCKERLAB\\TestUser",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "isActive":  "Yes"
                  },
                  {
                      "Group":  "Users",
                      "Name":  "QUANTA\\Domain Users",
                      "isActive":  "Yes"
                  }
              ],
    "BIOSName":  "Hyper-V UEFI Release v4.0",
    "MachineName":  "gldockerlab",
    "OSType":  "Microsoft Windows Server 2019 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.12411869522547513
                   },
                   {
                       "Driver":  "D",
                       "SizeRemaining":  0.60022937454777459
                   }
               ]
}
]'
	exec xp_UpdateRawData @jdata
end