## How to build the style

The two Python scripts will create the color list for the style itself and 
for the manual. Call them like

    ./txt_to_xcolor.py xkcd-com-rgb.txt
    ./txt_to_foreach.py xkcd-com-rgb.txt

and capture the output into the relevant file. 

To create the .dtx and .ins file:
(Not working yet)

    makedtx -author "Romano Giannetti <romano.giannetti@gmail.com>"\
        -src "xkcdcolors\.sty=>xkcdcolors.sty"\
        -doc xkcdcolors-manual.tex xkcdcolors

## CTAN package

You can simply use 

    make ctan-plain

and you have the .zip file to upload. 



