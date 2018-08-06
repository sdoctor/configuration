# My useful configuration files

## Other installs
* iterm2
** https://www.iterm2.com/
* homebrew
** https://brew.sh/
* tmux
** https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340j
** `brew install tmux`
* rust
** https://www.rust-lang.org/en-US/install.html
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

## Steps:
1. clone this repo
2. copy .bashrc_anon to .bashrc, and .anon_gitconfig to .gitconfig
3. cd ~; ln -s <path_to>/configuration/.bashrc .bashrc
4. Repeat above for .tmux.conf, .gitconfig
