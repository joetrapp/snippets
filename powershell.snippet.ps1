#### ForEach loop from CSV

$CSV = Import-CSV -Path .\filename.csv -Delimiter "," -Header HeaderName

ForEach ($line in $CSV) {

}

#### Alias with Select-Object

Select-Object -Property @{N='$Alias';E={$_.$OriginalName}}