\version "2.24.1"

\header {
  title = "Fig Newton Waltz"
  composer = "Isaac Boyd"
}

violinMusic = \relative c'' {
  \clef treble
  \time 3/4
  \key f \major
  
  r4 c4( d4 ) |
  \tuplet 3/2 { e8[ bes g] } \tuplet 3/2 { d'8[ bes g] } \tuplet 3/2 { c8[ bes g] } |
  \tuplet 3/2 { c8[ bes g] } \tuplet 3/2 { d'8[ bes g] } \tuplet 3/2 { e'8[ bes g] } |
  \tuplet 3/2 { f'8[ c a] } \tuplet 3/2 { e'8[ c a] } \tuplet 3/2 { d8[ c a] } |
  \tuplet 3/2 { d8[ c a] } \tuplet 3/2 { e'8[ c a] } \tuplet 3/2 { f'8[ c a] } |
  \tuplet 3/2 { e'8[ bes g] } \tuplet 3/2 { d'8[ bes g] } \tuplet 3/2 { c8[ bes g] } |
  \tuplet 3/2 { c8[ bes g] } \tuplet 3/2 { d'8[ bes g] } \tuplet 3/2 { e'8[ bes g] } |
  \tuplet 3/2 { f'8[ c a] } \tuplet 3/2 { e'8[ c a] } \tuplet 3/2 { d8[ c a] } |
  f'2. |
}

accordionRight = \relative c' {
  \clef treble
  \time 3/4
  \key f \major
  
  r2. |
  r4 <g'' bes c e >4-. <g bes c e >4-. |
  r4 <g bes c e >4-. <g bes c e >4-. |
  r4 <a c f >4-. <a c f >4-. |
  r4 <a c f >4-. <a c f >4-. |
  r4 <g bes c e >4-. <g bes c e >4-. |
  r4 <g bes c e >4-. <g bes c e >4-. |
  r4 <a c f >8-. <a c f >8-. <a c f >4-. |
  <a c f >2. |
}

accordionLeft = \relative c {
  \clef bass
  \time 3/4
  \key c \major
  
  r2. |
  c4 c'4^\markup { "7" } c4 |
  e,4_\markup { "_" } c'4 c4 |
  f,,4 f'4^\markup { "M" } f4 |
  a,4_\markup { "_" } f'4 f4 |
  c4 c'4^\markup { "7" } c4 |
  e,4_\markup { "_" } c'4 c4 |
  f,,4 f'4^\markup { "M" } f4 |
  f,4_\markup { "_" } f'4 <f, f'>4 |
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
    \tempo 4 = 75
  }
}
