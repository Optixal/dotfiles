# Dotfiles

![Off White](https://user-images.githubusercontent.com/19287477/35021551-51a0a878-fb6c-11e7-8ac2-c84141d5611b.png)

Off White - https://www.reddit.com/r/unixporn/comments/7qss5v/i3gaps_offwhite/

---

![Dark Leet](https://user-images.githubusercontent.com/19287477/34510107-f28161a6-f08b-11e7-8c39-9f6fe511c38e.png)

Dark Leet

---

![First Rice](https://user-images.githubusercontent.com/19287477/34462910-691ebb3e-ee88-11e7-8df4-ed444a483a5a.png)

First Rice - https://www.reddit.com/r/unixporn/comments/7n9j81/i3gaps_first_rice_kali_as_a_dev_environment_yes/

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
echo "alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.bash_aliases && source ~/.bash_aliases
dot config status.showUntrackedFiles no
```

```sh
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```
