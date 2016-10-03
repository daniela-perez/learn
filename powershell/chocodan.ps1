$programa = read-host "Hola, que programa deseas instalar?"
Write-Output "De acuerdo, vamos a instalar $programa"
choco install -y $programa