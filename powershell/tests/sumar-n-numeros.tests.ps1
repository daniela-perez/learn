$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "sumar-n-numeros" {
    It "sumar-n-numeros" {
        sumar-n-numeros       | Should Be '0'
        sumar-n-numeros 1     | Should Be '1'
        sumar-n-numeros 1 1   | Should Be '2'
        sumar-n-numeros 5 5 5 | Should Be '15'
        sumar-n-numeros 2 2 2 2 2 | Should Be '10'
    }
}
