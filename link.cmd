del "%userprofile%\AppData\Roaming\Code\User\settings.json"
mklink "%userprofile%\AppData\Roaming\Code\User\settings.json" "%cd%\vscode\settings.json"

rmdir "%userprofile%\AppData\Local\nvim"
mklink /D "%userprofile%\AppData\Local\nvim" "%cd%\nvim"

del "%userprofile%\.gitconfig"
mklink "%userprofile%\.gitconfig" "%cd%\.gitconfig"

del "%userprofile%\.vimrc"
mklink "%userprofile%\.vimrc" "%cd%\.vimrc"