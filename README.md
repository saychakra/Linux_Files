# Some program configuration files and dot files for Linux
My personal configuration files for 
- zsh 
- vim and neovim (along with all installed plugin supports)
- Howdy (codes for removing storage of recurrent face recognition snapshots)


## Notes for NeoVim configuration
### Points
- Autopopup and supertab needs to removed for CoC to work
- As of the "nvim" folder, directly copy it and paste in "~/.config/" , (replace the existing empty nvim directory)
- The folder coc, contains the required coc config files along with the installed extensions <br>
    Copy and paste it "~/.config/" path.

### Important links

1. If CoC is being used then, there can be some problems for clangd. Follow the instructions of installation of clangd as mentioned here:
https://clangd.llvm.org/installation.html <br>
After that do a CocInstall coc-clangd. If required run the CocCommand if prompted.<br>
    Reasons:<br>
        - clangd is available on snapcraft, PLEASE do not install it. It is old and the application gets installed in the /snap directory which will require to create symlinks to the user/bin folder. All the more the clang server is broken and does not start up. <br>
        - Install clang-latest version from the link provided and run the commands mentioned below to run clangd10 or clangd11 as the default clangd command.


