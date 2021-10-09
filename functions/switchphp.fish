function switchphp
    brew unlink php@7.3
    brew unlink php@7.4
    brew unlink php@8.0

    brew link php@$argv[1]
end


