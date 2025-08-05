%%% mhk-book.cls %%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk-book}[2025/02/18 Version 3.0 by A. Parikka]

\LoadClass{mhk}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additionally required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additions and changes to the osc class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Book Review Header: Define Items
% ---------------------------------------------------------

\newcommand{\reviewtype}[1]{%
  \gdef\review{#1}
}
\newcommand{\booktitle}[1]{%
  \gdef\btitle{#1}
}
\newcommand{\bookauthor}[1]{%
  \gdef\bauthor{#1}
}
\newcommand{\publisher}[1]{%
  \gdef\pub{#1}
}
\newcommand{\pubyear}[1]{%
  \gdef\bpubyear{#1}
}
\newcommand{\isbn}[1]{%
  \gdef\theisbn{#1}
}
\newcommand{\pages}[1]{%
  \gdef\npages{#1}
}
\newcommand{\price}[1]{%
  \gdef\mrsp{#1}
}


% Book Review Header: 1st page
% ---------------------------------------------------------

\AtBeginDocument{\vspace*{2\baselineskip}}

\fancypagestyle{book-info}{%
	\fancyhf{}%
  \fancyhead[L]{%
    \textit{\btitle} by \bauthor \\ 
    {\pub}, \bpubyear \\ 
    ISBN: \theisbn \\ 
    {\npages} pages \\
    \${\mrsp}
  }
  \fancyhead[R]{%
    MHK - Level \mhklvl \\ 
    \review 
  }
}

\fancypagestyle{book-info-noauthor}{%
	\fancyhf{}%
  \fancyhead[L]{%
    \textit{\btitle} \\ 
    {\pub}, \bpubyear \\ 
    ISBN: \theisbn \\ 
    {\npages} pages \\
    \${\mrsp}
  }
  \fancyhead[R]{%
    MHK - Level \mhklvl \\ 
    \review 
  }
}

\fancypagestyle{review}{%
  \fancyhf{}%
  \fancyhead[L]{MHK - Level \mhklvl}
  \fancyhead[R]{\review}
}

% Set the default pagestyle
\pagestyle{review}


\endinput
