function isNumeric ($x) {
    try {
        0 + $x | Out-Null
        return $true
    } catch {
        return $false
    }
}

function calculadora () {
    param(
    #No es obligatorio que nos den estos parametros (false) luego si no 
    #nos dan ningun parametro, saldrá en pantalla '0'.
        [Parameter(Mandatory=$false)][string]$primer_numero,
        [Parameter(Mandatory=$false)][string]$operacion,
        [Parameter(Mandatory=$false)][string]$segundo_numero
    )

    if((!$primer_numero) -or (!$operacion) -or (!$segundo_numero))
        { Write-Output "0"; return; }
    #Si se reciben caracteres que no sean numeros, saldrá en pantalla '0' también. 
     if(!(isNumeric($primer_numero)) -or
       !(isNumeric($segundo_numero))) { Write-Output "0"; return; }
     #Cuando se definieron los parametros se pusieron como tipo string, si el double se pusiera
     #despues del signo igual, lo que esta antes del igual seguiria siendo de tipo string. En una suma 
     #de 1 + 1 en vez de dar 2 daria 11, osea un error.
     [double]$primer_numero   = $primer_numero
     [double]$segundo_numero  = $segundo_numero

     switch($operacion.ToLower()) {
     # La $_ se refiere a la variable  $operacion en el switch, se convierte todo a minusculas para 
     #generalizar la funcion, MaS, MAS, mas, etc... No puedo decir if ("+" -eq "mas") {
     #porque es obvio que un signo nunca va a ser igual a las letras.
        {($_ -eq "+") -or ($_ -eq "mas")} { $resultado   = $primer_numero + $segundo_numero }
        {($_ -eq "-") -or ($_ -eq "menos")} { $resultado = $primer_numero - $segundo_numero }
        {($_ -eq "*") -or ($_ -eq "x") -or ($_ -eq "por") } { $resultado = $primer_numero * $segundo_numero }
        {($_ -eq "/") -or ($_ -eq "entre") } { $resultado = $primer_numero / $segundo_numero }
     }

     "$resultado"    
}