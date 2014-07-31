#!/bin/bash
 
#Erste Erstellung von Verzeichnissen und Dateien mit Verweisen, vor allem die "diplom.aux" Datei 
latex diplom.tex -output-format=pdf 

#Erstellen des Literaturverzeichnisses	
bibtex diplom.aux		

#Erstellen des Abkürzungsverzeichnisses
makeindex diplom.nlo -s nomencl.ist -o diplom.nls 

#Erstellen des Inhaltsverzeichnisses
latex diplom.tex -output-format=pdf		

#Einbinden des Inhaltsverzeichnisses
latex diplom.tex -output-format=pdf
