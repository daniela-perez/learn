function caracter_alfanumerico($caracter){
    $numeros = "0", "1", "2", "3", "4", "5", "6", "7", "8", "9";
    $letras  = "a", "A", "b", "B", "c", "C", "d", "D", "e", "E",
               "f", "F", "g", "G","h", "H","i", "I","j", "J",
               "k", "K","l", "L","m", "M","n", "N","ñ", "Ñ",
               "o", "O","p", "P","q", "Q","r", "R","s", "S",
               "t", "T","u", "U","v", "V","w", "W","y", "Y",
               "z", "Z";

    ForEach($numero in $numeros) {
        if($caracter -eq $numero) {
            return $true;
        } 
    }

    ForEach($letra in $letras) {
        if($caracter -eq $letra) {
            return $true;
        } 
    }

    return $false;
}

function alfanumerico($caracteres) {
    if(!($caracteres -eq $null)) {
        $caracteres = [String]$caracteres;
        $caracteres = $caracteres.tochararray();
    
        $numero_de_caracter = 0;
        ForEach($caracter in $caracteres) {
            $numero_de_caracter++;
            if(!(caracter_alfanumerico($caracter))) {
                if($caracter -eq "-" -and $numero_de_caracter -eq 1) {
                    continue;
                } else {
                  "no"; return;
                }
            }
        }
    } else {
        "no"; return;
    }
    "si";
}