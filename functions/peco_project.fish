function peco_project
    exa -ad ~/Projects/working/*/* --level 2 | peco --layout=bottom-up | read foo && cd $foo
end
