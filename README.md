diplomarbeit-vorlage-latex
==========================

Vorlage zur Erstellung von Diplom-/Master-/Bachelor-Arbeiten mit dem Textsatzsystem LaTeX

Dies ist eine Vorlage für die Erstellung einer Diplomarbeit mit dem Textsystem LaTeX

Struktur:
----bilder/	-> Verzeichnis, indem die Bilder liegen, die mit \includegraphics eingebunden werden können
  |
  --extras/	-> Verzeichnis, indem verschiedene Sonderdateien, wie Titelblatt oder Definitionsheader liegen
  |
  --kapitel/	-> Verzeichnis, indem nun der eigentliche Inhalt steht - ausbaubar :-)
  |
  --literatur/	-> Verzeichnis, indem Literaturdateien im BibTeX Format liegen
  |
  --diplom.tex	-> Die Hauptdatei

extras/header.tex enthält sämtliche Formatierungen enthalten, diese können dort nach Belieben verändert werden.
extras/titelseite.tex beschreibt die Titelseite. Auch hier sind Variablen, die mit individuellen Einträgen versehen werden müssen.
diplom.tex fasst alle einzelnen Dateinen zusammen und bildet das Hauptdokument
Der Rest spricht hoffentlich für sich.

Um nun die Arbeit zu erstellen, folgendes ausführen:
1. $ latex diplom.tex -output-format=pdf 
		-> erste Erstellung von Verzeichnissen und Dateien mit Verweisen, vor allem die "diplom.aux" Datei 
2. $ bibtex diplom.aux		
		-> erstellen des Literaturverzeichnisses
3. $ makeindex diplom.nlo -s nomencl.ist -o diplom.nls 
		-> erstellen des Abkürzungsverzeichnisses
4. $ latex diplom.tex -output-format=pdf		
		-> erstellen des Inhaltsverzeichnisses
5. $ latex diplom.tex -output-format=pdf
		-> einbinden des Inhaltsverzeichnisses
Nun kann man sich die Datei "diplom.pdf" mit einem Viewer seiner Wahl anschauen.


Viel Spaß! 
