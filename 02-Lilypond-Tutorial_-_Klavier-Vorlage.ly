\version "2.22.2"

\score {
  \new PianoStaff  <<

    % Die Noten für die rechte Hand:

    \new Staff = "RH"

    \relative c' {
      \clef treble
      \key c \major
      \time 4/4

      c4 d e f |
      g1 |

    }

    % Die Noten für die linke Hand:

    \new Staff = "LH"

    \relative c {
      \clef bass
      \key c \major
      \time 4/4

      c1 |
      g |

    }
  >>
  \layout { }
  \midi { }
}
