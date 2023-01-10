$report_file = "./report.json"
$names = @("computer1", "computer2", "computer3")
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

