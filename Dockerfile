FROM mcr.microsoft.com/powershell:lts-nanoserver-1809
SHELL ["pwsh","-command"]
USER ContainerAdministrator
#RUN Set-psrepository PSGallery -InstallationPolicy Trusted 
RUN Install-Module SharePointPnPPowerShellOnline -Scope AllUsers -SkipPublisherCheck
CMD [ "pwsh" ]