#---
#LSP
#---
#For returning paginated results for search, displaying them in les
#saving to a temp file, cating the results to the terminal, then clearing the temp. 
#Ensures lsp results appear in terminal but also able to be paged through. 

lsp() {
    local temp_file=$(mktemp)
    ls -lah --color=always "$@" > "$temp_file"
    less -R < "$temp_file"
    cat "$temp_file"
    rm "$temp_file"
}

#--------------
#PROCESS DETAIL
#--------------
#

function psdetail() {
    local keyword=$1
    echo "Searching for processes containing the keyword: $keyword"
    local output=$(ps aux | grep "$keyword" | grep -v grep)
    if [[ -z "$output" ]]; then
        echo "No processes found matching '$keyword'."
        return 1
    fi

    echo -e "PID\tCPU%\tMEM%\tCOMMAND"
    echo "$output" | awk '{
        RED="\033[0;31m"; GREEN="\033[0;32m"; BLUE="\033[0;34m"; RESET="\033[0m";
        print GREEN $2 RESET "\t" RED $3 RESET "\t" BLUE $4 RESET "\t" $11, $12, $13, $14, $15, $16, $17, $18, $19, $20 "\n";
    }'
}
