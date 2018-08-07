\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{csse1001}[CSSE1001 Practical Slides]
 
\LoadClass[12]{beamer}

% Programming language formatting
\input{languages}

% Slide formatting
\usepackage{multicol}
\usepackage{enumitem}

\usetheme[progressbar=frametitle]{metropolis}
\setbeamertemplate{frame numbering}[fraction]
\usefonttheme{metropolis}
\usecolortheme{spruce}
\setbeamercolor{background canvas}{bg=white}

\definecolor{mygreen}{rgb}{125, 5, 25}
\usecolortheme[named=mygreen]{structure}
\setbeamercovered{transparent=5}

\setlist[itemize]{label=\bullet}
\setlist[enumerate]{label=\arabic*.}

\newenvironment{topic}[1]
    {\begin{frame}[t,fragile,environment=topic]{#1}}
    {\end{frame}}

\newenvironment{subtopic}[1]
    {\begin{onlyenv}<#1>}
    {\end{onlyenv}}
    
\newcommand{\code}[1]{\texttt{#1}}

% Title page information
\title{CSSE1001 Practicals \MakeUppercase{\jobname}}
\author{CSSE1001 Course Staff}
\institute {Semester 1, 2018}

