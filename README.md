# git-select-recent
Quickly switch between recent local/remote git branches

Setup:

An example setup is:

Create a .bash_functions folder `mkdir ~/.bash_functions`
Copy git-select-recent.sh into the `~/.bash_functions` folder.
In bashrc/bash_profile/zshrc, look through all files in the `~/.bash_functions` folder:

``` 
if [ -d ~/.bash_functions ]; then
        for file in ~/.bash_functions/*; do
                . "$file"
        done
fi
```

Add aliases
```
alias recent=git-select-recent #Looks through local branches
alias remcent=git-select-recet-remote #Looks through remote branches (do git fetch beforehand)
```

In a git repo, type `recent` or `remcent`, and easily choose which branch to checkout.
