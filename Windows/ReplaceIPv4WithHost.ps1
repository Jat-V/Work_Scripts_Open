$newPort = Read-Host "Enter New Port: "
$oldPort = Read-Host "Enter Old Host: "
Add-PrinterPort -Name "$newPort" -PrinterHostAddress "$newPort"
Get-Printer | Where-Object {$_.PortName -eq "$oldPort"} | Set-Printer -PortName "$newPort"
Remove-PrinterPort -Name "$oldPort"

#This is a more flexible scrip that replaces IPv4 address with hostnames. The script works by taking in user input.
