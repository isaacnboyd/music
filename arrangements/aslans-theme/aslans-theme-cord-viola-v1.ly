\version "2.24.1"

\header {
  title = "Aslan's Theme V1"
  subtitle = "Arrangement for Accordion and Viola"
  composer = "Arrangement by Isaac Boyd"
  tagline = ##f
}

violaMusic = \relative c'' {
  \clef alto
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  e,4 cis8[ e8 ] a4. gis8 |
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
  e'4 c8[ e8 ] f4. a8 |
  f4. d8 e2 |
  e4 c8[ a8 ] d4. e8 |
  c4. d8 b2 |
  b4 g8[ b8 ] c4. e8 |
  fis4. c8 b2 |
  b4 g8[ e8 ] a4. b8 |
  g4. a8 fis2 |
  gis1 |
  gis1 |
  \bar "||" \key a \major
  e'4\< cis8[ e8 ] a4. b8 |
  cis4. b8\! a8\>[ fis8 e8 d8 ] |
  e4\! a8[ e8 ] d4. cis8 |
  b4. a8 a2 ( |
  a1 ) |
}

accordionRight = \relative c' {
  \clef treble
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  e2^\markup { "Bassoon" } fis2 |
  fis2 e2 |
  e2 d2 |
  cis2 b2 |
  cis2 e2 |
  a2 a2 |
  a2 a2 |
  a4 gis4 <cis, e a>2 |
  \bar "||" \key c \major
  <a' c e>8^\markup { "Clarinet" } <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 |
  <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 |
  <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a d f>8 <a d f>8 <a d f>8 <a d f>8 |
  <a d f>8 <a d f>8 <a d f>8 <a d f>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 |
  <a c e>8 <a c e>8 <a c e>8 <a c e>8 <a d f>8 <a d f>8 <a d f>8 <a d f>8 |
  <a c e>8 <a c e>8 <a c e>8 <a c e>8  <gis b d e>8 <gis b d e>8 <gis b d e>8 <gis b d e>8 |
  <g b e>8 <g b e>8 <g b e>8 <g b e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8 | |
  <fis b d>8 <fis b d>8 <fis b d>8 <fis b d>8 <g b e>8 <g b e>8 <g b e>8 <g b e>8 |
  <g b e>8 <g b e>8 <g b e>8 <g b e>8 <a c e>8 <a c e>8 <a c e>8 <a c e>8|
  <g b e>8 <g b e>8 <g b e>8 <g b e>8 <fis c' dis>8 <fis c' dis>8 <fis c' dis>8 <fis c' dis>8 |
  <gis b d>8 <gis b d>8 <gis b d>8 <gis b d>8  <gis b e>8 <gis b e>8 <gis b e>8 <gis b e>8 |
  <gis b e>1 |
  \bar "||" \key a \major
  cis4^\markup { "Bassoon" } a8[ cis8 ] fis1( |
  fis8)[ d8 cis8 b8 ] |
  cis4 fis8[ cis8 ] b2 |
  a4 gis4 e2 ( |
  e1 ) |
}

accordionLeft = \relative c {
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key a \major
  
  a1 |
  a1 |
  a2 fis2_\markup { "_" } |
  e1 |
  a1 |
  cis2_\markup { "_" } d2 |
  cis2_\markup { "_" } d2 |
  d2 <a a'>2^\markup { "A" } |
  \bar "||" \key c \major
  <a a'>8^\markup { "Am" } <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 |
  <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 <a a'>8 |
  <a a'>8 <a a'>8 <a a'>8 <a a'>8 <d d'>8^\markup { "Dm" } <d d'>8 <d d'>8 <d d'>8 |
  <d d'>8 <d d'>8 <d d'>8 <d d'>8 <a a'>8^\markup { "Am" } <a a'>8 <a a'>8 <a a'>8 |
  <a a'>8 <a a'>8 <a a'>8 <a a'>8 <d d'>8^\markup { "Dm" }\< <d d'>8 <d d'>8 <d d'>8 |
  <a a'>8^\markup { "Am" } <a a'>8 <a a'>8 <a a'>8 <e e'>8^\markup { "E7" } <e e'>8 <e e'>8 <e e'>8\! |
  <e e'>8^\markup { "Em" } <e e'>8 <e e'>8 <e e'>8 <a a'>8^\markup { "Am" } <a a'>8 <a a'>8 <a a'>8 |
  <b b'>8^\markup { "Bm" } <b b'>8 <b b'>8 <b b'>8 <e, e'>8^\markup { "Em" } <e e'>8 <e e'>8 <e e'>8 |
  <e e'>8^\markup { "Em" } <e e'>8 <e e'>8 <e e'>8 <a a'>8^\markup { "Am" } <a a'>8 <a a'>8 <a a'>8 |
  <e e'>8^\markup { "Em" } <e e'>8 <e e'>8 <e e'>8 c8^\markup { "CmD" }_\markup { "_" } c c c |
  gis'8^\markup { "G#mD" }_\markup { "_" } gis gis gis <e e'>8^\markup { "E" } <e e'>8 <e e'>8 <e e'>8 |
  <e e'>1 |
  \bar "||" \key a \major
  a1 |
  cis2_\markup { "_" } d2 |
  cis2_\markup { "_" } d2 |
  d2 <a a'>2^\markup { "A" }( |
  <a a'>1 ) |
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Viola"
    } \violaMusic
    
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
