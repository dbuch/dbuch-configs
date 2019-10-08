findpdf() { find . -name '*.pdf' -exec sh -c 'pdftotext "{}" - | grep --with-filename --label="{}" --color "$1"' \; }

alias vim='nvim'
alias vimdiff='nvim -d'
