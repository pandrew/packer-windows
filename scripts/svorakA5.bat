if not exist "C:\Windows\Temp\7z920-x64.msi" (
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://downloads.sourceforge.net/sevenzip/7z920-x64.msi', 'C:\Windows\Temp\7z920-x64.msi')" <NUL
)

msiexec /qb /i C:\Windows\Temp\7z920-x64.msi

powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://aoeu.info/layouts/files/SvorakA5.zip', 'C:\Windows\Temp\SvorakA5.zip')" <NUL
cmd /c ""C:\Program Files\7-Zip\7z.exe" x C:\Windows\Temp\SvorakA5.zip -oC:\Windows\Temp"
msiexec  /qb /i "C:\Windows\Temp\Svorak A5\svorakA5_amd64.msi"

goto :done

:done
msiexec /qb /x C:\Windows\Temp\7z920-x64.msi
