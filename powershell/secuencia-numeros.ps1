function isNumeric ($x) {
    try {
        0 + $x | Out-Null
        return $true
    } catch {
        return $false
    }
}

function secuencia-numeros($numero_inicial, $numero_patron, $numero_final) {
    if(!($numero_inicial -eq $null -and $numero_patron -eq $null -and $numero_final)) {
        if(isNumeric ($numero_inicial, $numero_patron, $numero_final)) {
            $numero_inicial= [int]$numero_inicial;
            $numero_patron= [int]$numero_patron;
            $numero_final= [int]$numero_final;
                switch($numero_inicial, $numero_patron, $numero_final) { 
                       $numero_final { $numero_final = 0; return "0"; $numero_final = 1;
                    return "1"; $numero_final = $numero_final; 
                       $numero_patron = 1
                    while ($numero_patron -le $numero_inicial) {
                        if ($numero_patron -eq $numero_inicial) {
                            $resultado += "$numero_patron"
                        } else {$resultado += "$numero_patron "}
                                $numero_patron += 1;}
                    }
                } 
                
        }    
    }
    "$resultado"; 
}







   