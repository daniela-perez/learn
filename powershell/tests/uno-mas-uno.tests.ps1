$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "uno-mas-uno" {
    It "uno-mas-uno" {
        uno-mas-uno | Should Be '2'
    }
}
