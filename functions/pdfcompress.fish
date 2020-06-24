# name: mkcd

function pdfcompress
    echo "Compressing "$argv[1]" to "$argv[2]"..."
    /usr/local/bin/gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4  -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$argv[2] $argv[1]
end