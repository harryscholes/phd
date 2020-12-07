# replace with inline LaTeX math
sed -i '' -e 's/\$\$/\$/g' chap.md

# convert to LaTeX
pandoc -r markdown-auto_identifiers chap.md -f markdown -t latex -o chap.tex --mathjax --top-level-division=chapter --wrap=none
