# blvim install script for Windows.
Write-Host @"
.  .
|_ |.  ,.._ _
[_)| \/ |[ | )

Biel A. P. vim bundle.

- https://b-ap.xyz
- https://git.b-ap.xyz/blvim
"@


echo "Installing blvim..."

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
	echo "Please, run PowerShell as Administrator so the script can create symlinks."
	exit
}

pushd ~

if (!(Test-Path "~\.blvim)) {
	echo "Cloning blvim into ~\.blvim"
	git clone https://git.b-ap.xyz/blvim ~\.blvim
}

mkdir -Path ~\.blvim\autoload -Force
mkdir -Path ~\.blvim\bundle -Force
cmd /c rmdir %LOCALAPPDATA%\nvim\
cmd /c rmdir %USERPROFILE%\vimfiles\
cmd /c rmdir %USERPROFILE%\.vim\

if (Test-Path "~\.blvim\init.vim" -PathType Leaf) {
	Remove-Item -Path ~\.blvim\init.vim -Force -Recurse
	Remove-Item -Path ~\.blvim\ginit.vim -Force -Recurse
}

cmd /c mklink /D %USERPROFILE%\vimfiles\ %USERPROFILE%\.blvim\
cmd /c mklink /D %USERPROFILE%\.vim\ %USERPROFILE%\.blvim\
cmd /c mklink /D %LOCALAPPDATA%\nvim\ %USERPROFILE%\.blvim\
cmd /c mklink %USERPROFILE%\.blvim\init.vim %USERPROFILE%\.blvim\vimrc
cmd /c mklink %USERPROFILE%\.blvim\ginit.vim %USERPROFILE%\.blvim\core\gui.vim

echo "Installing Vim-Plug."
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\.blvim\autoload\plug.vim"))

Pop-Location

echo "Finished! Now, run, blvim and execute ':PlugInstall'!"
