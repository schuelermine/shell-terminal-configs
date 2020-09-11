function prompt {
    $Success, $Code = $?, $LASTEXITCODE
    $SuccessString = $Success ? "OK" : "!!"
    $SuccessColor = $Success ? "Green" : "Red"
    $CodeColor = $Code ? "Red" : "Green"
    $MiddleColor = ([Bool]$Code) -or (-not $Success) ? "Red" : "Green"
    $SuccessColor = $SuccessColor -as [ConsoleColor]
    $CodeColor = $CodeColor -as [ConsoleColor]
    $MiddleColor = $MiddleColor -as [ConsoleColor]
    $Code ??= 0
    $Path = Get-Location
    $Time = Get-Date -Format "HH:mm:ss"
    
    Write-Host "┌[$Time] " -NoNewline
    Write-Host "[\>_] " -ForegroundColor DarkGray -NoNewline
    Write-Host "$Env:USERNAME " -ForegroundColor Blue -NoNewline
    Write-Host "$Path " -ForegroundColor Green -NoNewline
    Write-Host "[$SuccessString" -ForegroundColor $SuccessColor -NoNewline
    Write-Host "/" -ForegroundColor $MiddleColor -NoNewline
    Write-Host "$Code] " -ForegroundColor $CodeColor

    Write-Output ($PromptStem + $PromptEnd)
}
