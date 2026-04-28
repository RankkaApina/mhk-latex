%%% mhk-book.cls %%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk-book}[2025/08/11 Version 3.1 by A. Parikka]

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
    MHK - Level \mhklevel \\ 
    \review 
  }
  \fancyfoot[C]{\thepage}
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
    MHK - Level \mhklevel \\ 
    \review 
  }
  \fancyfoot[C]{\thepage}
}

\fancypagestyle{review}{%
  \fancyhf{}%
  \fancyhead[L]{MHK - Level \mhklevel}
  \fancyhead[R]{\review}
  \fancyfoot[C]{\thepage}
}

% Set the default pagestyle
\pagestyle{review}


\endinput
