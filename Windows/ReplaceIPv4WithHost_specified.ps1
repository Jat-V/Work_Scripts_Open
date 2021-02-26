Get-WmiObject -ComputerName localhost -Class Win32_printer | 
#This will find the printer by ip address or specified printer name
where { $_.portname -like '172.28.214.80' -or $_.portname -like 'BP Printer'-and $_.local -eq 'TRUE'} | 
 
Select -ExpandProperty Name | 
 
ForEach-Object { rundll32 printui.dll,PrintUIEntry /dl /n "$_" }
#The following will add and replace the ip with the host
Add-PrinterPort -Name "YU-WHIT205.edu" -PrinterHostAddress "YU-WHIT205.edu"
Add-Printer -Name "Whitney Host Printer" -DriverName "PCL6 Driver for Universal Print" -PortName "YU-WHIT205.edu"
[System.Windows.MessageBox]::Show('Done')
#Driver can be specified and Whitney was used as an example
