%%% mhk.cls %%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk}[2025/08/05 Version 3.1 by A. Parikka]


\LoadClass[11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Page setup
% ---------------------------------------------------------
\RequirePackage{geometry}

% Fonts: Palatino
% ---------------------------------------------------------
\RequirePackage{mathpazo} % math & text

% Colors
% ---------------------------------------------------------

\RequirePackage[table, dvipsnames]{xcolor}

% Titles and headers
% ---------------------------------------------------------

% Title formatting
\RequirePackage{titling}
% Nice headers
\RequirePackage{fancyhdr}

% Text formatting
% ---------------------------------------------------------

% Some paragraph and space formatting
\RequirePackage{parskip}
% Lists 
\RequirePackage{enumitem}
% Prevent orphan and widow rows
\RequirePackage[all]{nowidow}
% Some text utilities
\RequirePackage{xspace}

% Images
% ---------------------------------------------------------

\RequirePackage{graphicx}
\RequirePackage{tikz}

% Tables
% ---------------------------------------------------------

% Better tables
\RequirePackage{tabularx} 
% To adjust the table to stay inside margins
\RequirePackage{adjustbox}
% For paragraph adjustments inside table
\RequirePackage{ragged2e}
% For cell wrapping in tables
\RequirePackage{array}

% Hyperlinks
% ---------------------------------------------------------

% Bibliography linking and also any urls
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{xurl}

% MLA style bibliography
% ---------------------------------------------------------

\RequirePackage[american]{babel}
\RequirePackage{csquotes}
\RequirePackage[style=mhk]{biblatex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Settings and modifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Page setup
% ---------------------------------------------------------

% Set margins
\geometry{margin=1.0in}


% PDF setup
% ---------------------------------------------------------

% To make the view nicer in Acrobat Reader
\hypersetup{pdfpagemode=UseNone, pdfstartview=Fit, pdfpagelayout=SinglePage}

% Paths
% ---------------------------------------------------------

% Set graphics path
\graphicspath{./figures/}

% Colors
% ---------------------------------------------------------

\definecolor{teal}{RGB}{0,110,140}

% Headers
% ---------------------------------------------------------

\newcommand{\mhklvl}[1]{
  \gdef\mhklevel{#1}
}

\setlength{\headheight}{16pt}
\pagestyle{fancy}

\fancypagestyle{report}{%
  \fancyhf{}%
  \fancyhead[L]{MHK - Level \mhklevel}
  \fancyhead[R]{\thetitle}
}

% Text formatting
% ---------------------------------------------------------
	
% Paragraph definitions
\setlength{\parindent}{0pt}

% For breaking long underscored words into next line where appropriate
\renewcommand\_{\textunderscore\allowbreak}

% Widow & orphan control (clubpenalty is for orphans)
\widowpenalty=10000
\clubpenalty=100000

% Lists: make them compact
\setlist{
    topsep=0pt,
    partopsep=0pt,
    itemsep=0pt,
    parsep=0pt
}

% url style (mhk)
\makeatletter
\def\url@mhkstyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\small\ttfamily}}}
\makeatother
% use the url style
\urlstyle{mhk}

% Text shortcuts
% ---------------------------------------------------------

% Anything squared
\newcommand*\sq{$^2$}
% Shortcut to text superscript
\newcommand{\tsup}{\textsuperscript}
% Shortcut to text subscript
\newcommand{\tsub}{\textsubscript}

% Knitting
% ---------------------------------------------------------

% Deal with fractions
\newcommand\sfrac[2]{#1/#2\xspace}
% Inches
\newcommand{\inches}{\ensuremath{{}^{\prime\prime}}\xspace}


% Tables
% ---------------------------------------------------------

% To add some vertical spacing to table cells
\setlength{\extrarowheight}{3pt} 

% Enable wrapping in table cells
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}


% Bibliography
% ---------------------------------------------------------

% Make bibliography use Works Cited as title
\newcommand\bname{Works Cited}

\endinput

