## To ensure Ubuntu does not break!

    sudo apt install cryptsetup lvm2

## Development

    sudo apt install neovim python-neovim python3-neovim tmux docker.io docker-compose jq kitty python-virtualenv xstow
    rm ~/.gitignore ~/.bashrc ~/.profile
    cd ~/Projects/dotfiles
    xstow -t ~/ *
    git clone https://github.com/chriskempson/base16-shell.git ~/.vendor/base16-shell
    base16_tomorrow-night
    virtualenv ~/.python-default-virtualenv
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cd ~/.config/nvim/plugged/YouCompleteMe/
    sudo apt install cmake build-essential
    sudo apt install python-dev
    # https://github.com/powerline/fonts

## Quake

    sudo apt install openjdk-8-jdk quakespasm
    # https://www.quaddicted.com/tools/quake_injector
    sudo update-alternatives --config java

## Jekyll

    sudo apt install ruby-dev ruby
    sudo gem install bundler jekyll

# NodeJS / NVM

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

