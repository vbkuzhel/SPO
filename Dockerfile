FROM mcr.microsoft.com/powershell:latest
SHELL ["pwsh","-command"]
USER ContainerAdministrator
RUN Set-psrepository PSGallery -InstallationPolicy Trusted 
RUN  Install-Module SharePointPnPPowerShellOnline -SkipPublisherCheck -Scope AllUsers
CMD [ "pwsh" ]
