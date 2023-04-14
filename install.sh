# for devcontainer

# Install Starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes

# Create backup directory
mkdir -p ~/dotbackup

# Create symbolic links
if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/dotbackup/bashrc_$(date +%Y%m%d_%H%M%S)
fi
ln -s ~/dotfiles/.bashrc ~/.bashrc

if [ -e ~/.zshrc ]; then
    mv ~/.zshrc ~/dotbackup/zshrc_$(date +%Y%m%d_%H%M%S)
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

source ~/.bashrc