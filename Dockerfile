FROM mcr.microsoft.com/powershell
SHELL ["pwsh","-command"]
RUN Set-psrepository PSGallery -InstallationPolicy Trusted && Install-Module SharePointPnPPowerShellOnline -Scope AllUsers
CMD [ "pwsh" ]