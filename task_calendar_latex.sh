#!/bin/bash

# Date        : Thu Apr 29 16:18:01 CEST 2021
# Autor       : Leonid Burmistrov
# Description : 

function clean_sh {
    rm -rf *~ 
    rm -rf task_calendar_latex.aux  task_calendar_latex.log task_calendar_latex.dvi
}

function latex_sh {
    latex task_calendar_latex.tex ; dvipdf task_calendar_latex.dvi
    clean_sh
}

function printHelp {
    echo " --> ERROR in input arguments "
    echo " -c : clean"
    echo " -l : latex make"
}

if [ $# -eq 0 ]; then
    printHelp
else
    if [ "$1" = "-c" ]; then
            clean_sh
    elif [ "$1" = "-l" ]; then
	latex_sh
    else
        printHelp
    fi
fi
