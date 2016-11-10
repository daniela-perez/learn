function valor-absoluto($numero) {
    if($numero) {
        if($numero -is [int]) {
            if($numero -lt 0) {
               $numero = $numero * -1;
            }
            "$numero";
        }
    }
}
