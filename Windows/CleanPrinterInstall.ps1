$printers = Get-WmiObject -Class win32_printer

foreach ($printer in $printers){
    if($printer.Name -notlike "Fax" -and $printer.Name -notlike "Adobe PDF" -and $printer.Name -notlike "OneNote for Windows 10" -and $printer.Name -notlike "Microsoft Print to PDF" -and $printer.Name -notlike "Microsoft XPS Document Writer"){
        Write-Host $printer
        $printer.Delete()
	}
}

#server or ip will go inside the quotation marks
rundll32.exe printui.dll,PrintUIEntry /in /n ""
Start-Sleep -s 7
#retype server or ip (no quotes) to set as default
rundll32.exe printui.dll,PrintUIEntry /y /n

#START AN .exe FILE ---- Example used here was papercut client
#Start-Process -FilePath ""
#start /w "" "%~dp0pcclient-20.0.4_Win-All" /S

#start /d "C:\Program Files (x86)\PaperCut MF Client\" pc-client.exe

