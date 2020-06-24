# name: reset permissions

function reset_permissions
    echo -e 'Working...'
    find . -type f -exec chmod 644 '{}' \;
    find . -type d -exec chmod 755 '{}' \;
    echo "Done!"
end