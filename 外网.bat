%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit
netsh interface ip set address name="以太网" source=static addr=192.168.1.33 mask=255.255.255.0 gateway=192.168.1.100
netsh interface ip set dns name="以太网" source=static addr=114.114.114.114
