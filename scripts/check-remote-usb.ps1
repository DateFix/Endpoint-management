$computers = @(
    "gep1",
    "gep2"
)

foreach ($comp in $computers) {
    Write-Output "Ellenőrzés indul: $comp"

    try {
        Invoke-Command -ComputerName $comp -ScriptBlock {
            $path = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
            $value = (Get-ItemProperty -Path $path -Name "Start" -ErrorAction Stop).Start

            if ($value -eq 4) {
                "USB le van tiltva"
            }
            elseif ($value -eq 3) {
                "USB engedélyezve"
            }
            else {
                "USB állapot ismeretlen. Érték: $value"
            }
        } -ErrorAction Stop
    }
    catch {
        Write-Output "Hiba a(z) $comp gépnél: $($_.Exception.Message)"
    }

    Write-Output ""
}
