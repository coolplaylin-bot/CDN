if (!Get-Command -Name scoop -ErrorAction SilentlyContinue){
  Write-Host "You hasn't installed Scoop, Please install it before you run this script" -ForegroundColor Red
  Write-Host "Installation: https://scoop.sh/" -ForegroundColor Blue
  return;
}

# Install necessary software via scoop
Scoop install gcc fzf curl jq sudo

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser -Force
Install-Module -Name z -Scope CurrentUser -Force
Install-Module -Name Psfzf -Scope CurrentUser -Force


