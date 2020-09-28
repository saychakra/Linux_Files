# rc_files
My personal configuration files for zsh and vim.


## Notes for NeoVim configuration
### Points
- Autopopup and supertab needs to removed for CoC to work
- As of the "nvim" folder, directly copy it and paste in "~/.config/" , (replace the existing empty nvim directory)
- The folder coc, contains the required coc config files along with the installed extensions <br>
    Copy and paste it "~/.config/" path.

### Important links

1. If CoC is being used then, there can be some problems for clangd. Follow the instructions of installation of clangd as mentioned here:
https://clangd.llvm.org/installation.html <br>
after that do a CocInstall coc-clangd. If required run the CocCommand if prompted.

