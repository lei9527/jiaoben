%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit
netsh interface ip set address name="以太网" source=dhcp
netsh interface ip set dns name="以太网" source=dhcp
