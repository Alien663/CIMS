$report_file = "./report.json"
$names = @("tdsap31", "tdshv05", "gltdsdevops")
$servers = @()
foreach( $name in $names){
    $servers += [System.Net.Dns]::GetHostByName($name).HostName
}
echo "[" > $report_file
foreach( $server in $servers){
    InVoke-Command -ComputerName $server -ScriptBlock{
        $vol_status=@()
        $volumes = Get-Volume | select DriveLetter,SizeRemaining,Size | where DriveLetter -ne $null
        foreach($vol in $volumes){
            $vol_status += @{Driver=$vol.DriveLetter;SizeRemaining=($vol.SizeRemaining/$vol.Size)}
        }
        $all_users = @()
        foreach($user in (Get-LocalGroupMember -Group "Administrators").Name){
            $all_users += @{Name=$user;Group="Administrators"}
        }
        foreach($user in (Get-LocalGroupMember -Group "Remote Desktop Users").Name){
            $all_users += @{Name=$user;Group="Remote Desktop Users"}
        }
        foreach($user in (Get-LocalGroupMember -Group "Users").Name){
            $all_users += @{Name=$user;Group="Users"}
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
$volumes = Get-Volume | select DriveLetter,SizeRemaining,Size | where DriveLetter -ne $null
foreach($vol in $volumes){
    $vol_status += @{Driver=$vol.DriveLetter;SizeRemaining=($vol.SizeRemaining/$vol.Size)}
}
$all_users = @()
foreach($user in (Get-LocalGroupMember -Group "Administrators").Name){
    $all_users += @{Name=$user;Group="Administrators";isActive=(net user $user)[5].Split(" ")[-1]}
}
foreach($user in (Get-LocalGroupMember -Group "Remote Desktop Users").Name){
    $all_users += @{Name=$user;Group="Remote Desktop Users";isActive=(net user $user)[5].Split(" ")[-1]}
}
foreach($user in (Get-LocalGroupMember -Group "Users").Name){
    $all_users += @{Name=$user;Group="Users";isActive=(net user $user)[5].Split(" ")[-1]}
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

