\version "2.22.2"

% Lilypond benutzt automatisch die internationale Bezeichnung 'b' für das deutsche 'h'
% Für das deutsche 'b' verwendet man mit den Standarteinstellungen 'bes'
% Verwendet man das h dennoch, kommt es zu folgender Fehlermeldung:

%{
  GNU LilyPond 2.22.2
  »Lilypond.ly« wird verarbeitet
  Analysieren...
  Lilypond.ly:36:17: Fehler: Keine Notenbezeichnung: »h«
    g8 g d a' g d 
                  h d a g a d, 
  Interpretation der Musik...
  Vorverarbeitung der grafischen Elemente...
  Interpretation der Musik...
  Vorverarbeitung der grafischen Elemente...
  Interpretation der Musik...
  Vorverarbeitung der grafischen Elemente...
  Interpretation der Musik...
  Vorverarbeitung der grafischen Elemente...
  Ideale Seitenanzahl wird gefunden...
  Musik wird auf eine Seite angepasst...
  Systeme erstellen...
  Konvertierung nach »Lilypond.pdf«...
  schwerer Fehler: gescheiterte Dateien: "Lilypond.ly"
%}

% richtig wäre also:

\relative c {
  \clef bass
  c4( d )e( f) |
  g1 |
  g8 g d a' g d b d a g a d, 
}

% möchte man die deutsche Schreibweise verwenden muss man die Zeile hinzufügen,
% die die Datei "deutsch.ly" in das Dokument einbettet:

\include "deutsch.ly"

% dann funktioniert die deutsche Schreibweise:

\relative c {
  \clef bass
  c4( d )e( f) |
  g1 |
  g8 g d a' g d h d a g a d,
}

