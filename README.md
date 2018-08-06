# My useful configuration files

## Other installs before configuration
* iterm2
** https://www.iterm2.com/
* homebrew
** https://brew.sh/
* macports
** https://www.macports.org/install.php
* tmux
** https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340j
** `brew install tmux`
* rust
** https://www.rust-lang.org/en-US/install.html
* make sure emacs 25 or above is installed (for prelude)
** http://wikemacs.org/wiki/Installing_Emacs_on_OS_X
** verify that the emacs being run is >= emacs25
* emacs prelude
** https://github.com/bbatsov/prelude
* set up git (with ssh-keygen etc)
** https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
* Set up keys in iterm2 to turn left command into "alt/meta"
** Preferences > Keys > Left command key -> Left Option
** Preferences > Profiles > Keys > Left option key -> Esc+
** You will have to allow iterm2 to modify preferences
* Set up keyboard on mac to turn caps lock to additional control
** Settings > Keyboard > Modifier Keys > Caps Lock -> Control
* Install tree utility
** brew install tree
* Install exuberant ctags
** port install ctags

## Configuration Steps:
1. clone this repo
2. copy .bashrc_anon to .bashrc, and .anon_gitconfig to .gitconfig
3. cd ~; ln -s <path_to>/configuration/.bashrc .bashrc
4. Repeat above for .tmux.conf, .gitconfig
5. create symbolic link for custom.el in .emacs.d/personal/
