$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "calculadora" {
    It "calculadora" {
        calculadora           | Should Be '0'
        calculadora cadena    | Should Be '0'
        calculadora 1 + 1     | Should Be '2'
        calculadora 1 MAS 1   | Should Be '2'
        calculadora 1 mas 1   | Should Be '2'
        calculadora 2 - 1     | Should Be '1'
        calculadora 5 menos 1 | Should Be '4'
        calculadora 5 menos 6 | Should Be '-1'
        calculadora 3 * 3     | Should Be '9'
        calculadora 3 x 3     | Should Be '9'
        calculadora 3 por 3   | Should Be '9'
        calculadora 9 / 3     | Should Be '3'
        calculadora 9 entre 3 | Should Be '3'
    }
}
