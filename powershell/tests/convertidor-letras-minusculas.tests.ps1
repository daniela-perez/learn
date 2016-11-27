$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "convertidor-letras-minusculas" {
    It "convertidor-letras-minusculas" {
        convertidor-letras-minusculas           | Should Be ''
        convertidor-letras-minusculas hola      | Should Be 'hola'
        $resultado = "hola" | convertidor-bytes-humano
        $resultado  | Should Be 'hola'

        convertidor-letras-minusculas hola MUNDO| Should Be 'hola mundo'
        $resultado = "hola MUNDO" | convertidor-bytes-humano
        $resultado  | Should Be 'hola mundo'

        convertidor-letras-minusculas HOLA mUnDo CRUEL | Should Be 'hola mundo cruel'
    }
}
