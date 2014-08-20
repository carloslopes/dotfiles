carloslopes dotfiles
====================

Requirements
------------

* Install [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
* [iTerm2](http://www.iterm2.com/#/section/home) 
* [Powerline](https://powerline.readthedocs.org/en/latest/index.html)
* Install [reattach-to-user-namespace](http://robots.thoughtbot.com/how-to-copy-and-paste-with-tmux-on-mac-os-x)
* Install [the_silver_searcher](http://robots.thoughtbot.com/faster-grepping-in-vim)
* Install [gh](http://owenou.com/gh/)

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
