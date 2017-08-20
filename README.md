# Regarding the files
Please ensure that all the files are renamed properly prior to using them inside your main setup.
Pyae’s personal setup

## 1. TOC
The Git repo consists of the following
* vim (vim folder + vimrc)
* bash related items (.bash_profile, .bash_aliases)
* tmux config (without theme file)

## 2. Order of installations
1. Cmd Line Tools (standalone, first term prompt)
2. Source .bash_aliases from .bash_profile
3. Homebrew (standalone)
4. nvm (via homebrew)
5. node (via nvm)
6. rvm (standalone)
7. ruby (via rvm)
8. tree & wget (via homebrew)
9. xquartz (via homebrew cask)
10. cocoapods (requires ruby)
11. python3 (via homebrew)

## Setting up on a new mac
Run the following command in the Terminal:
```bash
$ sh -c "$(curl https://github.com/elviskasonlin/dsetup/raw/master/macos_installer.sh)"
```
