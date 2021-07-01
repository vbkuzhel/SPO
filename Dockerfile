FROM mcr.microsoft.com/powershell:lts-arm32v7-ubuntu-bionic
SHELL ["pwsh","-command"]
USER ContainerAdministrator
RUN Set-psrepository PSGallery -InstallationPolicy Trusted 
RUN  Install-Module SharePointPnPPowerShellOnline -SkipPublisherCheck -Scope AllUsers
CMD [ "pwsh" ]
