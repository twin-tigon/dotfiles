Set-PSReadLineOption -EditMode Vi

function Invoke-DotfilesGit {
    & git.exe --git-dir=$HOME\.dotfiles\ --work-tree=$HOME @args
}

New-Alias -Name e -Value nvim.exe
New-Alias -Name g -Value git.exe
New-Alias -Name code -Value code-insiders.exe
New-Alias -Name dotfiles -Value Invoke-DotfilesGit

