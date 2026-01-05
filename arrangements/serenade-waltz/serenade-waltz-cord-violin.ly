\version "2.24.4"

\header {
  title = "Serenade Waltz"
  subtitle = "Trio from Zordan‘s Piano Accordion Method"
  instrument = "Violin and Accordion"
  arranger = "Arranged by Isaac Boyd"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

violinMusic = \relative c' {
  \key c \major
  \time 3/4
  \tempo "Slowly"
  

  e4 f4 fis4 |
  g4 a4 b4 |
  d2. |
  c2. |
  e2. |
  e2. |
  f2.( |
  f4) r4 r4 |
  f,4 g4 a4 |
  b4 c4 cis4 |
  e2. |
  d2. |
  f2. |
  a2. |
  g2.( |
  g4) r4 r4 |
  e,4 f4 fis4 |
  g4 a4 b4 |
  d2. |
  c2. |
  e2. |
  e2. |
  f2.( |
  f4) r4 r4 |
  a4 gis4 a4 |
  c4 b4 a4 |
  g2. |
  c2. |
  a2. |
  b2. |
  c2.( |
  c4) r4 r4 |

  \bar "|."
}

accordionRight = \relative c' {
  \key c \major
  \time 3/4

  c2 dis4 |
  e2 g4 |
  e2. |
  g2. |
  c2. |
  a2. |
  b2.( |
  b4) r4 r4 |
  d,2 f4 |
  g2 ais4 |
  g2. |
  b2. |
  d2. |
  f2. |
  e2.( |
  e4) r4 r4 |
  c,2 dis4 |
  e2 g4 |
  e2. |
  g2. |
  c2. |
  g4 a4 ais4 |
  <a c>2.( |
  <a c>4) r4 r4 |
  f'2.( |
  f2.)
  e2. |
  e2. |
  f2. |
  f2. |
  e2.( |
  e4) r4 r4 |
  \bar "|."
}

accordionLeft = \relative c {
  \key c \major
  \time 3/4
  \clef bass
  
  c,4^\markup { "M" } c'4 c4 |
  e,4_\markup { "_" } c' c  |
  c,4 c'4 c4 |
  e,4_\markup { "_" } c' c  |
  c,4 c'4 c4 |
  e,4_\markup { "_" } c' c  |
  g4^\markup { "7" } g'4 g4 |
  b,4_\markup { "_" } g' g  |
  g,4 g'4 g4 |
  b,4_\markup { "_" } g' g  |
  g,4 g'4 g4 |
  b,4_\markup { "_" } g' g  |
  g,4 g'4 g4 |
  b,4_\markup { "_" } g' g  |
  c,,4^\markup { "M" } c'4 c4 |
  c,4 c'4 c4 |
  c,4 c'4 c4 |
  e,4_\markup { "_" } c' c  |
  c,4 c'4 c4 |
  e,4_\markup { "_" } c' c  |
  c,4 c'4 c4 |
  c,4 d4 e4_\markup { "_" } |
  f4^\markup { "M" } f'4 f4 |
  f,4 f'4 f4 |
  f,4 f'4 f4 |
  a,4_\markup { "_" } f'4 f4 |
  c,4^\markup { "M" } c'4 c4 |
  c,4 c'4 c4 |
  f,4 f'4 f4 |
  g,4^\markup { "7" } g'4 g4 |
  c,,4 e4_\markup { "_" } g4 |
  c,4 r4 r4 |
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
    \tempo 4 = 100  }
}
