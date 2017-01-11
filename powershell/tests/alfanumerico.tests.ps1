$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "alfanumerico" {
    It "alfanumerico" {
        alfanumerico      | Should Be 'no'
        alfanumerico -1   | Should Be 'si'
        $resultado = "-1" | alfanumerico
        $resultado  | Should Be "si"

        alfanumerico 1-1      | Should Be 'no'
        $resultado = "1-1" | alfanumerico
        $resultado  | Should Be "no"

        alfanumerico 123$#    | Should Be 'no'
        $resultado = "123$#" | alfanumerico
        $resultado  | Should Be "no"

        alfanumerico '%$123'    | Should Be 'no'
        alfanumerico 'abc$#'    | Should Be 'no'
        alfanumerico '/abc'     | Should Be 'no'
        alfanumerico "11"       | Should Be 'si'
        alfanumerico "abc"      | Should Be 'si'
        alfanumerico "123abc"   | Should Be 'si'
        alfanumerico "1e" "gr5" "$" "qw4" | Should Be 'si si no si'
        $resultado = Write-Output "1e" "gr5" "$" "qw4" | alfanumerico
        $resultado  | Should Be 'si si no si'
    }
}
