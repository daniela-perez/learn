function isNumeric ($x) {
    try {
        0 + $x | Out-Null
        return $true
    } catch {
        return $false
    }
}

function valor-absoluto($numero) {
    if(!($numero -eq $null)) {
        if(isNumeric ($numero)) {
            $numero= [int]$numero;
            if($numero -lt 0) {
               $valor_absoluto = $numero * -1;
            } else { 
               $valor_absoluto = $numero;
            }
        }
    }
    "$valor_absoluto";
}
