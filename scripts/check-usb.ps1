$path = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
$value = (Get-ItemProperty -Path $path).Start

if ($value -eq 4) {
    Write-Output "USB le van tiltva"
} else {
    Write-Output "USB engedélyezve"
}
