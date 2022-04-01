function peco_project
    exa -ad $HOME/Projects/working/*/* --level 2 | peco --layout=bottom-up | read foo && cd $foo
end