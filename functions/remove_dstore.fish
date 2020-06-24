# name: remove_dstore

function remove_dstore
    find . -type f -name ".DS_Store" -exec rm '{}' \;
end