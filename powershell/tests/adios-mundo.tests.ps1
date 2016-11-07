$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "adios-mundo" {
    It "adios-mundo" {
        adios-mundo | Should Be '¡Adios mundo!'
    }
}
