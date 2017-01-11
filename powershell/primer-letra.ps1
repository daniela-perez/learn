function primer-letra() {
    $args = $args + $input;

    ForEach ($argumento in $args) {
        $argumento = [String]$argumento;
        $caracteres_en_el_argumento = $argumento.tochararray();
        $resultado = $caracteres_en_el_argumento[0];
        break;
    }
    "$resultado";
}
