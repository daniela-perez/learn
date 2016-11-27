$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "uno-menos-uno" {
    It "uno-menos-uno" {
        uno-menos-uno | Should Be '0'
    }
}
