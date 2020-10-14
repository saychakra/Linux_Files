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

2. If there is an error with python complete regarding import jedi. Follow these steps: <br>
    i.  Install jedi globally `python3 -m pip install jedi`. This should install jedi globally. <br>
    ii. Now we need to specify the jedi path in coc-settings.json. `python3 -m pip show jedi`. The output is somewhat like this: <br>
    `Name: jedi`<br>
    `Version: 0.17.2` <br>
    `Summary: An autocompletion tool for Python that can be used for text editors.` <br>
    `Home-page: https://github.com/davidhalter/jedi` <br>
    `Author: David Halter` <br>
    `Author-email: davidhalter88@gmail.com` <br>
    `License: MIT` <br>
    `Location: /home/sayan/.local/lib/python3.6/site-packages` <br>
    `Requires: parso` <br>
    `Required-by: ` <br>
  iii. Copy the path to jedi i.e. `/home/sayan/.local/lib/python3.6/site-packages`, in this case, to coc-settings.json inside ~/.config/nvim/coc-settings.json. <br>

(Although I have pushed the changed to the coc-settings.json folder and copying it directly should work. But just in case) <br>


### Turning off bluetooth by default while startup
Just create a shell script file with content as `bluetooth off`. Open launcher -> startup application -> add the title and comment -> add the shell script in place of the command entry. <br>
Test if it works (at least it was working last time in my machine!)
