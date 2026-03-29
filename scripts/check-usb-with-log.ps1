$logFolder = "C:\temp"
$logFile = Join-Path $logFolder "usb_status.log"

if (-not (Test-Path $logFolder)) {
    New-Item -Path $logFolder -ItemType Directory -Force | Out-Null
}

$path = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
$date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

try {
    $value = (Get-ItemProperty -Path $path -Name "Start" -ErrorAction Stop).Start

    if ($value -eq 4) {
        $status = "Disabled"
        Write-Output "USB le van tiltva"
    }
    elseif ($value -eq 3) {
        $status = "Enabled"
        Write-Output "USB engedélyezve"
    }
    else {
        $status = "UnknownValue:$value"
        Write-Output "USB állapot ismeretlen. Érték: $value"
    }
}
catch {
    $status = "Error"
    Write-Output "Hiba történt az USB állapot lekérdezése közben: $($_.Exception.Message)"
}

"$date - USB Status: $status" | Out-File -FilePath $logFile -Append -Encoding utf8
