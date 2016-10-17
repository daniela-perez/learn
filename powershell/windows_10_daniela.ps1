Write-Output "Windows 10 - Daniela Setup"

#1. falta obtener permisos de administracion

#$chocTempDir = Join-Path $env:TEMP "chocolatey"
#[System.IO.Directory]::CreateDirectory("c:\daniela\priscila\tu_tio")

iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install -y skype spotify songr teamviewer firefox git
 
#2. descargar e instalar software pirata
#3. descargar e instalar la ayuda de powershell