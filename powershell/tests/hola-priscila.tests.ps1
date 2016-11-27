$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "hola-priscila" {
    It "hola-priscila" {
        hola-priscila | Should Be '¡Hola Priscila!'
    }
}
