$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "agenda-otra-version" {
    It "agenda-otra-version" {
        agenda-otra-version brenda  | select -Last 3 | select -First 1 | Should Be 'Celular: 5531400539, E-mail: brenzulo.0204@gmail.com'
        agenda-otra-version brenda  | select -Last 1 | Should Be 'Si deseas conocer la informacion de otra persona, escribe su nombre.'
        agenda-otra-version daniela | select -Last 2 | select -First 1 | Should Be 'Celular: 5565311676, E-mail: daniela@correo.io'
        agenda-otra-version constantino | select -Last 2 | select -First 1 | Should Be 'Casa: 57368170'
        agenda-otra-version CONSTANTINO | select -Last 2 | select -First 1 | Should Be 'Casa: 57368170'
        agenda-otra-version cOnStaNtiNo | select -Last 2 | select -First 1 | Should Be 'Casa: 57368170'
        agenda-otra-version roberto     | select -Last 2 | select -First 1 | Should Be "El nombre 'roberto' no esta incluido en la agenda"
    }
}