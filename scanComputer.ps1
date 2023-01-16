$names = @("") # Set machines you want to scan. If you just scan local machine, let it empty.
$report_file = "./report.json" # need absolute file path to insert data into database

echo $report_file
echo $names
echo "Before run your script, please check the config is correct."
pause

$folder_list = $report_file -split "\\"
$folder = $folder_list[0..($folder_list.count-2)] -join "\"
if(!(Test-Path $folder)){
    New-Item $folder -Type Directory
}
$servers = @()
foreach( $name in $names){
    $servers += [System.Net.Dns]::GetHostByName($name).HostName
}
echo "[" > $report_file
foreach( $server in $servers){
    InVoke-Command -ComputerName $server -ScriptBlock{
        $vol_status=@()
        $volumes = Get-Volume | select DriveLetter,SizeRemaining,Size,DriveType | where DriveLetter -ne $null
        foreach($vol in $volumes){
            $vol_status += @{Driver=$vol.DriveLetter;SizeRemaining=$vol.SizeRemaining;Size=$vol.Size;DriveType=$vol.DriveType}
        }
        $all_users = @()
        foreach($user in Get-LocalGroupMember -Group "Administrators"){
            if($user.PrincipalSource -eq "Local"){
                $all_users += @{Name=$user.Name;Group="Administrators";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
            }
            $all_users += @{Name=$user.Name;Group="Administrators";isActive="Yes"}
        }
        foreach($user in Get-LocalGroupMember -Group "Remote Desktop Users"){
            if($user.PrincipalSource -eq "Local"){
                $all_users += @{Name=$user.Name;Group="Remote Desktop Users";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
            }
            $all_users += @{Name=$user.Name;Group="Remote Desktop Users";isActive="Yes"}
        }
        foreach($user in Get-LocalGroupMember -Group "Users"){
            if($user.PrincipalSource -eq "Local"){
                $all_users += @{Name=$user.Name;Group="Users";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
            }
            $all_users += @{Name=$user.Name;Group="Users";isActive="Yes"}
        }
        $system= Get-ComputerInfo
        $computer = Get-CimInstance -ClassName Win32_ComputerSystem 
        $data = @{
            MachineName=hostname;
            Domain=$system.CsDomain;
            Manufacturer=$computer.Manufacturer;
            SystemFamily=$computer.SystemFamily;
            OSType=$system.OSName;
            BIOSName=$system.BiosName;
            BIOSVersion=$system.BiosVersion;
            IPAddress=(Get-NetIPAddress | where IPAddress -like "10.*").IPAddress;
            Volume=$vol_status;
            Users=$all_users;
        }
        $data | ConvertTo-Json
    } >> $report_file
    echo "," >> $report_file
}

$vol_status=@()
$volumes = Get-Volume | select DriveLetter,SizeRemaining,Size,DriveType | where DriveLetter -ne $null
foreach($vol in $volumes){
    $vol_status += @{Driver=$vol.DriveLetter;SizeRemaining=$vol.SizeRemaining;Size=$vol.Size;DriveType=$vol.DriveType}
}
$all_users = @()
foreach($user in Get-LocalGroupMember -Group "Administrators"){
    if($user.PrincipalSource -eq "Local"){
        $all_users += @{Name=$user.Name;Group="Administrators";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
    }
    $all_users += @{Name=$user.Name;Group="Administrators";isActive="Yes"}
}
foreach($user in Get-LocalGroupMember -Group "Remote Desktop Users"){
    if($user.PrincipalSource -eq "Local"){
        $all_users += @{Name=$user.Name;Group="Remote Desktop Users";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
    }
    $all_users += @{Name=$user.Name;Group="Remote Desktop Users";isActive="Yes"}
}
foreach($user in Get-LocalGroupMember -Group "Users"){
    if($user.PrincipalSource -eq "Local"){
        $all_users += @{Name=$user.Name;Group="Users";isActive=(net user $user.Name.split("\")[1])[5].Split(" ")[-1]}
    }
    $all_users += @{Name=$user.Name;Group="Users";isActive="Yes"}
}
$system= Get-ComputerInfo
$computer = Get-CimInstance -ClassName Win32_ComputerSystem 
$data = @{
    MachineName=hostname;
    Domain=$system.CsDomain;
    Manufacturer=$computer.Manufacturer;
    SystemFamily=$computer.SystemFamily;
    OSType=$system.OSName;
    BIOSName=$system.BiosName;
    BIOSVersion=$system.BiosVersion;
    IPAddress=(Get-NetIPAddress | where IPAddress -like "10.*").IPAddress;
    Volume=$vol_status;
    Users=$all_users;
}
echo $data | ConvertTo-Json >> $report_file
echo "]" >> $report_file

# sqlcmd bellow will insert json data into database
sqlcmd -S . -d CIMS -Q "declare @jdata nvarchar(max); SELECT @jdata=BulkColumn FROM OPENROWSET (BULK N'$report_file', SINGLE_NCLOB) as j; exec xp_UpdateRawData @jdata"

pause