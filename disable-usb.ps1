$computers = @("gep1","gep2")

foreach ($comp in $computers) {
    Invoke-Command -ComputerName $comp -ScriptBlock {
        $path = "HKLM:\SYSTEM\CurrentControlSet\Services\USBSTOR"
        $value = (Get-ItemProperty -Path $path).Start
        
        if ($value -ne 4) {
            Set-ItemProperty -Path $path -Name "Start" -Value 4
        }
    }
}
