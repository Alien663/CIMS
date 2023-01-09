## System Architecture
### Database
There's only one real entity so far : RAWData

For easy updating data, usiong JSON format to store computer information.

Recording information bellow :
1. Machine Name
2. Domain
3. OS Type
4. BIOS Name
5. BIOS Version
6. Manufacturer
7. System Family
8. IP Address
9. Users
10. Volume Remaining





### Backend

#### Background Job
Use remote powershell(Invoke-Command) to ask data from servers.
But some command will not work in windows server 2012 R2, suggest use at least windos server 2016.
1. Get-LocalGroupMember
2. Get-Volume
3. Get-ComputerInfo
4. Get-CimInstance

#### WebAPI
#nothing yet

### Frontend
#nothing yet



## xp_insertTestData
In order to devlop quickly, I creat a procedure "xp_insertTestData" to insert some static data into database.

The static data came from "scanComputer.ps1".

I use merge to insert or update data depend on computer name.

## Future Work
List bellow had been completed but may change in the future :
1. Columns of computer information
2. Need clearly reequest to design database schema

List bellow need to work : 
1. read report.json into sql server.