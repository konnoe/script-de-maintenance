#region Setup
Set-Location $PSScriptRoot
Remove-Module PSScriptMenuGui -ErrorAction SilentlyContinue
try {
    Import-Module PSScriptMenuGui -ErrorAction Stop
}
catch {
    Write-Warning $_
    Write-Verbose 'Attempting to import from parent directory...' -Verbose
    Import-Module '..\'
}
#endregion



$params = @{
    csvPath = '.\csv/.\script_listing.csv'
    windowTitle = 'gestionaire de performance'
    buttonBackgroundColor = '#2F8DD2'
    buttonForegroundColor = '#ffffff'
    iconPath = '.\au-secour.ico'
    hideConsole = $true
    noExit = $true
    Verbose = $true
    
   
}

Show-ScriptMenuGui @params