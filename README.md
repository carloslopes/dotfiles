carloslopes dotfiles
====================

Requirements
------------

* Install [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
* [iTerm2](http://www.iterm2.com/#/section/home) 
* [Powerline](https://powerline.readthedocs.org/en/latest/index.html)

Install
-------

Clone onto your laptop:
```
git clone git://github.com/carloslopes/dotfiles.git
```

Install:
```
rcup -d dotfiles -x README.md -x LICENSE
```

Configure iTerm2
----------------

Send this text at start: `tmux attach -t base || tmux new -s base`

Configure profile to use [this](https://github.com/Lokaltog/powerline-fonts/pull/16) font
