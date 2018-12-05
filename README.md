## To ensure Ubuntu does not break!

    sudo apt install cryptsetup lvm2

## Development

    sudo apt install  tmux docker.io docker-compose jq kitty xstow apt-transport-https ca-certificates curl software-properties-common
    rm ~/.gitignore ~/.bashrc ~/.profile
    cd ~/Projects/dotfiles
    xstow -t ~/ *

    # https://github.com/powerline/fonts
    git clone https://github.com/chriskempson/base16-shell.git ~/.vendor/base16-shell
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.vendor/bash-git-prompt
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    base16_tomorrow-night

    sudo apt install neovim python-neovim python3-neovim python-virtualenv
    virtualenv ~/.python-default-virtualenv
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cd ~/.config/nvim/plugged/YouCompleteMe/
    sudo apt install cmake build-essential python-dev

## Quake

    sudo apt install openjdk-8-jdk quakespasm
    # Install from into ~/.vendor/quake-injector
    # https://www.quaddicted.com/tools/quake_injector
    # Pick the correct version of Java
    # sudo update-alternatives --config java

## Jekyll

    # Use RVM

# NodeJS / NVM

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

