$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "hola-extranio" {
    It "hola-extranio" {
        hola-extranio | Should Be 'Hola extraño'
		hola-extranio "Daniela"  | Should Be 'Hola Daniela'
		hola-extranio "Priscila" | Should Be 'Hola Priscila'
    }
}
