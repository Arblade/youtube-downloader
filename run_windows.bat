@echo [info] Download of my archive ...
powershell -Command "Invoke-WebRequest https://github.com/Arblade/youtube-downloader/archive/main.zip -OutFile C:\Windows\Temp\main.zip"
@echo [info] Dezip...
powershell -Command "Expand-Archive C:\Windows\Temp\main.zip -DestinationPath C:\Windows\Temp\youtube-downloader\ "
@echo [info] Go into directory...
cd C:\Windows\Temp\youtube-downloader\youtube-downloader-main\windows\
@echo [info] Launch Download after after "Enter" is pressed
pause
powershell -Command "Start-Process install.bat -Verb runas"
