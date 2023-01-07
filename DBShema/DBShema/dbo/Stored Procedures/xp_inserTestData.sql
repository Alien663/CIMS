create   procedure xp_inserTestData as begin
	declare @jdata varchar(max) = '[{
    "Domain":  "quanta.corp",
    "BIOSVersion":  "VRTUAL - 5001818",
    "Manufacturer":  "Microsoft Corporation",
    "SystemFamily":  null,
    "IPAddress":  "10.243.29.31",
    "Users":  [
                  {
                      "Name":  "QUANTA\\iof",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\iofgds1",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\iofgds2",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10605005",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10611031",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA11107063",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA93110110",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA95110112",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA97030311",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SvrMgmt",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\tdsadmin",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "TDSAP31\\Administrator",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "TDSAP31\\localking",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\97030311",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10508075",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10509050",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10605005",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10611001",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10707058",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10810141",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10903011",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10903104",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10905117",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10907055",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10907097",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10908149",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10911144",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11006064",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11007136",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11008120",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009016",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009017",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009018",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009104",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11109105",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev96052112",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev97030311",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "QUANTA\\dev99110101",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\97030311",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10508075",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10509050",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10605005",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10611001",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10707058",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10810141",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10903011",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10903104",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10905117",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10907055",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10907097",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10908149",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev10911144",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11006064",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11007136",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11008120",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009016",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009017",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009018",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11009104",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev11109105",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev96052112",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev97030311",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\dev99110101",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\Domain Users",
                      "Group":  "Users"
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
                       "SizeRemaining":  0.76331001058333525
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
                      "Name":  "QUANTA\\iof",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10605005",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10611031",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA11107063",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA93110110",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA95110112",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA97030311",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SvrMgmt",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\tdsadmin",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "TDSHV05\\Administrator",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "TDSHV05\\localking",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\Domain Users",
                      "Group":  "Users"
                  }
              ],
    "BIOSName":  "BIOS Date: 06/16/14 14:18:40 Ver: 04.06.05",
    "MachineName":  "TDSHV05",
    "OSType":  "Microsoft Windows Server 2019 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.77879919743272985
                   },
                   {
                       "Driver":  "D",
                       "SizeRemaining":  0.3290194487458919
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
                      "Name":  "GLTDSDEVOPS\\Administrator",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "GLTDSDEVOPS\\localking",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10605005",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10611031",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA11107063",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA93110110",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA95110112",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA97030311",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SvrMgmt",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\tdsadmin",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\Domain Users",
                      "Group":  "Users"
                  }
              ],
    "BIOSName":  "Hyper-V UEFI Release v4.0",
    "MachineName":  "GLTDSDEVOPS",
    "OSType":  "Microsoft Windows Server 2022 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.301479787021279
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
                      "Name":  "GLDOCKERLAB\\Administrator",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "GLDOCKERLAB\\localking",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\iof",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10605005",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA10611031",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA11107063",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA93110110",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA95110112",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SMA97030311",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\SvrMgmt",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\tdsadmin",
                      "Group":  "Administrators"
                  },
                  {
                      "Name":  "QUANTA\\dev10707058",
                      "Group":  "Remote Desktop Users"
                  },
                  {
                      "Name":  "GLDOCKERLAB\\DockerUser",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "GLDOCKERLAB\\TestUser",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\Authenticated Users",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "NT AUTHORITY\\INTERACTIVE",
                      "Group":  "Users"
                  },
                  {
                      "Name":  "QUANTA\\Domain Users",
                      "Group":  "Users"
                  }
              ],
    "BIOSName":  "Hyper-V UEFI Release v4.0",
    "MachineName":  "gldockerlab",
    "OSType":  "Microsoft Windows Server 2019 Standard",
    "Volume":  [
                   {
                       "Driver":  "C",
                       "SizeRemaining":  0.12432640549951193
                   },
                   {
                       "Driver":  "D",
                       "SizeRemaining":  0.6002291682963079
                   }
               ]
}
]'
	exec xp_UpdateRawData @jdata
end