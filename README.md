# My useful configuration files

## Other installs before configuration
* iterm2
  * https://www.iterm2.com/
* homebrew
  * https://brew.sh/
* macports
  * https://www.macports.org/install.php
* tmux
  * https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340j
  * `brew install tmux`
* rust
  * https://www.rust-lang.org/en-US/install.html
* make sure emacs 25 or above is installed (for prelude)
  * http://wikemacs.org/wiki/Installing_Emacs_on_OS_X
  * verify that the emacs being run is >= emacs25
* emacs prelude
  * https://github.com/bbatsov/prelude
* set up git (with ssh-keygen etc)
  * https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
* Set up keys in iterm2 to turn left command into "alt/meta"
  * Preferences > Keys > Left command key -> Left Option
  * Preferences > Profiles > Keys > Left option key -> Esc+
  * You will have to allow iterm2 to modify preferences
* Set up keyboard on mac to turn caps lock to additional control
  * Settings > Keyboard > Modifier Keys > Caps Lock -> Control
* Install tree utility
  * brew install tree
* Install exuberant ctags
  * port install ctags or brew install ctags
  * For rust, you can use https://github.com/dan-t/rusty-tags
  * In emacs, use M-x visit-tags-table to replace current tags with the new tags

## Configuration Steps:
1. clone this repo
2. copy .bashrc_anon to .bashrc, and .anon_gitconfig to .gitconfig
3. cd ~; ln -s <path_to>/configuration/.bashrc .bashrc
4. Repeat above for .tmux.conf, .gitconfig
5. create symbolic link for custom.el in .emacs.d/personal/
6. Make sure your git config settings are updated - run git config -l to verify
* One thing to check is the editor (on mac esp). 
  * git config --global core.editor "emacs -nw"
  * However, note that this editor will be in read-only mode, so you need

## Emacs packages to install
* M-x package-install projectile (this should come as part of prelude)
* TODO: for Mac, need to figure out how to set font permanently in emacs
* TODO: for Mac with external keyboard, had to do some extra configuration (also for external scroll-wheel mouse)
* Some of the prelude key bindings are weird (C-c C-P rather than C-c P) and (M-x adds a ^ to the query)
* TODO: How to get etags up and running for rust
