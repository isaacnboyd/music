\version "2.24.4"

\header {
  title = "First Waltz"
  composer = "Isaac Boyd"
}

melody = \relative c {
  \clef treble
  \key c \major
  \time 3/4

  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  \bar "|."

}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4
  
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  s2. | s2. | s2. | s2. |
  \bar "|."

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4
  
  d,4 d'4^\markup{m} d4 | a4 d4 d4 | d,4 d'4 d4 | a4 d4 d4 | 
  d,4 d'4^\markup{m} d4 | a4 d4 d4 | d,4 d'4 d4 | g,4 g'4^\markup{7} g4 | 
  c,,4 c'4^\markup{M} c4 | g4 c4 c4 | c,4 c'4 c4 | g4 c4 c4 |
  c,4 c'4 c4 | d,4 d'4^\markup{m} d4 | g,4 g'4^\markup{7} g4 |
  c,,4 c'4^\markup{M} c4 |

  \bar ":|."
}

\score {
  <<
    \new Voice \with { instrumentName = "Cello" } <<
      \melody
    \new PianoStaff \with { instrumentName = "Accordion" } <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    >>
  >>
  \layout { } 
  \midi {
    \tempo 4=100
  } 
}