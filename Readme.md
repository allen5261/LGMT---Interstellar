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
1. 把根目录下的```main.tex__中第76行的内容改为```\input{Monthly/期数.tex}```
2. 在```/Monthly```目录下新建一个```期数.tex```文件。
3. 使用```\makeheading{文章标题}```命令来生成标题。
4. 使用```\begin{multicols}{2}```和```\end{multicols}```把这篇文章包起来，如：
```
\begin{multicols}{2}
    这是一篇文章
\end{multicols}
```
5. 把需要使用的图片放入```/IMG/期数```文件夹，用如下方式插入图片：
```
\begin{figure}[H]
    \centering
    \includegraphics[width=\linewidth]{IMG/期数/文件名}
    \caption{图片注释}
\end{figure}
```
其中宽度可以自行指定，在```\linewidth```前加一个小于1的小数即可。

6. 使用```\newpage```来强制分页。

7. 期间可以点右侧预览框的__重新编译```来预览排版效果。

# 广告的添加方法
```\ADyixuehui```, ```\ADxinhangdao``` & ```\ADhairui``` is available.
