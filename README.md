# Computer Information Manage System

## Enviroment
1. at least windows Powershell 5.1 ([Official Document](https://learn.microsoft.com/en-us/powershell/scripting/windows-powershell/install/installing-windows-powershell?view=powershell-7.3#upgrading-existing-windows-powershell))
2. at least SQL Server 2016 ([needs json parser](https://learn.microsoft.com/zh-tw/sql/relational-databases/json/json-data-sql-server?view=sql-server-ver16))
3. dotnet 6 or 3.1

## How to Build this Project
### 1. Create CIMS Database
Create a DB name as "CIMS".
Thers are two way to create database easily.

* [Depoly Database with DAC](https://learn.microsoft.com/zh-tw/sql/relational-databases/data-tier-applications/deploy-a-data-tier-application?view=sql-server-ver16) : `\DBShema\DBShema\bin\Debug\DBShema.dacpac`

* [Visual Studio SQL Project](https://learn.microsoft.com/zh-tw/sql/ssdt/how-to-build-and-deploy-to-a-local-database?view=sql-server-ver16) (You have to create a empty databse and name as "ITMS" before deploy it)

### 2. Powershell Script
This project use AD credential to get information from severial computers.
So it's important to enable winRM on computer that you want to scan.
Before run the scanComputer.ps1, there are two settings need to configure.

1. check parameters
    ```powershell
    $names = @("") # Set machines you want to scan. If you just scan local machine, let it empty.
    $report_file = "./report.json" # need absolute file path to insert data into database
    ```

2. check connection string in the 106th line : sqlcmd .....

After running script, there should be a report.json at the folder you configure.
If not, please check that is there any error message in the output.

### 3. Backend Project
The backend project is build with dotnet 6, check your environment before run it.
If you run the backend project successfully, it should goto the swagger page. Just try the API here.
