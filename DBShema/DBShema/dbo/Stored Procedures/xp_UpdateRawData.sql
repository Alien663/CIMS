create   procedure xp_UpdateRawData @jdata nvarchar(max)
as begin
	--SELECT @jdata=BuildColumn FROM OPENROWSET (BULK N'D:\SideProject\ITMS\report_ansi.json', SINGLE_CLOB) as j;
	select * into #temp
	from openjson(@jdata) with (
		Domain varchar(16) '$.Domain',
		BIOSVersion varchar(64) '$.BIOSVersion',
		Manufacturer varchar(64) '$.Manufacturer',
		SystemFamily varchar(64) '$.SystemFamily',
		IPAddress varchar(512) '$.IPAddress',
		BIOSName varchar(64) '$.BIOSName',
		MachineName varchar(64) '$.MachineName',
		OSType varchar(64) '$.OSType',
		Users nvarchar(max) '$.Users' as json,
		Volume nvarchar(max) '$.Volume' as json
	) F

	merge into RAWData R using #temp T on R.MachineName = T.MachineName
		when matched then
			update set
				Domain = T.Domain,
				BIOSVersion = T.BIOSVersion,
				Manufacturer = T.Manufacturer,
				SystemFamily = T.SystemFamily,
				IPAddress = T.IPAddress,
				BIOSName = T.BIOSName,
				MachineName = T.MachineName,
				OSType = T.OSType,
				Users = T.Users,
				Volume = T.Volume
		WHEN NOT MATCHED THEN
			insert values(T.Domain, T.BIOSVersion, T.Manufacturer, T.SystemFamily, T.IPAddress, T.BIOSName, T.MachineName, T.OSType, T.Users, T.Volume);
end