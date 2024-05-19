# Setup with Dotfiles

## Preparation

```bash
xcode-select --install
```

## Install

### Clone dotfiles repository and create symlinks

```bash
cd ~ && git clone https://github.com/mouaoyama/dotfiles.git
chmod +x ./*.sh
./dotfiles/deploy.sh
```

### Set include gitconfig file

```bash
git config -f ~/.gitconfig.local user.name your_name
git config -f ~/.gitconfig.local user.email your_email
git config -l
```

### Install applications with Brewfile

```bash
./dotfiles/brew.sh
```

### Adding your SSH key to your GitHub account

```bash
./dotfiles/ssh.sh
```

## Thanks to...

### dotfiles

https://github.com/colbycheeze/dotfiles
https://github.com/driesvints/dotfiles
https://github.com/holman/dotfiles
https://github.com/mathiasbynens/dotfiles
https://github.com/paulirish/dotfiles

### gitignore

https://www.toptal.com/developers/gitignore
https://github.com/github/gitignore/tree/master/Global
