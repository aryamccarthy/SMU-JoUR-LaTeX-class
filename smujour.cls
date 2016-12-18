%% SMU JoUR style
%% Author: Arya D. McCarthy
%% Revised 12/2016

%% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{smujour}


%% Build on KOMA-script extended article class.
\LoadClass[10pt, twocolumn]{scrartcl}
\RequirePackage[letterpaper, margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{authblk}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions*


%% Useful packages.
\RequirePackage{dirtytalk}  % Quote text. He said \say{She said, \say{Hello!}}
\RequirePackage{hyperref}
\usepackage[per-mode=symbol, range-phrase=--, range-units=single]{siunitx}

% Font
% Palatino font needs to be corrected by resetting \bfdefault to bx
\RequirePackage{tgpagella}
\renewcommand{\bfdefault}{bx}
\RequirePackage{microtype}  % Makes letter spacing prettier.
\RequirePackage{textcomp}  % Add some characters that may be missing.

% Two-column hotfixes
\RequirePackage[keeplastbox]{flushend}  % Balance length of last page.
\RequirePackage{abstract}

% Captions
\RequirePackage[hypcap,font=small,labelfont=bf]{caption}
\RequirePackage{subcaption}


%% Important definitions
\bibliographystyle{acm}
\providecommand{\email}[1]{\href{mailto:#1}{#1}}

\newcommand\theabstract[1]{\renewcommand\@theabstract{#1}}
\newcommand\@theabstract{\@latex@error{No \noexpand\theabstract given}\@ehc}

% Full-width abstract in two-col environment.
\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{%
	\twocolumn[%
		\oldmaketitle
		\begin{onecolabstract}
			\@theabstract
		\end{onecolabstract}
	]
	\saythanks
}

%% Document-specific definitions we've accrued over time and may reuse.

\newcommand{\specialcell}[2][c]{%
  \begin{tabular}[#1]{@{}r@{}}#2\end{tabular}}  % Table cell with line breaks.


\newcommand*\mean[1]{\overline{#1}}  % Notation for mean of variable.



