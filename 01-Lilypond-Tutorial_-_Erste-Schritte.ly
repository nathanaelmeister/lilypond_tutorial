\version "2.22.2"

\header {
  title = "Dominik Lilypond Schule"
  subtitle = "Erste Schritte"
  subsubtitle = \markup \null
}

\relative c {
  \clef bass
  c d e f g
}

% Abstrich = \downbow
% Aufstrich = \upbow

\relative c {
  \clef bass
  c1\downbow                 % Ganze Noten
  c2\upbow c\upbow               % Halbe Noten
  c4\upbow  c\downbow  c\upbow c \downbow          % Viertel Noten
  c8 c c c c c c c   % Achtel Noten
} 

% Bindebögen c( d e f)
% c( d) e( f)

% Oktave nach oben = '
% Oktave nach unten = ,

\relative c {
  \clef bass
  c4( d )e( f) |
  g1 |
  g8 g d a' g d h d a g a d, 
}

\relative c {
  \clef bass
  b1 |
  b2 b |
  b4 b b b |
  b8 b b b b b b b |
}

% Haltebögen (Englisch = Slur) schreibt man mit ~
% Akkorde schreibt man so: <c c'>2.~ <d d'>4 
% Hier Dein Beispiel:

\relative c, {
  \clef bass
  \key d \major
  \time 3/4

  <d d'>2.~ <d d'>4
}
