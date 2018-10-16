
## Oh My Zsh

### Description

This is my fork of Oh My Zsh, which I've basically done for the following reasons:

##### 1. Custom theme

I wanted a custom prompt theme, which is located at `themes/mpstewart.zsh-theme`.

##### 2. Easier installation

Updated the install script to point to this repo, so installation is easier.

##### 3. Smaller footprint

I removed all of the plugins that I don't use or touch. All I really needed was `git` and `wd` anyways.


### Installation

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/mpstewart/oh-my-zsh/master/tools/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/mpstewart/oh-my-zsh/master/tools/install.sh -O -)"
```

### Plugins

```shell
plugins=(
  git
  wd
)
```

### Themes

We'll admit it. Early in the Oh My Zsh world, we may have gotten a bit too theme happy. We have over one hundred themes now bundled. Most of them have [screenshots](https://wiki.github.com/robbyrussell/oh-my-zsh/themes) on the wiki. Check them out!


```shell
ZSH_THEME="mpstewart"
```

## Advanced Topics

If you're the type that likes to get their hands dirty, these sections might resonate.

### Advanced Installation

Some users may want to change the default path, or manually install Oh My Zsh.

#### Custom Directory

The default location is `~/.oh-my-zsh` (hidden in your home directory)

If you'd like to change the install directory with the `ZSH` environment variable, either by running `export ZSH=/your/path` before installing, or by setting it before the end of the install pipeline like this:

```shell
export ZSH="$HOME/.dotfiles/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/mpstewart/oh-my-zsh/master/tools/install.sh)"
```

#### Manual Installation

##### 1. Clone the repository:

```shell
git clone https://github.com/mpstewart/oh-my-zsh.git ~/.oh-my-zsh
```

##### 2. *Optionally*, backup your existing `~/.zshrc` file:

```shell
cp ~/.zshrc ~/.zshrc.orig
```

##### 3. Create a new zsh configuration file

You can create a new zsh config file by copying the template that we have included for you.

```shell
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
```

##### 4. Change your default shell

```shell
chsh -s /bin/zsh
```

##### 5. Initialize your new zsh configuration

Once you open up a new terminal window, it should load zsh with Oh My Zsh's configuration.

## Getting Updates

By default, you will be prompted to check for upgrades every few weeks. If you would like `oh-my-zsh` to automatically upgrade itself without prompting you, set the following in your `~/.zshrc`:

```shell
DISABLE_UPDATE_PROMPT=true
```

To disable automatic upgrades, set the following in your `~/.zshrc`:

```shell
DISABLE_AUTO_UPDATE=true
```

### Manual Updates

If you'd like to upgrade at any point in time (maybe someone just released a new plugin and you don't want to wait a week?) you just need to run:

```shell
upgrade_oh_my_zsh
```

Magic! 🎉

## Uninstalling Oh My Zsh

Oh My Zsh isn't for everyone. We'll miss you, but we want to make this an easy breakup.

If you want to uninstall `oh-my-zsh`, just run `uninstall_oh_my_zsh` from the command-line. It will remove itself and revert your previous `bash` or `zsh` configuration.
