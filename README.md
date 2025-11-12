# env-script-generator

**Generate personalized development environment setup scripts** for git, VS Code, and keyboard shortcuts. This tool makes it easy for zone01 piscine talent to bootstrap their environment on Linux machines with minimal manual configuration.  

---

## Features

- Configure git user name and email
- Set up git credential helper to store credentials
- Set VS Code as the default git commit editor
- Clone the piscine-go repository automatically in Documents
- Configure keyboard layouts (default: English + Greek)
- Set up Super + Space shortcut to switch keyboard layouts

---

## Getting Started

### 1. Download this repository

This can be done by cloning the repository

`git clone https://github.com/skamprogiannis/env-script-generator.git`
`cd env-script-generator`

or downloading the zip and extracting the files.

### 2. Run the generator

`bash generate_setup.sh`

You will be prompted to enter:

- Your gitea email
- Your gitea name
- Whether you want to run the generated script

### 3. Run your personalized setup script

After running the generator, a new script called setup_dev_env.sh will be created. Run it to set up your environment:

`./setup_dev_env.sh`

### 4. Store the generated file at a convenient location

Once your setup_dev_env.sh is generated and verified to work, store it somewhere convenient so you can easily reuse it in future setups.
You can:

- Push it to your **personal Gitea repository**, or
- Share it in your **private Element room**, or
- Keep a backup in your preferred cloud storage.

This way, you can quickly bootstrap any new Linux environment with your personal configuration.

## Customization

Keyboard layouts: By default, the generated script sets English + Greek. You can manually edit setup_dev_env.sh to add other layouts.

git editor: Defaults to VS Code. You can change it in the generated script if desired.

## Why use this?

Instead of manually configuring git, cloning the piscine-go repository, and setting system preferences for each new machine or developer, this project automates the process and provides a reproducible setup.

## License

This project is licensed under the **GPL3.0 License.**

## Author

Stefanos Kamprogiannis – [gitea Profile](https://platform.zone01.gr/git/skamprog)

## Acknowledgments

Special thanks to [kschrisos](https://platform.zone01.gr/git/kchrisos) for beta testing and bug reports that helped improve this project.