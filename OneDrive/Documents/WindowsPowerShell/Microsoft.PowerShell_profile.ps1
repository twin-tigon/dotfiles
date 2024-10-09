Set-PSReadLineOption -EditMode Vi

function Invoke-DotfilesGit {
    & git.exe --git-dir=$HOME\.dotfiles\ --work-tree=$HOME @args
}

New-Alias -Name e -Value nvim.exe
New-Alias -Name g -Value git.exe
New-Alias -Name code -Value code-insiders.exe
New-Alias -Name dotfiles -Value Invoke-DotfilesGit


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
