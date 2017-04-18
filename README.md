# verzola's .vimrc
my vimrc and 1 cmd auto installer

![Image of my vim](https://raw.githubusercontent.com/verzola/.vimrc/master/vimux.png)

## pre-requirements
- git
- vim

## suggestions
- https://github.com/verzola/.tmux
- https://github.com/ryanoasis/nerd-fonts

## install
this script installs Vundle, clone this repo and creates a symbolic link in ~/.vimrc to ~/git/vimrc/.vimrc
```sh
$ curl -L https://goo.gl/10StQU | bash
```

## features
- vundle to manage plugins
- nice sensible defaults
- detailed comments on almost every line of vimrc
- organized in sections (plugins, settings, plugin settings, abbreviations, mappings & auto commands)
- php integration
- git integration
- fast shortcuts with leader key
- :w!! to save as sudo
- 4 spaces indentation
- abbreviations for typo in commands (:W, :Q, :X)

### maps & shortcuts
| Shortcut | Meaning |
|----------|---------|
| ctrl+e   | toggle nerdtree |
|ctrl+e | toggle nerdtree |
|gt | next tab |
|gT | prev tab |
|ctrl+p | go to file |
|ctrl+n | select next (multiple cursors) |
|ctrl + h | go a split left |
|ctrl + l | go a split right |
|ctrl + j | go a split below |
|ctrl + k | go a split upper |
| , | leader key |
|leader+w | save |
|leader+q | quit |
|leader+x | save&quit |
|leader+ev | edit vimrc |
|leader+sv | source vimrc |
|leader+pm | toggle paste mode |
|leader+h | toggle search highlight |
|leader+pi | plugin install |
|leader+ga | git add |
|leader+gs | git status |
|leader+gc | git commit |
|leader+gd | git diff |
|leader+gp | git push |
|leader+gu | git pull |
|leader+gb | git branch |
|leader+gbl | git blame |
|leader+go | git checkout |
|leader+gl | git log |
