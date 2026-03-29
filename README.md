# Endpoint Management Project

This project demonstrates basic endpoint automation and policy-based administration concepts using PowerShell and Group Policy.

Ez a projekt alapvető végpont-kezelési és automatizálási koncepciókat mutat be PowerShell és csoportházirend (GPO) használatával.


## Main goals/Fő célok

- Control USB storage access
- Check endpoint state
- Log configuration state
- Prepare for remote endpoint checks

- USB adattárolók hozzáférésének szabályozása
- Végpontok állapotának ellenőrzése
- Konfiguráció állapotának naplózása
- Több gépes (távoli) ellenőrzés előkészítése

## Scripts

### check-usb.ps1
Checks the local USB storage status.

A helyi gépen ellenőrzi az USB adattárolók állapotát.

### enable-usb.ps1
Enables USB storage by changing the USBSTOR registry value.

Engedélyezi az USB adattárolókat a USBSTOR registry érték módosításával.

### disable-usb.ps1
Disables USB storage by changing the USBSTOR registry value.

Letiltja az USB adattárolókat a USBSTOR registry érték módosításával.


### check-usb-with-log.ps1
Checks USB storage status and writes the result into a log file.

Ellenőrzi az USB állapotát, és az eredményt naplófájlba írja.


### check-remote-usb.ps1
Checks USB storage state on remote computers using PowerShell remoting.

Távoli gépeken ellenőrzi az USB állapotot PowerShell remoting segítségével.

## Notes

In enterprise environments, Group Policy may override local script-based configuration changes.
This project helped demonstrate the difference between local configuration and centralized policy enforcement.

Vállalati környezetben a csoportházirend (GPO) felülírhatja a lokálisan, scriptek segítségével végrehajtott módosításokat.
Ez a projekt jól szemlélteti a különbséget a lokális konfiguráció és a központi szabályozás (policy alapú működés) között.
