## Package `xkcdcolors` for LaTeX

In the year 2010, Randall Munroe on [posted a really fun and nice article](https://blog.xkcd.com/2010/05/03/color-survey-results/)  on the iconic web of [xkcd](https://xkcd.com/).
He did a very curious experiment: showing colors to a lot of people and asking to name each one.

Afterward, he processed the data and sorted the names for each color by popularity --- that means, how many people gave the same name to the same color (no guidance here! Read the post linked above for details).

He obtained a nice list of around 950 color names. It's not at all surprising that a lot of people forged `CloudyBlue`, but some color is really surprising, like for example `BabyPoopGreen` or `DullPink`...

### DOCUMENTATION

See the included file `xkcdcolors-manual.tex`; you can compile it running (twice) `pdflatex` on it. If you want to have a look, you can find a compiled copy on the [release page](https://github.com/Rmano/xkcdcolors/releases) or on [CTAN](https://www.ctan.org/pkg/xkcdcolors).

If you have already installed the package in your TeX distribution, use `texdoc xkcdcolors`; it should show you the manual of the installed version of the package.

To search for a color in a fast way, at least on Unix or on a compatible `bash` shell, you can use the following command:

```bash
[romano:~] % grep -i duck  $(kpsewhich xkcdcolors.sty)
    DuckEggBlue,C3FBF4;%
```

### LICENSE

This package use Randall Munroe's file [rgb.txt](https://xkcd.com/color/rgb.txt) which is distributed under [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/). You can use that license or [LPPL 1.3c](https://www.latex-project.org/lppl/lppl-1-3c/)

### SOURCE REPO

The source is hosted on [GitHub](https://github.com/Rmano/xkcdcolors).
If you clone the repository, you can use

    make local-install

to install the package on [your local TEXMF tree](https://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te).
