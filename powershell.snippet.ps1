#### ForEach loop from CSV
$CSV = Import-CSV -Path .\filename.csv -Delimiter "," -Header HeaderName
ForEach ($line in $CSV) {}

#### Alias with Select-Object
Select-Object -Property @{N='$Alias';E={$_.$OriginalName}}

#### Get last boot time
Get-CimInstance -ClassName win32_operatingsystem | Select-Object LastBootUpTime

#### Get directory size
(Get-ChildItem c:\Downloads -Recurse -File | Measure-Object Length -s).Sum /1GB

#### Install Chrome via package providers
Install-PackageProvider chocolateyget -Force
Install-Package googlechrome -Force

#### Get all groups with wildcard name
Get-ADGroup -Filter 'Name -like "*Notification*"' | Select-Object Name | Sort-Object Name

#### Get disks + size for remote comp
Get-WmiObject -ComputerName $CompName -Class Win32_logicaldisk | Format-Table -Property DeviceId,VolumeName, @{L='FreeSpaceGB';E={"{0:N2}" -f ($_.FreeSpace /1GB)}}, @{L="Capacity";E={"{0:N2}" -f ($_.Size/1GB)}}