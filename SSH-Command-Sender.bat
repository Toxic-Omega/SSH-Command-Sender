echo off
color c
title SSH-Command-Sender
:ssh-hub
mode con: cols=39 lines=18
cls
echo  ____    ____    __  __     
echo /\  _`\ /\  _`\ /\ \/\ \ V9.5   
echo \ \,\L\_\ \,\L\_\ \ \_\ \   
echo  \/_\__ \\/_\__ \\ \  _  \  
echo    /\ \L\ \/\ \L\ \ \ \ \ \ 
echo    \ `\____\ `\____\ \_\ \_\
echo     \/_____/\/_____/\/_/\/_/  
echo.
echo     Coded By Toxic - Omega
echo.
echo [1] Quick SSH Command
echo [2] SSH Connector
echo [3] SSH Voice Message
echo.
echo [x] Exit
echo.
set /p "op=[~] Select Option: "
IF "%op%" == "1" GOTO quick_ssh
IF "%op%" == "2" GOTO ssh_connector
IF "%op%" == "3" GOTO ssh_voice
IF "%op%" == "x" GOTO exit
IF not "%op%"  == "x" IF not "%op%"  == "1" IF not "%op%"  == "2" IF not "%op%"  == "3" GOTO ssh-hub
:quick_ssh
cls
set /p "User=[~] User: "
set /p "Host=[~] Host: "
set /p "Port=[~] Port: "
set /p "Command=[~] Command: "
ssh %User%@%Host% -p  %Port% %Command%
cls
echo  ____    ____    __  __     
echo /\  _`\ /\  _`\ /\ \/\ \ V9.5   
echo \ \,\L\_\ \,\L\_\ \ \_\ \   
echo  \/_\__ \\/_\__ \\ \  _  \  
echo    /\ \L\ \/\ \L\ \ \ \ \ \ 
echo    \ `\____\ `\____\ \_\ \_\
echo     \/_____/\/_____/\/_/\/_/  
echo.
echo     Command Send Sucesfully!
echo.
echo [1] Home
echo.
set /p "op=[~] Select Option: "
IF "%op%" == "1" GOTO ssh-hub
IF not "%op%"  == "1" GOTO ssh-hub
:ssh_connector
cls
set /p "User=[~] User: "
set /p "Host=[~] Host: "
set /p "Port=[~] Port: "
ssh %User%@%Host% -p  %Port%
mode con: cols=100 lines=29
cls
goto ssh-hub
:ssh_voice
mode con: cols=65 lines=18
cls
echo You Will Also Need To Execute This Command To Do This "sudo apt-get install espeak"
echo When You Type Voice Message Please Replace Spaces With "-" !
echo.
set /p "User=[~] User: "
set /p "Host=[~] Host: "
set /p "Port=[~] Port: "
set /p "Msg=[~] Voice Msg: "
ssh %User%@%Host% -p %Port% espeak "%Msg%"
mode con: cols=39 lines=18
cls
echo  ____    ____    __  __     
echo /\  _`\ /\  _`\ /\ \/\ \ V9.5   
echo \ \,\L\_\ \,\L\_\ \ \_\ \   
echo  \/_\__ \\/_\__ \\ \  _  \  
echo    /\ \L\ \/\ \L\ \ \ \ \ \ 
echo    \ `\____\ `\____\ \_\ \_\
echo     \/_____/\/_____/\/_/\/_/  
echo.
echo  Voice Message Send Sucesfully!
echo.
echo [1] Home
echo.
set /p "op=[~] Select Option: "
IF "%op%" == "1" GOTO ssh-hub
IF not "%op%"  == "1" GOTO ssh-hub
:exit
exit
