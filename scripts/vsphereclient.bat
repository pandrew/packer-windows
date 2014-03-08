set version=5.5.0-1281650
set versionpath=1/2/8/1/6/5/0
if not exist "C:\Windows\Temp\VMware-viclient-all-%version%.exe" (
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://vsphereclient.vmware.com/vsphereclient/%versionpath%/VMware-viclient-all-%version%.exe', 'C:\Windows\Temp\VMware-viclient-all-%version%.exe')" <NUL
)
start /wait C:\Windows\Temp\VMware-viclient-all-%version%.exe /w -L1033 /v"/qr INSTALLDIR=\"C:\VICLIENT\""

