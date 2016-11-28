$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "contar-palabras" {
    BeforeEach {
        "hola mundo cruel" > $here\contar-palabras.1
        "Git is the most popular version control system that developers use to track and share code" > $here\contar-palabras.2
    }

    AfterEach {
        Remove-Item $here\contar-palabras.1
        Remove-Item $here\contar-palabras.2
        Remove-Item $here\contar-palabras.3
    }

    It "contar-palabras" {
        contar-palabras $here\contar-palabras.1 | Should Be '3'
        "Hola mundo cruel" | contar-palabras | Should be '3'
        contar-palabras $here\contar-palabras.2 | Should Be '16'
        contar-palabras $here\contar-palabras.1 $here\contar-palabras.2 | Should Be '19'
        "Hola mundo cruel" | contar-palabras $here\contar-palabras.1 | Should Be '6'
    }
}