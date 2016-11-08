$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut  = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".tests.", ".")
. "$here\..\$sut"
 
Describe "convertidor-bytes-humano" {
    It "convertidor-bytes-humano" {
        convertidor-bytes-humano                | Should Be ''
        convertidor-bytes-humano palabra        | Should Be ''
        convertidor-bytes-humano -palabra       | Should Be ''
        convertidor-bytes-humano 0              | Should Be '0'
        convertidor-bytes-humano 1023           | Should Be '1023'
        convertidor-bytes-humano 1024           | Should Be '1K'
        convertidor-bytes-humano 1024s          | Should Be ''
        convertidor-bytes-humano 10240          | Should Be '10K'
        convertidor-bytes-humano 102400         | Should Be '100K'
        convertidor-bytes-humano 1024000        | Should Be '1000K'
        convertidor-bytes-humano 10240000       | Should Be '9.77M'
        convertidor-bytes-humano 10240000000    | Should Be '9.54G'
        convertidor-bytes-humano 10240000000000 | Should Be '9.31T'
    }
}
