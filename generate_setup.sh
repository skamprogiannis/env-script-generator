#!/bin/bash
# -------------------------------------------------------
# Script: generate_setup.sh
# Purpose: Generate a personalized setup_dev_env.sh script
# Author: Stefanos Kamprogiannis (Gitea: skamprog)
# -------------------------------------------------------

# Exit on error
set -e

# --- Ask for user input ---
read -p "Enter your git name: " GIT_NAME
read -p "Enter your git email: " GIT_EMAIL

OUTPUT_SCRIPT="setup_dev_env.sh"

# --- Create the setup script ---
cat > "$OUTPUT_SCRIPT" <<EOL
#!/bin/bash
# -------------------------------------------------------
# Script: setup_dev_env.sh
# Purpose: Clone repo, set up git config,
#          and configure keyboard layout
# Generated for: $GIT_NAME
# -------------------------------------------------------

set -e

# --- Configure Git user info ---
echo "Configuring Git user information..."
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"

# --- Configure Git to store credentials globally ---
echo "Configuring Git credential helper..."
git config --global credential.helper store

# --- Set VS Code as the default Git commit editor ---
echo "Setting VS Code as Git editor..."
git config --global core.editor "code --wait"

# --- Clone the repository ---
echo "Cloning repository..."
git clone "https://platform.zone01.gr/git/$GIT_NAME/piscine-go" /home/student/Documents/piscine-go

# --- Set up keyboard layouts (English + Greek) ---
echo "Setting up keyboard layouts..."
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'gr')]"

# --- Set up Super + Space shortcut to switch keyboard ---
echo "Configuring keyboard shortcut (Super + Space)..."
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space']"

# --- Done ---
echo "✅ Setup complete!"
EOL

# --- Make the script executable ---
chmod +x "$OUTPUT_SCRIPT"

echo "✅ Generated $OUTPUT_SCRIPT for $GIT_NAME!"

# --- Ask to run the script now ---
read -p "Do you want to run the generated setup script now? (y/n): " RUN_NOW
if [[ "\$RUN_NOW" =~ ^[Yy]$ ]]; then
    echo "Running $OUTPUT_SCRIPT..."
    bash "./$OUTPUT_SCRIPT"
else
    echo "You can run it later with: ./setup_dev_env.sh"
fi