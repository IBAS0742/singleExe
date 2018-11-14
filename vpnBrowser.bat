IF EXIST %~dp0Browser\chrome\chrome32\chrome.exe (
    start %~dp0Browser\chrome\chrome32\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server=127.0.0.1:1080 https://www.youtube.com
) ELSE (
    start chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server=127.0.0.1:1080 https://www.youtube.com
)