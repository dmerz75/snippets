(TeX-add-style-hook
 "mylatex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "graphicx"
    "xcolor"
    "amsmath"
    "datetime"
    "hyperref"
    "caption"
    "subcaption"
    "titlesec")
   (TeX-add-symbols
    '("mycommand" 1))))

