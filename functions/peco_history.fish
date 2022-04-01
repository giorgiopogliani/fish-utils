function peco_history
    history | peco --layout=bottom-up | read cmd && commandline $cmd
end