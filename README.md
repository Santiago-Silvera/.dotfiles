# .dotfiles


## Dependencies:

To make these dotfiles work you will need:

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [oh-my-zsh](https://ohmyz.sh/#install)
- [tmux-plugin-manager](https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation)

> Note: For the tmux-plugin manager you *only* need to clone the repository into your computer.

### Install dependencies for Ubuntu users
```
sudo apt install git-all
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Quick Start

```
git clone https://github.com/Santiago-Silvera/.dotfiles.git ~/.dotfiles | ./.dotfiles/start
```
As easy as that!


## TODO

install.sh command to install dependencies and start.sh for you
