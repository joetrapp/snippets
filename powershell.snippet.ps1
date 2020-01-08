#### ForEach loop from CSV
$CSV = Import-CSV -Path .\filename.csv -Delimiter "," -Header HeaderName
ForEach ($line in $CSV) {}

#### Alias with Select-Object
Select-Object -Property @{N='$Alias';E={$_.$OriginalName}}

#### Get last boot time
Get-CimInstance -ClassName win32_operatingsystem | Select-Object LastBootUpTime

#### Get directory size
(Get-ChildItem c:\Downloads -Recurse -File | Measure-Object Length -s).Sum /1GB