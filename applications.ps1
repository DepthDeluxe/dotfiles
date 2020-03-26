choco install vscode.install 7zip.install fzf cmake.install neovim llvm pandoc python rust git putty.install

Invoke-WebRequest -Uri "http://repo.msys2.org/distrib/x86_64/msys2-x86_64-20190524.exe" -OutFile "$HOME\Downloads\msys2-x86_64-20190524.exe"
Invoke-WebRequest -Uri "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-win32-sha2.exe?revision=ba95cefa-1880-4932-94d4-ebf30ad3f619&la=en&hash=CA3C442615B4FB102CE8B471DF9ED1E057496060" -OutFile "$HOME\Downloads\gcc-arm-none-eabi-9-2019-q4-major-win32-sha2.exe"