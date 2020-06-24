function check-domain 
    set result (dig +noall +comments $argv[1] | awk '{print $6}' | head -2 | tail -1 | sed 's/,//g')
    if test $result = "NXDOMAIN"
        echo "Available"
    else
        echo "Not Available"
    end
end