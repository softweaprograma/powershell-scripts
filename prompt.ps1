#override default prompt
function prompt {
  Set-PSReadlineOption -Colors @{
    Command     = 'Green'
    Parameter   = 'Gray'
    Operator    = 'Magenta'
    Variable    = 'White'
    String      = 'Yellow'
    Number      = 'Blue'
    Type        = 'Cyan'
    Comment     = 'DarkCyan'
  }
#-BackgroundColor Black
  Write-Host [$(Get-Date)] $([char]0x2192) -ForegroundColor DarkGray  -NoNewline
  Write-Host ""$($executionContext.SessionState.Path.CurrentLocation) -ForegroundColor Cyan 
  #Write-Host "$" -ForegroundColor Magenta -BackgroundColor Black -NoNewline
  "$ ";
}
