# SMU-JoUR-LaTeX-class
LaTeX style for articles published in SMU Journal of Undergraduate Research

*Revised 12/2016.*

---

The .cls file abstracts away all of the packages and tweaks to generate our layout. To use, (1) add the file `smujour.cls` to the same folder as your main `.tex` file, and (2) create your document as follows:

```latex
\documentclass{smujour}

\title{My title}
\author{My name}
\theabstract{...}

\begin{document}
\maketitle

...

\end{document}
```

The file `example.tex` and its output, `example.pdf`, show the basic format as well as some preferred commands.