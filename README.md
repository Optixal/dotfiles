# Dotfiles

![Dark Leet](https://user-images.githubusercontent.com/19287477/34510107-f28161a6-f08b-11e7-8c39-9f6fe511c38e.png)

*Dark Leet*

## Replicating

`git clone --separate-git-dir=~/.dotfiles git@github.com:Optixal/dotfiles ~`

## Misc

### Other Modifications

#### Disable Terminal Bell

/etc/inputrc

```
set bell-style none
```

### Init and Modifying

```sh
git init --bare $HOME/.dotfiles
echo "alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.bash_aliases && source ~/.bash_aliases
dotfiles config status.showUntrackedFiles no
```

```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```
