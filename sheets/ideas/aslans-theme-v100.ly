\version "2.24.1"

\header {
  title = "Aslan's Theme v1.0.0"
  composer = "Arrangement by Isaac Boyd"
}

violinMusic = \relative c'' {
  \clef treble
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  e2 fis2 |
  fis2 e2 |
  e2 d2 |
  cis2 b2 |
  cis2 e2 |
  a2 a2 |
  a2 a2 |
  a4 gis4 a2 |
  \bar "||" \key c \major
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \bar "||" \key a \major
  cis,2 e2 |
  a2 a2 |
  a2 a2 |
  a4 gis4 a2 |
}

accordionRight = \relative c' {
  \clef treble
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  e4 cis8[ e8 ] a4. gis8 |
  fis4. d8 e2 |
  e4 cis8[ a8 ] d4. e8  |
  cis4. d8 b2 |
  e4\< cis8[ e8 ] a4. b8 |
  cis4. b8\! a8\>[ fis8 e8 d8 ] |
  e4\! a8[ e8 ] d4. cis8 |
  b4. a8 a2 |
  \bar "||" \key c \major
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \bar "||" \key a \major
  e'4\< cis8[ e8 ] a4. b8 |
  cis4. b8\! a8\>[ fis8 e8 d8 ] |
  e4\! a8[ e8 ] d4. cis8 |
  b4. a8 a2 |
}

accordionLeft = \relative c {
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  a1 |
  a1 |
  a2 fis2 |
  e1 |
  a1 |
  cis2 d2 |
  cis2 d2 |
  d2 cis2 |
  \bar "||" \key c \major
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \bar "||" \key a \major
  a1 |
  cis2 d2 |
  cis2 d2 |
  d2 cis2 |
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Violin"
    } \violinMusic
    
    \new PianoStaff \with {
      instrumentName = "Accordion"
    } <<
      \new Staff = "right" \accordionRight
      \new Staff = "left" \accordionLeft
    >>
  >>
  
  \layout { }
  \midi {
    \tempo 4 = 70
  }
}
