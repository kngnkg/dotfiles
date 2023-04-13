# Install Starship
curl -sS https://starship.rs/install.sh | sh

# .bashrc等が存在するならバックアップに待避する

# Create symbolic links
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
