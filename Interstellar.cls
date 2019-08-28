%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Qingdao No.2 Middle School
% 2018 Physics And Technology MT
% Interstellar Journal
%
% LaTeX Template
% Version 1.0
% Release 2019.07.27
%
% Original author:
% Mathias Legrand (legrand.mathias@gmail.com) 
%
% Template Rebuilder:
% SINO8183 (allen5261@foxmail.com)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Interstellar}[2019.07.27.v1.0]
\RequirePackage{ifthen}
\RequirePackage{calc}
\AtEndOfClass{\RequirePackage{microtype}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass{article}
\RequirePackage{ctex}
\RequirePackage{ifpdf}      % Needed to pick between latex and pdflatex

%----------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------

\setCJKmainfont[BoldFont=Bold.otf, ItalicFont=emph.TTF]{Regular.otf}

\newcommand{\qiangdiao}[1]{{\color{color1}\sffamily\bfseries#1}}


%----------------------------------------------------------------------
%	VARIOUS USEFUL PACKAGES
%----------------------------------------------------------------------

\RequirePackage{inputenc}
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{graphicx,xcolor}
\RequirePackage{booktabs}

%----------------------------------------------------------------------
%	MARGINS	
%----------------------------------------------------------------------
	  	  
\RequirePackage[left=2.1cm,%
right=2.1cm,%
top=2.8cm,%
bottom=2.4cm,%
headheight=11pt,%
letterpaper]{geometry}%
				
%----------------------------------------------------------------------
%	FIGURES AND TABLES CAPTIONS
%----------------------------------------------------------------------

\RequirePackage[labelfont={bf,sf,small},%
labelsep=period,%
justification=justified]{caption}
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
				
%----------------------------------------------------------------------
%	PAGE HEADER
%----------------------------------------------------------------------

\RequirePackage{fancyhdr}  % Needed to define custom headers/footers
\RequirePackage{lastpage}  % Number of pages in the document
\pagestyle{fancy}          % Enables the custom headers/footers
% Headers
\lhead{}%
\chead{}%
\rhead{}
%\rhead{\small\sffamily\bfseries\@PaperTitle\  --- \thepage/\pageref{LastPage}}
% Footers
\lfoot{}%
\cfoot{}%
\rfoot{}%
\renewcommand{\headrulewidth}{0pt}% % No header rule
\renewcommand{\footrulewidth}{0pt}% % No footer rule

%----------------------------------------------------------------------
%	SECTION/SUBSECTION/PARAGRAPH SET-UP
%----------------------------------------------------------------------

\RequirePackage[explicit]{titlesec}
\titleformat{\section}
  {\color{color1}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{color2!4}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering\arabic{section}. #1}}}
  []
\titleformat{name=\section,numberless}
  {\color{color1}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{color2!4}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering#1}}}
  []  
\titleformat{\subsection}
  {\color{color1}\normalsize\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {\centering#1}
  []
\titleformat{\subsubsection}
  {\sffamily\small\bfseries}
  {\thesubsubsection}
  {0.5em}
  {#1}
  []    
\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {}
  {0em}
  {#1} 
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{0pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{0pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}

\newcommand{\greybox}[1]{
\vskip25pt
\noindent\fcolorbox{color1}{white}{%
\parbox{\textwidth-2\fboxsep-2\fboxrule}{%
\colorbox{color2!4}{%
\parbox{\textwidth-4\fboxsep-2\fboxrule}{\centering%
\parbox{\textwidth-2\fboxsep-2\fboxrule-50pt}{%
#1
\vskip25pt}}}}}}


%----------------------------------------------------------------------
%	TABLEOFCONTENTS SET-UP
%----------------------------------------------------------------------
\newlength{\tocsep} 
\setlength\tocsep{1.5pc} % Sets the indentation of the sections in the table of contents
\setcounter{tocdepth}{3} % Three levels in the table of contents section: sections, subsections and subsubsections

\usepackage{titletoc}
\contentsmargin{0cm}
\titlecontents{section}[\tocsep]
  {\addvspace{4pt}\small\bfseries\sffamily}
  {\contentslabel[\thecontentslabel]{\tocsep}}
  {}
  {\hfill\thecontentspage}
  []
\titlecontents{subsection}[\tocsep]
  {\addvspace{2pt}\sffamily}
  {\contentslabel[\thecontentslabel]{\tocsep}}
  {}
  {\ \titlerule*[.5pc]{.}\ \thecontentspage}
  []
\titlecontents*{subsubsection}[\tocsep]
  {\footnotesize\sffamily}
  {}
  {}
  {}
  [\ \textbullet\ ]  


%----------------------------------------------------------------------
%	LIST CONTROL
%----------------------------------------------------------------------  

\RequirePackage{enumitem}
%\setlist{nolistsep} % Uncomment to remove spacing between items in lists (enumerate, itemize)

%----------------------------------------------------------------------
%	ABSTRACT+AUTHOR FRAME
%----------------------------------------------------------------------  

\newcommand{\makeheading}[1]{%
    \vskip50pt{\center\color{color1}\sffamily\bfseries\fontsize{20}{25}\selectfont #1\par}
}

%----------------------------------------------------------------------
%	URLs
%----------------------------------------------------------------------  

\usepackage{url}
\def\UrlBreaks{\do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J
\do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V
\do\W\do\X\do\Y\do\Z\do\[\do\\\do\]\do\^\do\_\do\`\do\a\do\b
\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m\do\n
\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
\do\.\do\@\do\\\do\/\do\!\do\_\do\|\do\;\do\>\do\]\do\)\do\,
\do\?\do\'\do+\do\=\do\#} 

%----------------------------------------------------------------------
%	ADs
%---------------------------------------------------------------------- 
\newcommand{\ADxinhangdao}{\vfill
    \noindent\includegraphics[height=1cm]{ADs/xhd.jpg}\hfill\includegraphics[height=2cm]{ADs/QRxhd.jpg}

    \vskip-1.2cm
    {\centering\small\sffamily 新航道青岛学校\ 托福\ 雅思\ SAT\ AP\ 留学申请
    
    \centering 电话：152 5329 0365赵老师\ 更多信息请扫描二维码\vskip0cm}
}
\newcommand{\ADyixuehui}{\vfill
    \noindent\includegraphics[height=1cm]{ADs/yxh.jpg}\hfill\includegraphics[height=2cm]{ADs/QRyxh.jpg}

    \vskip-1.2cm
    {\centering\small\sffamily 自招、综招、高考志愿填报， 顶级专家一对一指导 
    
    
    \centering 电话：0532-58724592\ 地址：市南区东海西路凯旋大厦A座8楼B\vskip0cm}
}
\newcommand{\ADhairui}{\vfill
    \noindent\includegraphics[height=1cm]{ADs/hr.jpg}\hfill\includegraphics[height=2cm]{ADs/QRhr.jpg}

    \vskip-1.2cm
    {\centering\small\sffamily 山东海瑞教育咨询有限公司， 独家央企合作，权威综招培训
    
    \centering 电话：0532-55795579\ 地址：崂山区海尔路61号天宝国际银座2711\vskip0cm}
}