# Dotfiles

## Replicating

`git clone --separate-git-dir=~/.dotfiles git@github.com:Optixal/dotfiles ~`

## Init and Modifying

```sh
git init --bare $HOME/.dotfiles
echo "alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.bash_aliases && source ~/.bash_aliases
config config status.showUntrackedFiles no
```

```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```
