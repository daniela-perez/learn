$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "sumar-dos-numeros" {
    It "sumar-dos-numeros" {
        sumar-dos-numeros     | Should Be '0'
        sumar-dos-numeros 1   | Should Be '1'
        sumar-dos-numeros 1 1 | Should Be '2'
        sumar-dos-numeros 5 5 | Should Be '10'
    }
}
