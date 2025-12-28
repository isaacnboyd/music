\version "2.24.0"

\header {
  title = "O Sacred Head, Now Wounded"
  arranger = "Arranged by Isaac Boyd"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

violinMusic = \relative c' {
  \key d \major
  \time 4/4
  
  r2. fis4 |
  b4 a4 g4 fis4 |
  e2 fis4 cis'4 |
  d4 d4 cis8 b8 cis4 |
  b2. fis4 |
  b4 a4 g4 fis4 |
  e2 fis4 cis'4 |
  d4 d4 cis8 b8 cis4 |
  b2. d4 |
  cis8 b8 a4 b4 cis4 |
  d2 d4 a4 |
  b4 a4 g4 g4 |
  fis2. d'4 |
  cis8 d8 e4 d4 cis4 |
  b2 cis4 fis,4 |
  g4 fis4 e4 a4 |
  fis2. r4 |
  \bar "|."
}

accordionRight = \relative c' {
  \key d \major
  \time 4/4

  r2. d4 |
  <d fis g>2 <d e g>  |
  <d g b>2 <d fis a>4 <cis e ais>4|
  <fis b d>2 <fis ais cis>2 |
  <d fis b>2. d4|
  <d fis g>2 <d e g>  |
  <d g b>2 <d fis a>4 <cis e ais>4|
  <fis b d>2 <fis ais cis>2 |
  <d fis b>2. <fis b d>4|
  <e g a cis>2 <g b d>2|
  <fis a d>1  |
  <fis b d>1 |
  <fis a cis>2. <e gis b>4 |
  <e a cis>2 b'4 a4 |
  g2 a2 |
  <d, g b>2 <e g b d>4 <e a cis>4 |
  <fis a d>1 |
  \bar "|."
}

accordionLeft = \relative c {
  \key d \major
  \time 4/4
  \clef bass
  
  r2. d,4 |
  g2 b4 cis4 |
  g4 cis4 d4 cis4 |
  b8 cis8 d8 e8 fis2 |
  b,2. d,4 |
  g2 b4 cis4 |
  g4 cis4 d4 cis4 |
  b8 cis8 d8 e8 fis2 |
  b,2. d4 |
  a2 g2 |
  d'1 |
  b1 |
  a2. e4 |
  a8 b8 cis4 g2 |
  e1  |
  g2 e4 a4 |
  d1 |
  \bar "|."
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Violin"
      midiInstrument = "violin"
    } {
      \violinMusic
    }
    \new PianoStaff \with {
      instrumentName = "Accordion"
      midiInstrument = "accordion"
    } <<
      \new Staff = "right" {
        \accordionRight
      }
      \new Staff = "left" {
        \accordionLeft
      }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 85  }
}

\markup {
  \column {
    \vspace #1
    \bold \large "Questions"
    \vspace #0.5
    \line { "• What is the lowest note in the bases and the highest? How does that change with the key?" }
  }
}
