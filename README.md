## Neovim windows - Powershell

1. Install neovim `https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-win64.zip`
2. Unzip to `C:\Neovim`
3. Set env path for neovim `C:\Neovim\bin`
4. Create symlink `cmd /c mklink /D C:\Users\{username}\AppData\Local\nvim c:\dev\nvim`
5. Install mingw `choco install mingw`
6. Install fd `choco install fd`
7. Install ripgrep `choco install ripgrep`
8. Open nvim `nvim c:\dev\nvim\init.lua`
9. Install parsers in Neovim via `:TSInstall c, :TSInstall cpp`
10. Package the plugins in Neovim via `:PackerCompile, :PackerInstall`
