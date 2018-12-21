#!/bin/bash

whereis pdflatex | grep / | wc -l
whereis noknown | grep / | wc -l

#Prüfe das Vorhandensein der notwendigen Programme
if [ `whereis pdflatex | grep / | wc -l` -gt 0 ]; then
    echo "pdflatex wurde nicht gefunden"
    exit 1
fi
if [ `whereis bibtex | grep / | wc -l` -gt 0 ]; then
    echo "bibtex wurde nicht gefunden"
    exit 1
fi
if [ `whereis makeindex | grep / | wc -l` -gt 0 ]; then
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
