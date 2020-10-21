FROM mcr.microsoft.com/powershell:lts-nanoserver-1809
SHELL ["pwsh","-command"]
USER ContainerAdministrator
RUN Install-Module SharePointPnPPowerShellOnline -Scope AllUsers -skippublishercheck
CMD [ "pwsh" ]