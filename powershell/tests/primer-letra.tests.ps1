$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "primer-letra" {
    It "primer-letra" {
        primer-letra     | Should Be ''
        primer-letra 0   | Should Be '0'
        primer-letra 99  | Should Be '9'
        primer-letra -1  | Should Be '-'
        primer-letra -99 | Should Be '-'
        primer-letra 1 2 | Should Be '1'
    }
}
