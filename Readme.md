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

# 排版方式
1. 把根目录下的___main.tex__中第76行的内容改为___\input{Monthly/期数.tex}___
2. 在___/Monthly___目录下新建一个___期数.tex___文件。
3. 使用___\makeheading{文章标题}___命令来生成标题。
4. 使用___\begin{multicols}{2}___和___\end{multicols}___把这篇文章包起来，如：
___
\begin{multicols}{2}
    这是一篇文章
\end{multicols}
___
5. 把需要使用的图片放入___/IMG/期数___文件夹，用如下方式插入图片：
___
\begin{figure}[H]
    \centering
    \includegraphics[width=\linewidth]{IMG/期数/文件名}
    \caption{图片注释}
\end{figure}
___
其中宽度可以自行指定，在___\linewidth___前加一个小于1的小数即可。
6. 使用___\newpage___来强制分页。
7. 期间可以点右侧预览框的__重新编译___来预览排版效果。

# 广告的添加方法
___\ADyixuehui___, ___\ADxinhangdao___ & ___\ADhairui___ is available.
