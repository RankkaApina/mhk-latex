%%% mhk-report.cls %%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mhk-report}[2025/02/18 Version 1.0 by A. Parikka]

\LoadClass{mhk}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additionally required packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{mhk-title}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Additions and changes to the osc class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Bibliography
% ---------------------------------------------------------

% In a report the bibliography is a section
\defbibheading{bibliography}[\bname]{%
  \section*{#1}
}%

\endinput