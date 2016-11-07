$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "convertidor-letras-mayusculas" {
    It "convertidor-letras-mayusculas" {
        convertidor-letras-mayusculas           | Should Be ''
        convertidor-letras-mayusculas hola      | Should Be 'HOLA'
        convertidor-letras-mayusculas hola mundo| Should Be 'HOLA MUNDO'
        convertidor-letras-mayusculas hola mundo cruel | Should Be 'HOLA MUNDO CRUEL'
    }
}
