#!/bin/bash
 
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
