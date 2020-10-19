FROM mcr.microsoft.com/powershell:lts-nanoserver-1809
SHELL ["pwsh.exe","-command"]
RUN Set-psrepository PSGallery -InstallationPolicy Trusted && Install-Module SharePointPnPPowerShellOnline -Scope AllUsers
CMD [ "pwsh.exe" ]