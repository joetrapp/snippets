#### Get VM's with hostnames and guest OS
Get-VMGuest $CompName | Format-List VM,Hostname,OSFUllName,IPAddress,State