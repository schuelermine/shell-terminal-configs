$IsAdmin =
    (([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::
        GetCurrent()).
        IsInRole(
            [Security.Principal.WindowsBuiltInRole]::
                Administrator))

$AdminPromptComponent = $Admin ? "|A" : ""

Set-Variable -Name IsAdmin -Option ReadOnly
Set-Variable -Name AdminPromptComponent -Option ReadOnly