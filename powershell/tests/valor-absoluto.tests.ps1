$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "valor-absoluto" {
    It "valor-absoluto" {
        valor-absoluto          | Should Be ''
        valor-absoluto palabra  | Should Be ''
        valor-absoluto -palabra | Should Be ''
        valor-absoluto 0        | Should Be '0'
        valor-absoluto 1        | Should Be '1'
        valor-absoluto -1       | Should Be '1'
        valor-absoluto -99      | Should Be '99'
    }
}
