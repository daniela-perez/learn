$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "hola-mundo" {
    It "hola-mundo" {
        hola-mundo | Should Be "¡Hola mundo!"
    }
}
