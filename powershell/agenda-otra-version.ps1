function agenda-otra-version() {    
    $brenda = "brenda"
    $brenda_informacion =  "Celular: 5531400539, E-mail: brenzulo.0204@gmail.com"
    $constantino = "constantino"
    $constantino_informacion = "Casa: 57368170"
    $daniela = "daniela"
    $daniela_informacion = "Celular: 5565311676, E-mail: daniela@correo.io"

    $nombre_escrito_por_el_usuario = $args

    if ($nombre_escrito_por_el_usuario -ieq "$brenda") { 
        Write-Output "$brenda_informacion"
    }

    elseif ($nombre_escrito_por_el_usuario -ieq $constantino) { 
        Write-Output "$constantino_informacion"
    }

    elseif ($nombre_escrito_por_el_usuario -ieq $daniela) { 
        Write-Output "$daniela_informacion"
    }

    else {
        Write-Output "El nombre `'$nombre_escrito_por_el_usuario`' no esta incluido en la agenda"; return
    }

    "Si deseas conocer la informacion de otra persona, escribe su nombre."
}