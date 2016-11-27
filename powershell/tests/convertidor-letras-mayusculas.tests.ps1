$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "convertidor-letras-mayusculas" {
    It "convertidor-letras-mayusculas" {
        convertidor-letras-mayusculas           | Should Be ''
        convertidor-letras-mayusculas 5         | Should Be '5'
        convertidor-letras-mayusculas hola      | Should Be 'HOLA'
        $resultado = "hola" | convertidor-letras-mayusculas
        $resultado  | Should Be 'HOLA'
        $resultado = "hola mundo" | convertidor-letras-mayusculas
        $resultado  | Should Be 'HOLA MUNDO'
        $resultado = "cruel" | convertidor-letras-mayusculas hola mundo
        $resultado  | Should Be 'HOLA MUNDO CRUEL'
        convertidor-letras-mayusculas hola mundo| Should Be 'HOLA MUNDO'
        convertidor-letras-mayusculas hola mundo cruel | Should Be 'HOLA MUNDO CRUEL'
    }
}
