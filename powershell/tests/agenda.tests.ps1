$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "agenda" {
    It "agenda" {
        agenda brenda      | Should Be 'Celular: 5531400539, E-mail: brenzulo.0204@gmail.com'
        $resultado = "brenda" | agenda
        $resultado  | Should Be 'Celular: 5531400539, E-mail: brenzulo.0204@gmail.com'

        agenda daniela     | Should Be 'Celular: 5565311676, E-mail: daniela@correo.io'
        $resultado = "daniela" | agenda
        $resultado  | Should Be 'Celular: 5565311676, E-mail: daniela@correo.io'

        agenda constantino | Should Be 'Casa: 57368170'
        $resultado = "constantino" | agenda
        $resultado  | Should Be 'Casa: 57368170'

        agenda CONSTANTINO | Should Be 'Casa: 57368170'
        $resultado = "CONSTANTINO" | agenda
        $resultado  | Should Be 'Casa: 57368170'

        agenda cOnStaNtiNo | Should Be 'Casa: 57368170'
        $resultado = "cOnStaNtiNo" | agenda
        $resultado  | Should Be 'Casa: 57368170'

        agenda roberto     | Should Be "El nombre 'roberto' no esta incluido en la agenda"
        $resultado = "roberto" | agenda
        $resultado  | Should Be "El nombre 'roberto' no esta incluido en la agenda"
    }
}
