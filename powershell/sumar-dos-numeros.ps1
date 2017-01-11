function isNumeric ($x) {
    try {
        0 + $x | Out-Null
        return $true
    } catch {
        return $false
    }
}

function sumar-dos-numeros($primer_numero, $segundo_numero) {
     if(!(isNumeric($primer_numero))) { "Error: parametro no numero -> `"$primer_numero`""; return; }
     if(!(isNumeric($segundo_numero))) { "Error: parametro no numero -> `"$segundo_numero`""; return; }

     $primer_numero = [int]$primer_numero
     $segundo_numero  = [int]$segundo_numero

     if (isNumeric($primer_numero -and $segundo_numero)) {
  
            $sumatoria  = 0;
            $sumatoria += $primer_numero;
            $sumatoria += $segundo_numero;
            "$sumatoria";
     }           
}