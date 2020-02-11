\ProvidesClass{jeanmonnet}[2019/11/12 version initiale de la classe du collège jeanmonnet]
% classe de base
\LoadClass[12pt]{book}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
%%%%% OPTIONS
\RequirePackage{kvoptions}
\DeclareStringOption{titre}
\DeclareStringOption{classe}

\ProcessKeyvalOptions*

%%%% 






%% encodage
\RequirePackage[utf8]{inputenc}%encodage des caractères
\RequirePackage[T1]{fontenc}
\RequirePackage[french]{babel}% francais

%%

%% mathématiques
\RequirePackage{amsmath, amssymb}
\RequirePackage{amsthm}% pour le style definition
%%

%% taille de page
\RequirePackage[margin=2cm]{geometry}
%%

%% fonte
\RequirePackage{kpfonts}
%%

%% boites si nécessaire
\RequirePackage{fancybox}
%%

%% gestion de liste
\RequirePackage{listofitems, multido}
%%

%% mise en page
\RequirePackage{fancyhdr, lastpage}
\fancyhf{}

\@ifundefined{jeanmonnet@classe}{}{\scantokens\expandafter{\expandafter\def\expandafter\jeanmonnet@classe\expandafter{\jeanmonnet@classe}}
}

\@ifundefined{jeanmonnet@titre}{}{\scantokens\expandafter{\expandafter\def\expandafter\jeanmonnet@titre\expandafter{\jeanmonnet@titre}}
}

\fancyhead[L]{\jeanmonnet@classe}
%%%\fancyhead[C]{\titre}%% ajouter la gestion du titre

\ifx\jeanmonnet@titre\@empty\else
  \fancyhead[C]{\jeanmonnet@titre}
  \def\titre{\jeanmonnet@titre}
\fi

\fancyhead[R]{2019-2020}
\fancyfoot[C]{\thepage/\pageref{LastPage}}
\fancyfoot[R]{\footnotesize Version du \today}
\pagestyle{fancy}

%%

%% géométrie
\RequirePackage{tikz, float, tkz-euclide}
\usetikzlibrary{shapes.misc}
\usetkzobj{all}

%% ::: TODO supprimer
\tikzset{cross/.style={cross out, draw=black, minimum size=2*(#1-\pgflinewidth), inner sep=0pt, outer sep=0pt},
%default radius will be 1pt. 
cross/.default={1pt}}
\newcommand\mypoint[1]{%
  \draw (#1) node[cross=3pt] {}
}

\newcommand\repere[5]{
      \draw [very thick, color=gray!40] (#1,#3) grid (#2,#4);
      \pgfmathparse{#1+#5}
      \pgfmathparse{#3+#5}
      \foreach \k in {#2,\pgfmathresult,...,#4}{
        \draw (-0.1,\k) -- (0.1,\k);
      }
      \draw[->, line width=2pt] (#1,0) -- (#2,0);
      \draw[->, line width=2pt] (0,#3) -- (0,#4);
}


%%

%% :::: TODO
%% gestion des nombres
\def\num#1{#1}
%%

%% theoreme
\RequirePackage{tcolorbox}
\tcbuselibrary{theorems}

\newtcbtheorem{definition}{Définition}{colback=green!5,colframe=green!35!black,fonttitle=\bfseries , before skip = 15pt}{def}
\newtcbtheorem{remarque}{Remarque}{colback=gray!5,colframe=gray!35!black,fonttitle=\bfseries, before skip = 15pt}{rem}
\newtcbtheorem{exemple}{Exemple}{colback=blue!5,colframe=blue!35!black,fonttitle=\bfseries , before skip = 15pt}{expl}
\newtcbtheorem{propriete}{Propriété}{colback=red!5,colframe=red!35!black,fonttitle=\bfseries , before skip = 15pt}{expl}

\date{2019-2020 Collège Jean Monnet}