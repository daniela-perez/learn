function isNumeric ($x) {
    try {
        0 + $x | Out-Null
        return $true
    } catch {
        return $false
    }
}

function secuencia-numeros() {
    $argumentos_totales = $args + $input;
 
    switch ($argumentos_totales.length) { 
        0 { "$null"; return; } 
        1 { 
            $numero_inicial = 1
            $numero_patron  = 1
            $numero_final   = $argumentos_totales[0]
            if($numero_final -eq 0) { "0"; return; }
          } 
        2 { $numero_inicial = $argumentos_totales[0];
            $numero_final   = $argumentos_totales[1];
            $numero_patron  = 1;
          } 
        default {
            $numero_inicial = $argumentos_totales[0];
            $numero_patron  = $argumentos_totales[1];
            $numero_final   = $argumentos_totales[2];
            }
        }
    
    #TODO: Generalizar estas funciones, areNumerics($arg1, ...)
    if(!(isNumeric($numero_inicial))) { "$null"; return; }
    if(!(isNumeric($numero_patron)))  { "$null"; return; }
    if(!(isNumeric($numero_final)))   { "$null"; return; }
    #TODO

    $numero_inicial = [int]$numero_inicial
    $numero_patron  = [int]$numero_patron
    $numero_final   = [int]$numero_final

    while ($numero_inicial  -le $numero_final) {
        if ($numero_inicial -eq $numero_final) {
            $resultado += "$numero_inicial"
        } else {
            $resultado += "$numero_inicial "
        }   
        $numero_inicial += $numero_patron          
    }
    "$resultado"; 
}