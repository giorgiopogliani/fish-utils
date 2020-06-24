function exceltocsv
    set input $argv[1];
    set output $argv[2];

    touch $output

    python3 -c "import pandas as pd
read_file = pd.read_excel('$input') 
read_file.to_csv ('$output', index = None, header=True)
    "
end