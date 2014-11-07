curl:
  pkg.installed

git:
  pkg.installed

bzr:
  pkg.installed

mercurial:
  pkg.installed

python-pip:
  pkg.installed

python-dev:
  pkg.installed

virtualenvwrapper:
  pip.installed:
    - require:
      - pkg: python-pip

node:
  pkg.installed

npm:
  pkg.installed

coffee-script:
  npm:
    - installed
    - require:
      - pkg: npm

terminator:
  pkg.installed

tmux:
  pkg.installed

zsh:
  pkg.installed

/home/lucasweiblen/.vim:
  file.directory:
    - user: lucasweiblen
    - group: lucasweiblen
    - recurse:
      - user
      - group

/home/lucasweiblen/.vimrc:
  file.managed:
    - source: salt://files/vimrc
    - user: lucasweiblen
    - group: lucasweiblen
    - file_mode: 644

vundle:
  git.latest:
    - name: git://github.com/gmarik/vundle.git
    - target: /home/lucasweiblen/dev/src/github.com/gmarik/vundle
    - user: lucasweiblen
    - group: lucasweiblen
  file.symlink:
    - name: /home/lucasweiblen/.vim/bundle/vundle
    - target: /home/lucasweiblen/dev/src/github.com/gmarik/vundle
    - makedirs: true

/home/lucasweiblen/.gitconfig:
  file.managed:
    - source: salt://files/gitconfig
    - user: lucasweiblen
    - group: lucasweiblen
    - file_mode: 644

/home/lucasweiblen/.tmux.conf:
  file.managed:
    - source: salt://files/tmux.conf
    - user: lucasweiblen
    - group: lucasweiblen
    - file_mode: 644



