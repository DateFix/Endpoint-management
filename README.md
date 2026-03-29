# Endpoint Management Project

This project demonstrates basic endpoint automation and policy-based administration concepts using PowerShell and Group Policy.

## Main goals

- Control USB storage access
- Check endpoint state
- Log configuration state
- Prepare for remote endpoint checks

## Scripts

### check-usb.ps1
Checks the local USB storage status.

### enable-usb.ps1
Enables USB storage by changing the USBSTOR registry value.

### disable-usb.ps1
Disables USB storage by changing the USBSTOR registry value.

### check-usb-with-log.ps1
Checks USB storage status and writes the result into a log file.

### check-remote-usb.ps1
Checks USB storage state on remote computers using PowerShell remoting.

## Notes

In enterprise environments, Group Policy may override local script-based configuration changes.
This project helped demonstrate the difference between local configuration and centralized policy enforcement.
