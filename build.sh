#!/bin/bash

#Prüfe das Vorhandensein der notwendigen Programme
if [ -h `whereis pdflatex | grep /` ]; then
    echo "pdflatex wurde nicht gefunden"
    exit 1
fi
if [ -h `whereis bibtex | grep /` ]; then
    echo "bibtex wurde nicht gefunden"
    exit 1
fi
if [ -h `whereis makeindex | grep /` ]; then
    echo "makeindex wurde nicht gefunden"
    exit 1
fi
 
#Erste Erstellung von Verzeichnissen und Dateien mit Verweisen, vor allem die "diplom.aux" Datei 
pdflatex diplom.tex -output-format=pdf 

#Erstellen des Literaturverzeichnisses	
bibtex diplom.aux		

#Erstellen des Abkürzungsverzeichnisses
makeindex diplom.nlo -s nomencl.ist -o diplom.nls 

#Erstellen des Inhaltsverzeichnisses
pdflatex diplom.tex -output-format=pdf		

#Einbinden des Inhaltsverzeichnisses
pdflatex diplom.tex -output-format=pdf
