%%% mhk-sis.cls %%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk-sis}[2025/02/18 Version 3.0 by A. Parikka]

\LoadClass{mhk}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additionally required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{mhk-subtitle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additions and changes to the osc class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Bibliography
% ---------------------------------------------------------

% In a SIS the bibliography is a subsection
\defbibheading{bibliography}[\bname]{%
  \subsection*{#1}
}%

\endinput

