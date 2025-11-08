# env-script-generator

**Generate personalized development environment setup scripts** for git, VS Code, and keyboard shortcuts. This tool makes it easy for zone01 piscine talent to bootstrap their environment on Linux machines with minimal manual configuration.  

---

## Features

- Configure git user name and email
- Set up git credential helper to store credentials
- Set VS Code as the default git commit editor
- Clone the piscine-go repository automatically
- Configure keyboard layouts (default: English + Greek)
- Set up Super + Space shortcut to switch keyboard layouts

---

## Getting Started

### 1. Clone this repository

`git clone https://github.com/YOUR_USERNAME/env-script-generator.git`
`cd env-script-generator`

### 2. Run the generator

`./generate_setup.sh`

You will be prompted to enter:
- Your gitea name
- Your gitea email

### 3. Run your personalized setup script

After running the generator, a new script called setup_dev_env.sh will be created. Run it to set up your environment:

`./bash generate_setup.sh`

### 4. Store the generated file at a convenient location

This can be a gitea repo or a personal matrix room.

## Customization

Keyboard layouts: By default, the generated script sets English + Greek. You can manually edit setup_dev_env.sh to add other layouts.

git editor: Defaults to VS Code. You can change it in the generated script if desired.

## Why use this?

Instead of manually configuring git, cloning the piscine-go repository, and setting system preferences for each new machine or developer, this project automates the process and provides a reproducible setup.

## License

This project is licensed under the **GPL3.0 License.**

## Author

Stefanos Kamprogiannis – [gitea Profile](https://platform.zone01.gr/git/skamprog)