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

accordionRight = \relative c'' {
  \key d \major
  \time 4/4

  r2. a4 |
  d4 a4 d8 <a cis e>8 <g e'>8 d'8 |
  <b d>4 <g cis>4 |
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
  R1 |
  R1 |
  R1 |
  R1 |
  \bar "|."
}

accordionLeft = \relative c, {
  \key d \major
  \time 4/4
  \clef bass
  
  r2. d4 |
  g2 b4 cis4|
  g4 a4  |
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
  R1 |
  R1 |
  R1 |
  R1 |
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
    \tempo 4 = 105  }
}
