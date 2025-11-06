#!/bin/bash

brew update

# zsh
brew install zsh zsh-autosuggestions zsh-syntax-highlighting
sudo chsh -s /usr/local/bin/zsh "$USER"

# tools
brew install awscli direnv eza gh gpg jq ripgrep stow
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# aws session manager
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/session-manager-plugin.pkg" -o "session-manager-plugin.pkg"
sudo installer -pkg session-manager-plugin.pkg -target /
sudo ln -s /usr/local/sessionmanagerplugin/bin/session-manager-plugin /usr/local/bin/session-manager-plugin

# langs
brew install nvm pyenv

# Python
echo "Installing global python tools"
pyenv install 3.12
pyenv global 3.12
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
pip install --upgrade pip
curl -LsSf https://astral.sh/uv/install.sh | sh

# Node
echo "Installing global npms"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install lts/jod
nvm alias default lts/jod
nvm use default
npm install -g @openai/codex @anthropic-ai/claude-code

# Otpgen
echo "Installing otpgen"
mkdir -p $REPO_DIR/tools
git clone https://github.com/deybhayden/otpgen.git $REPO_DIR/tools/otpgen
pushd $REPO_DIR/tools/otpgen
uv sync
popd