@echo on

cls

setlocal

PUSHD %~DP0

TITLE SRV-024

echo [SRV-024] "취약한 Telnet 인증 방식 사용"                                                                   >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo [_START_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo # 기준 : Telnet 서비스가 구동 되고 있지 않거나, 인증방법이 NTLM 일 경우 양호      >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul

echo # 현황                                                                                       >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo # 1.서비스 확인(net start)                                                                        >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
net start |find /I "Telnet"                                                                       >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo # 2.레지스트리 확인                                                                         >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
reg query "HKLM\Software\Microsoft\TelnetServer\1.0\SecurityMechanism"                          >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul

echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo [_END_]                                                                                    >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo SRV-024 END                                                                                >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo ######################################################################################     >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo.                                                                                           >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo [_RSTART_]                                                                                 >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo #    : SecurityMechanism 2 = NTLM                                                          >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo #    : SecurityMechanism 4 = Password                                                      >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo #    : SecurityMechanism 6 = NTLM, Password                                                >> [RESULT]_%COMPUTERNAME%SRV-024.txt 2>nul
echo [_REND_]        
