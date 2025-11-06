# macman

This repository is a collection of macOS setup steps/configuration and installation scripts. It is set up to be used in conjunction with [dotfiles](https://github.com/deybhayden/dotfiles).

## Tweaks

### Touchpad

Tap to click

### Keyboard

Install Karabiner Elements and import [karabiner.json](karabiner.json).

### Screenshots

Swap "Save picture of screen" and "Save picture fo selected area" file and clipboard.

## Homebrew

Open up a terminal and run:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Run the other evals at the end of the install as well
```

You're now able to install almost anything you want via `brew`.

[brewt-force.sh](brewt-force.sh) is a utility to install a lot of dev utilities.

## Dotfiles

To use [dotfiles](https://github.com/deybhayden/dotfiles) for ZSH and other CLI configs, do the following:

```shell
# Install stow to symlink files
brew install stow
git clone https://github.com/deybhayden/dotfiles.git
cd dotfiles
mkdir ~/.config ~/.local
stow -t ~ .
# These two often have custom setups, so these are just starts
cp .gitconfig ~
cp .zprofile ~
```

## Desktop Apps

You can use Homebrew Casks for this, but I haven't had great experience with casks, so I just use direct downloads for most apps

- [AppCleaner](https://freemacsoft.net/appcleaner/)
- [Google Chrome](https://www.google.com/chrome/dr/download/)
- [Google Drive](https://ipv4.google.com/intl/en_zm/drive/download/)
- [Ghostty](https://ghostty.org/download)
- [Slack](https://slack.com/downloads/mac)
- [Visual Studio Code](https://code.visualstudio.com/Download)
- [Wireguard](https://itunes.apple.com/us/app/wireguard/id1451685025?ls=1&mt=12)
- [Docker Desktop](https://docs.docker.com/desktop/setup/install/mac-install/)
- [Postman](https://www.postman.com/downloads/)
- [Beekeeper Studio](https://www.beekeeperstudio.io/)
- [Maccy](https://maccy.app/)
- [Karabiner Elements](https://karabiner-elements.pqrs.org/)

### VS Code

Open the command palette and choose: `Shell Command: Install 'code' command in PATH` so it's available on the CLI.

## Fonts

[Cascadia Code](https://github.com/microsoft/cascadia-code) - download the latest release, then open Font book and add the fonts to "My Fonts". After that, activate the fonts.

## Automator Quick Actions

### Open in VSCode

Import [Open in VSCode](Open%20in%20VSCode.workflow/) in Automator too add a quick action for opening files or folders in VSCode from Finder.
