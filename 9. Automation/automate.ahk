; AutoHotkey script to automate AT commands
^!a::                          ; Ctrl + Alt + A is your hotkey
SetTitleMatchMode, 2          ; Allows partial window name match
WinActivate, CelerSMS AT Emulator ; Focus the emulator window
Send AT{Enter}                ; Type 'AT' and press Enter
Sleep 1000                    ; Wait 1 second
Send{Raw} AT+CSQ{Enter}            ; Type next command
Sleep 1000
Send AT{Raw}{+}CMGF=1{Enter}
Sleep 1000
Send AT{NumpadAdd}CMGS="1234567890"{Enter}
Sleep 2000
Send Hello from AutoHotkey {Raw}!{Ctrl down}{vk1A}{Ctrl up} ; Ctrl+Z to send SMS
return