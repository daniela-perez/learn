function agenda() {
  [String]$agenda_parametros = $args + $input;
  $agenda_parametros = $agenda_parametros.ToLower()

  $contactos= @{"brenda"="Celular: 5531400539, E-mail: brenzulo.0204@gmail.com"
            ;"constantino"= "Casa: 57368170"
            ;"daniela" = "Celular: 5565311676, E-mail: daniela@correo.io"};

  ForEach($agenda_argumento in $agenda_parametros) {
    if ($contactos.ContainsKey($agenda_argumento)) {
        Write-output $contactos.Get_Item($agenda_argumento)
    } else {
        Write-output "El nombre '$agenda_argumento' no esta incluido en la agenda"
    }
  }
}