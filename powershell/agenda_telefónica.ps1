$nombres =$brenda; $constantino; $daniela; $dentista; $enrique; $javier; $karla; $omar; $paty; $sandra; $sara; $victoria
[string]$nombres =Read-host "Escribe el nombre da la persona para que te indique su # telefónico y/o correo electrónico."
if ($nombres -eq $brenda){Write-Output "Celular: 5531400539, E-mail: brenzulo.0204@gmail.com"}
if ($nombres -eq $constantino){Write-Output "Casa: 57368170"} 
if ($nombres -eq $daniela){Write-Output "Celular: 5565311676, E-mail: daniela@correo.io"} 
if ($nombres -eq $dentista){Write-Output "Casa: 57928696"} 
if ($nombres -eq $enrique){Write-Output "Celular: 5523056258"} 
if ($nombres -eq $javier){Write-Output "Celular: 5545651790, E-mail: m@javier.io"} 
if ($nombres -eq $karla){Write-Output "Celular: 5537180220, E-mail: kaiv_zulo96@hotmail.com"}
if ($nombres -eq $omar){Write-Output "Celular: 2481141212"} 
if ($nombres -eq $paty){Write-Output "Celular: 5538980941, Casa: 53051471"} 
if ($nombres -eq $sandra){Write-Output "Celular: 2461034227, Casa: 2464160229"} 
if ($nombres -eq $sara){Write-Output "Casa: 3238421499"}
if ($nombres -eq $victoria){Write-Output "Celular: 5573309572"}
elseif ($nombres -ne $brenda){Write-output "Este nombre no está incuido en la agenda"}
elseif ($nombres -ne $constantino){Write-output "Este nombre no está incuido en la agenda"}
elseif ($nombres -ne $daniela){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $dentista){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $enrique){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $javier){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $karla){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $omar){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $paty){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $sandra){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $sara){Write-output "Este nombre no está incluido en la agenda"}
elseif ($nombres -ne $victoria){Write-output "Este nombre no está incluido en la agenda"}

