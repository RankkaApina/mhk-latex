%%% mhk-letter.cls %%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk-letter}[2025/02/18 Version 3.0 by A. Parikka]

\LoadClass{mhk}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additionally required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[nodayofweek,level]{datetime}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additions and changes to the osc class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Letter formatting
% ---------------------------------------------------------

\newcommand{\Hrule}{%
    \par\noindent
	\textcolor{teal}{\hrule height 1pt}
    \par
}

% Sender
\def\@sender{\relax}
\newcommand{\sender}[1]{\gdef\@sender{#1}}
% address
\def\@address{\relax}
\newcommand{\address}[1]{\gdef\@address{#1}}
% phone number
\def\@phone{\relax}
\newcommand{\phone}[1]{\gdef\@phone{#1}}
% email
\def\@email{\relax}
\newcommand{\email}[1]{\gdef\@email{#1}}
% instructions received
\def\@startdate{\relax}
\newcommand{\startdate}[1]{\gdef\@startdate{#1}}
% submission date
\def\@letterdate{\relax}
\newcommand{\letterdate}[1]{\gdef\@letterdate{#1}}



% Letterhead and required info
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\setlength{\droptitle}{-0.7ex}
\pretitle{\begin{flushright}\LARGE\scshape}
\posttitle{\par\end{flushright}\vskip -5ex}
\preauthor{}
\postauthor{}
\predate{}
\postdate{}
% Setting author and date as empty strings, as I don't want them in the title
\author{}
\date{}

% List settings to differ from mhk.cls
\setlist{
    topsep=2pt,
    partopsep=2pt,
    itemsep=2pt,
    parsep=2pt
}

\newcommand\subinfo{
    \begin{description}[style=multiline,leftmargin=2cm]
        \item [Knitter:] \@sender
        \item [Address:] \@address
        \item [Phone:] \@phone
        \item [Email:] \@email
    \end{description}
    
    \vskip 1.5em
    
    \begin{description}
        \item [Level {\mhklevel} Instructions Received:] \@startdate
    %    \item [Submission Date:] \@letterdate
    \end{description}
}

% If more than one page, then header
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\fancypagestyle{letter}{%
  \fancyhf{}%
  \fancyhead[L]{MHK - Level \mhklevel}
  \fancyfoot[C]{\thepage}
}

% Set the default pagestyle
\pagestyle{letter}

\endinput