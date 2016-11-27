function ToUpperChar($caracter) {
    switch ($caracter) { 
        a { return "A"; } 
        b { return "B"; } 
        c { return "C"; }
        d { return "D"; } 
        e { return "E"; }
        f { return "F"; }
        g { return "G"; }
        h { return "H"; }
        i { return "I"; }
        j { return "J"; }
        k { return "K"; }
        l { return "L"; }
        m { return "M"; }
        n { return "N"; }
        ñ { return "Ñ"; }
        o { return "O"; }
        p { return "P"; }
        q { return "Q"; }
        r { return "R"; }
        s { return "S"; }
        t { return "T"; }
        u { return "U"; }
        v { return "V"; }
        w { return "W"; }
        x { return "X"; }
        y { return "Y"; }
        z { return "Z"; }
        default { return "$caracter"; }
    }
}

function ToUpper($palabra) { 
    $caracteres_en_la_palabra = $palabra.tochararray();

    foreach ($caracter in $caracteres_en_la_palabra) {
        $palabra_en_mayusculas += ToUpperChar($caracter);
    }

    return $palabra_en_mayusculas;    
}

function convertidor-letras-mayusculas {
    $contador_de_palabras = 0;

    ForEach ($palabra in $args) {
        $palabra = [String]$palabra;
        $contador_de_palabras += 1;
        if ($contador_de_palabras -gt 1) {
            $palabras_en_mayusculas += " ";
            $palabras_en_mayusculas += ToUpper($palabra);
        } else {
            $palabras_en_mayusculas += ToUpper($palabra)
        }
    }
    "$palabras_en_mayusculas";
}