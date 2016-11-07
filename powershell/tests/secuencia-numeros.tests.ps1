$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "secuencia-numeros" {
    It "secuencia-numeros" {
        secuencia-numeros                | Should Be ''
        secuencia-numeros palabra        | Should Be ''
        secuencia-numeros -palabra       | Should Be ''
        secuencia-numeros 0              | Should Be '0'
        secuencia-numeros 1              | Should Be '1'
        secuencia-numeros 5              | Should Be '1 2 3 4 5'
        secuencia-numeros 2 2            | Should Be '2'
        secuencia-numeros 2 2 10         | Should Be '2 4 5 6 8 10'
        secuencia-numeros -3 3 3         | Should Be '-3 0 3'
    }
}
