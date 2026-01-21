\version "2.24.0"

\header {
  title = "It Came Upon the Midnight Clear"
  arranger = "Arranged by Isaac Boyd"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

violinMusic = \relative c'' {
  \key c \major
  \time 3/4
  \tempo "Slowly"
  

  r4 r4 g4 |
  e'2 b4 |
  d4( c4 ) a4 |
  g2 a4 |
  g2 g4 |
  a4( b4 ) c4 |
  c4( d4 ) e4 |
  d2.( |
  d2) g,4|
  e'2 b4 |
  d4( c4 ) a4 |
  g2 a4 |
  g2 g4 |
  a2 a4 |
  b4( a4 ) g4  |
  c2. |
  r2 e4 |
  e2 e,4 |
  e4( fis4 ) gis |
  a2 b4 |
  c2 e4 |
  d4( c4 ) b4 |
  a4( b4 ) a4 |
  <f g>2.( |
  )<f g>2 g4 |
  e'2 b4 |
  d4( c4 ) a4 |
  g2 a4 |
  g2 g4 |
  a2 a4 |
  b4( a4 ) g4  |
  c2.( |
  c2.) |
  \bar "|."
}

accordionRight = \relative c'' {
  \key c \major
  \time 3/4

  r4 r4 g4 |
  g2. |
  f2. |
  e2. |
  e2. |
  f4( g4 ) a4 |
  a4( b4 ) c4 |
  g2.( |
  g2) g4|
  g2. |
  f2. |
  e2. |
  e2. |
  f2. |
  g4(e4 ) d4  |
  g2. |
  r2. |
  e2. |
  e4( fis4 ) gis |
  a2. |
  a2. |
  b2. |
  a2. |
  g2. |
  b4 d4 r4 |
  g,2. |
  f2. |
  e2. |
  e2. |
  <c f a>2. |
  <d f g b>2. |
  <e g c>2.( |
  <e g c>2.) |
  \bar "|."
}

accordionLeft = \relative c {
  \key c \major
  \time 3/4
  \clef bass
  
  r2. |
  c,4^\markup { "M" } c'4 c4 |
  f,4^\markup { "M" } f'4 f4 |
  e,4_\markup { "_" }^\markup { "M" } g' g  |
  e,4_\markup { "_" } g' g  |
  f,4^\markup { "M" } f'4 f4 |
  d,4^\markup { "7" } d'4 d4 |
  g,4^\markup { "M" } g'4 g4 |
  g,4 g'4 g4 |
  c,,4^\markup { "M" } c'4 c4 |
  f,4^\markup { "M" } f'4 f4 |
  c,4^\markup { "M" } c'4 c4 |
  g4^\markup { "m" } g'4 g4 |
  f,4^\markup { "M" } f'4 f4 |
  g,4^\markup { "7" } g'4 g4 |
  c,,4^\markup { "M" } c'4 c4 |
  <c, c'>2. |
  e4^\markup { "M" } e'4 e4 |
  e,4 e'4 e4 |
  a,4^\markup { "m" } a'4 a4 |
  a,4 a'4 a4 |
  g,4^\markup { "M" } g'4 g4 |
  d,4^\markup { "7" } d'4 d4 |
  g,4^\markup { "7" } g'4 g4 |
  g,4 g'4 g4 |
  c,,4^\markup { "M" } c'4 c4 |
  f,4^\markup { "M" } f'4 f4 |
  e,4_\markup { "_" }^\markup { "M" } g' g  |
  e,4_\markup { "_" } g' g  |
  f,4^\markup { "M" } f'4 f4 |
  g,4^\markup { "7" } g'4 g4 |
  c,,4^\markup { "M" } c'4 c4 |
  <c, c'>2. |
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
    \tempo 4 = 120  }
}
