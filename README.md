# Setup with Dotfiles

## Preparation

```bash
xcode-select --install
```

```bash
# cd ~ && git clone https://github.com/mouaoyama/dotfiles.git .dotfiles
# chmod +x ./dotfiles/bin/*.sh

git clone https://github.com/mouaoyama/dotfiles.git
```

## Install

### Clone dotfiles repository and create symlinks

```bash
# make -C ~/.dotfiles deploy
make deploy
```

### Set include gitconfig file

```bash
git config -f ~/.gitconfig user.name your_name
git config -f ~/.gitconfig user.email your_email
git config -l
```

### Install applications with Brewfile

```bash
make brew
```

```bash
# Check Installed applications
brew leaves
brew list --cask -1
mas list

# update Brewfile
brew bundle dump --global --force --taps --brews --casks --mas
```

```bash
# When Xcode Install
sudo xcodebuild -license accept
```

#### Update packages

```bash
brew update && brew upgrade && brew upgrade --cask --greedy && mas upgrade

brew cleanup && brew autoremove && brew doctor
```

### Init system settings on Mac

```bash
# Enable this setting for your terminal,
# System Preferences > Privacy > Full Disk Access
# some properties is not working!
# make -C ~/dotfiles defaults
```

#### Change your computer’s name or local hostname on Mac

##### Sonoma

```
System Setting > General > About > Name
System Setting > General > Shraring > Local hostname
System Setting > Users & Groups > User Name
```

##### Ventura

```
System Setting > Users & Groups, Control+click the user account, select Advanced Options > User name
```

### Adding your SSH key to your GitHub account

```bash
make ssh
```

### Setting vscode

```bash
make vscode
```

```bash
# backup extensions
code --list-extensions > ~/.config/vscode/extensions
```

## Thanks to...

### dotfiles

- https://github.com/colbycheeze/dotfiles
- https://github.com/driesvints/dotfiles
- https://github.com/holman/dotfiles
- https://github.com/mathiasbynens/dotfiles
- https://github.com/paulirish/dotfiles
- https://wiki.archlinux.org/title/Dotfiles

### gitignore

- https://github.com/github/gitignore/tree/master/Global
- https://www.toptal.com/developers/gitignore

### defaults

- https://developer.apple.com/documentation/devicemanagement
- https://macos-defaults.com
- https://mths.be/macos
