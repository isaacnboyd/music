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
  d4 d4 cis8 b8 cis4 | \break
  b2. fis4 |
  b4 a4 g4 fis4 |
  e2 fis4 cis'4 |
  d4 d4 cis8 b8 cis4 | \break
  b2. d4 |
  cis8 b8 a4 b4 cis4 |
  d2 d4 a4 |
  b4 a4 g4 g4 | \break
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
  <d fis>2 <d e>  |
  <d b>2 <d a>4 <e ais>4|
  <fis b>2 <fis ais>2 | \break
  <d fis>2.  d4 |
  <d fis>2 <d e>  |
  <d b>2 <d a>4 <e ais>4|
  <fis b>2 <fis ais>2 | \break
  <d fis>2. <fis b d>4^\markup { "Bm" }|
  <e g a cis>2^\markup { "A7" } <b' g d>2^\markup { "G" }|
  <fis a d>1^\markup { "D" }  |
  <fis b d>1^\markup { "Bm" } | \break
  <fis a cis>2.^\markup { "F#m" } <e g b>4^\markup { "Em" } |
  <e a>2 b'4 a4 |
  g2 a2 |
  <d, g b>2^\markup { "G" } <e g b d>4^\markup { "Em7" } <e g a cis>4^\markup { "A7" } |
  <fis a d>1^\markup { "D" } |
  \bar "|."
}

accordionLeft = \relative c {
  \key d \major
  \time 4/4
  \clef bass
  
  r2. d,4 |
  g2 b2 |
  g4 cis4 d4 cis4 |
  b8 cis8 d8 e8 fis2 | \break
  b,2. d,4 |
  g2 b2 |
  g4 cis4 d4 cis4 |
  b8 cis8 d8 e8 fis2 | \break
  b,2. d4 |
  a2 g2 |
  d'1 |
  b1 | \break
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
