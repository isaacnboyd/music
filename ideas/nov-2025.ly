\version "2.24.4"

\header {
  title = "Nov waltz"
  composer = "Isaac Boyd"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  r4 c4( d4 ) | 
  e4( b4 g4) | d'4( b4 g4) | c4( b4 g4) |
  c4( b4 g4) | d'4( b4 g4) | e'4( b4 g4) |
  f'4( c4 a4) | e'4( c4 a4) | d4( c4 a4) |
  d4( c4 a4) | e'4( c4 a4) | f'4( c4 a4) |
  \bar "|."

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  r2. |
  c,4 c'4^\markup{7} c4 | e,4 c'4^\markup{7} c4 | 
  \bar "|."

}

\score {
  <<
    \new PianoStaff \with { instrumentName = "Accordion" } <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout { } 
  \midi {
    \tempo 4=100
  } 
}
