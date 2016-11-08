$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "validador-ipv4" {
    It "validador-ipv4" {
        validador-ipv4           | Should Be 'no'
        validador-ipv4 1         | Should Be 'no'
        validador-ipv4 1.1       | Should Be 'no'
        validador-ipv4 1.1.1     | Should Be 'no'
        validador-ipv4 1.1.1.1   | Should Be 'si'
        validador-ipv4 a.b.c.d   | Should Be 'no'
        validador-ipv4 1.1.1.1.1 | Should Be 'no'
        validador-ipv4 254.254.254.255 | Should Be 'si'
        validador-ipv4 254.254.254.256 | Should Be 'no'
    }
}
