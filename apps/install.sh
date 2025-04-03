#!/bin/sh

source "${DOTFILES_DIR}/functions.sh"
Prompt "Do you want install apps?"

echo "🚧 installing apps..."
if [[ "$(uname -m)" == "arm64" ]]; then
  export PATH="/opt/homebrew/bin:${PATH}"
fi
brew bundle --file="${DOTFILES_APPS_DIR}/Brewfile" --quiet
brew cleanup
echo "✅ apps installed"
