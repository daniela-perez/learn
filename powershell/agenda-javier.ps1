$brenda="brenda"; $constantino="constantino"; $daniela="daniela"
$dentista="dentista"; $enrique="enrique"; $javier="javier"
$karla="karla"; $omar="omar"; $paty="paty"; $sandra="sandra"
$sara="sara"; $victoria="victoria"

$nombre_escrito_por_el_usuario = Read-host "Escribe el nombre da la persona para que te indique su telefonico y/o correo electronico."

if ($nombre_escrito_por_el_usuario -eq "$brenda") {
        Write-Output "Celular: 5531400539, E-mail: brenzulo.0204@gmail.com"
} elseif ($nombre_escrito_por_el_usuario -eq "$constantino") {
        Write-Output "Casa: 57368170"
} elseif ($nombre_escrito_por_el_usuario -eq "$daniela")  {
        Write-Output "Celular: 5565311676, E-mail: daniela@correo.io"
} elseif ($nombre_escrito_por_el_usuario -eq "$dentista") {
        Write-Output "Casa: 57928696"
} elseif ($nombre_escrito_por_el_usuario -eq "$enrique")  {
        Write-Output "Celular: 5523056258"
} elseif ($nombre_escrito_por_el_usuario -eq "$javier")   {
        Write-Output "Celular: 5545651790, E-mail: m@javier.io"
} elseif ($nombre_escrito_por_el_usuario -eq "$karla")    {
        Write-Output "Celular: 5537180220, E-mail: kaiv_zulo96@hotmail.com"
} elseif ($nombre_escrito_por_el_usuario -eq "$omar")     {
        Write-Output "Celular: 2481141212"
} elseif ($nombre_escrito_por_el_usuario -eq "$paty")     {
        Write-Output "Celular: 5538980941, Casa: 53051471"
} elseif ($nombre_escrito_por_el_usuario -eq "$sandra")   {
        Write-Output "Celular: 2461034227, Casa: 2464160229"
} elseif ($nombre_escrito_por_el_usuario -eq "$sara")     {
        Write-Output "Casa: 3238421499"
} elseif ($nombre_escrito_por_el_usuario -eq "$victoria") {
        Write-Output "Celular: 5573309572"
} else {
        Write-output "El nombre '$nombre_escrito_por_el_usuario' no esta incluido en la agenda"
}
