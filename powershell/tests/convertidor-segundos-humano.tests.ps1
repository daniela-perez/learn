$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"

Describe "convertidor-segundos-humano" {
    It "convertidor-segundos-humano" {
        convertidor-segundos-humano                | Should Be ''
        convertidor-segundos-humano palabra        | Should Be ''
        convertidor-segundos-humano -palabra       | Should Be ''
        convertidor-segundos-humano 0              | Should Be ''
        convertidor-segundos-humano 1 1            | Should Be '1s'
        convertidor-segundos-humano 60             | Should Be '1m'
        convertidor-segundos-humano 61             | Should Be '1m 1s'
        convertidor-segundos-humano 3600           | Should Be '1h'
        convertidor-segundos-humano 3660           | Should Be '1h 1m'
        convertidor-segundos-humano 3661           | Should Be '1h 1m 1s'
        convertidor-segundos-humano 90061          | Should Be '1d 1h 1m 1s'
        $resultado = "90061" | convertidor-segundos-humano
        $resultado  | Should Be '1d 1h 1m 1s'
    }
}
