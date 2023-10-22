# Import Module
Import-Module Terminal-Icons
Import-Module PSFzf

# the fuck
$env:PYTHONIOENCODING="utf-8"
function fuck {
    $history = (Get-History -Count 1).CommandLine;
    if (-not [string]::IsNullOrWhiteSpace($history)) {
        $fuck = $(thefuck $args $history);
        if (-not [string]::IsNullOrWhiteSpace($fuck)) {
            if ($fuck.StartsWith("echo")) { $fuck = $fuck.Substring(5); }
            else { Invoke-Expression "$fuck"; }
        }
    }
    [Console]::ResetColor()
}

function OpenCurrentFolder {
  param (
    $Path = "."
  )
  Invoke-Item $Path
}

function Update-Package {
  $Commnad = @{}
  if (Get-Command -Name winget -ErrorAction SilentlyContinue) {
    $Commnad["升级软件包：Winget"] = "winget upgrade --all"
  }
  if (Get-Command -Name scoop -ErrorAction SilentlyContinue) {
    $Commnad["升级软件包：Scoop"] = "scoop update -a"
  }
  if (Get-Command -Name npm -ErrorAction SilentlyContinue) {
    $Commnad["升级软件包：npm"] = "npm update -g"
  }
  foreach ($description in $Commnad.Keys) {
    Write-Host $description -ForegroundColor Blue
    $command = $Commnad[$description]
    Invoke-Expression -Command $command
  }
}

function which {
  param (
    $command
  )
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Settings
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias -Name vi -Value nvim
Set-Alias -Name ll -Value ls
Set-Alias -Name g -Value gi
Set-Alias -Name open -Value OpenCurrentFolder
Set-Alias -Name o -Value OpenCurrentFolder
Set-Alias -Name update-all -Value Update-Package
Set-Alias -Name ? -Value which
