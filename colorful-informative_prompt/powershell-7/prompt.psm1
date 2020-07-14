function prompt {
    $Success, $Code = $?, $LASTEXITCODE
    $SuccessColor = $Success ? "Green" : "Red"
    $CodeColor = $Code ? "Red" : "Green"
    $SuccessColor = $SuccessColor -as [ConsoleColor]
    $CodeColor = $CodeColor -as [ConsoleColor]
    $Path = Get-Location
    $Time = Get-Date -Format "HH:mm:ss"
    
    Write-Host "┌[$Time] " -NoNewline
    Write-Host "$Env:USERNAME " -ForegroundColor Blue -NoNewline
    Write-Host "$Path " -ForegroundColor Green -NoNewline
    Write-Host "[$Success] " -ForegroundColor $SuccessColor -NoNewline
    Write-Host "[$Code]" -ForegroundColor $CodeColor

    Write-Output "└▶ "

}