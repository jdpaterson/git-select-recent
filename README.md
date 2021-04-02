# git-select-recent
Quickly switch between recent local/remote git branches

## Use:

Use it as you would any other bash function.

`git-select-recent` <- Displays local branches (`.git/refs/heads`)

`git-select-recent-remote` <- Displays remote branches (`.git/refs/remotes`) (do a git fetch beforehand)

Pass a number to display more/less branches (default is 10): `git-select-recent 25`

--

## Example setup:

Create a .bash_functions folder `~/.bash_functions`

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
alias recent=git-select-recent 
alias remcent=git-select-recet-remote #Looks through remote branches (do git fetch beforehand)
```

In a git repo, type `recent` or `remcent`, and easily choose which branch to checkout.
