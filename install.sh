#!/bin/bash

# for devcontainer

# Function to create symbolic links with backup
create_symlink_with_backup() {
    local src_file="$1"
    local target_file="$2"
    local backup_dir="$3"

    if [ -e "${target_file}" ]; then
        mv "${target_file}" "${backup_dir}/$(basename ${target_file})_$(date +%Y%m%d_%H%M%S)"
    fi
    ln -s "${src_file}" "${target_file}"
}

# Install Starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes

# Create backup directory
mkdir -p ~/dotbackup

# Create .config directory
mkdir -p ~/.config

# Create symbolic links
create_symlink_with_backup ~/dotfiles/.bashrc ~/.bashrc ~/dotbackup
create_symlink_with_backup ~/dotfiles/.zshrc ~/.zshrc ~/dotbackup
create_symlink_with_backup ~/dotfiles/.aliases ~/.aliases ~/dotbackup
create_symlink_with_backup ~/dotfiles/.functions ~/.functions ~/dotbackup
create_symlink_with_backup ~/dotfiles/starship/starship.toml ~/.config/starship.toml ~/dotbackup

source ~/.bashrc

printf "\e[1;32m%s\e[m\n" "Dotfiles installation has successfully completed!"
