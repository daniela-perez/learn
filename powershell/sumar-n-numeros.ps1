function sumar-n-numeros() {
    $caracteres = $args + $input
    $sumatoria  = 0;
    Foreach ($caracter in $caracteres) {
    [int]$caracter = [convert]::ToInt32($caracter, 10)
            $sumatoria += $caracter
   }
        "$sumatoria";
}