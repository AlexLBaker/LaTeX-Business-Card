% Created by Alexander Baker, original repo here: https://github.com/AlexLBaker/LaTeX-Business-Card

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{card_class}[2023/03/27 Custom Business Card Class]

\LoadClass[letterpaper,10pt]{article}

\RequirePackage{geometry}
\RequirePackage{tikz}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage{pgffor}

% Define some colors
\definecolor{grey}{rgb}{0.5,0.5,0.5}

% Set page size and margins for business cards
\geometry{
  letterpaper,
  top=1cm,
  bottom=1cm,
  left=1cm,
  right=1cm,
  noheadfoot
}

\pagestyle{empty}

\newcommand{\businesscard}[6]{
  \begin{tikzpicture}
    % Define card dimensions
    \def\cardwidth{8.5cm}
    \def\cardheight{5.5cm}

    % Draw the card with dotted lines
    \draw[dotted] (0,0) rectangle (\cardwidth,\cardheight);
    % Draw a smaller thick black line inside
    \draw[line width=1pt] (0.2cm,0.2cm) rectangle (\cardwidth-0.2cm,\cardheight-0.2cm);
    
    % Add content
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 + 1.2cm) {\LARGE #1};
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 + 0.5cm) {\large #2};
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 - 0cm) {\small #3};
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 - 0.75cm) {\textcolor{grey}{\faMapMarker} \small #4};
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 - 1.25cm) {\textcolor{grey}{\faEnvelope} \small #5};
    \node[anchor=center, align=center] at (\cardwidth/2, \cardheight/2 - 1.75cm) {\textcolor{grey}{\faPhone} \small #6};
  \end{tikzpicture}
}
