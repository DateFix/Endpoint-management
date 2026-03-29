$logFile = "C:\temp\usb_status.log"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

$path = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
$value = (Get-ItemProperty -Path $path).Start

$status = if ($value -eq 4) { "Disabled" } else { "Enabled" }

"$date - USB Status: $status" | Out-File -Append $logFile
