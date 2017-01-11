﻿Add-Type -AssemblyName System.Windows.Forms

function Set-PowerState {
    [CmdletBinding()]
    param (
          [System.Windows.Forms.PowerState] $PowerState = [System.Windows.Forms.PowerState]::Suspend
        , [switch] $DisableWake
        , [switch] $Force
    )

    begin {
        Write-Verbose -Message 'Executing Begin block';

        if (!$DisableWake) { $DisableWake = $false; };
        if (!$Force)       { $Force = $false; };

        Write-Verbose -Message ('Force is: {0}' -f $Force);
        Write-Verbose -Message ('DisableWake is: {0}' -f $DisableWake);
    }

    process {
        Write-Verbose -Message 'Executing Process block';
        try {
            Write-Host "Hibernando..."
            $Result = [System.Windows.Forms.Application]::SetSuspendState($PowerState, $Force, $DisableWake);
        }
        catch {
            Write-Error -Exception $_;
        }
    }

    end {
        Write-Verbose -Message 'Executing End block';
        Write-Debug -Message 'Debug';
    }
}

# Call the function
Set-PowerState -PowerState Hibernate -DisableWake -Force;