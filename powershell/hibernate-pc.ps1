Add-Type -AssemblyName System.Windows.Forms

function Set-PowerState {
    [CmdletBinding()]
    param (
          [System.Windows.Forms.PowerState] $PowerState = [System.Windows.Forms.PowerState]::Suspend
        , [switch] $DisableWake
        , [switch] $Forcex
    )

    begin {
        if (!$DisableWake) { $DisableWake = $false; };
        if (!$Force)       { $Force = $false; };
    }

    process {

        try {
            $Result = [System.Windows.Forms.Application]::SetSuspendState($PowerState, $Force, $DisableWake);
        }
        catch {
            Write-Error -Exception $_;
        }
    }
}

#Call the function
Set-PowerState -PowerState Hibernate -DisableWake -Force;