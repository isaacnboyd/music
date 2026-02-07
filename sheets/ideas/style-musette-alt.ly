\version "2.24.1"

\header {
  title = "Style Musette Alt"
  composer = "Isaac Boyd"
}

accordionRight = \relative c'' {
  \clef treble
  \time 3/4
  \key f \major
  
  r4 c4 d4 |
  \tuplet 3/2 { e8 f8 e8 } |
  \tuplet 3/2 { d8 e8 d8 } |
  \tuplet 3/2 { c8 d8 c8 } |
  \tuplet 3/2 { g'8 a8 g8 } |
  \tuplet 3/2 { f8 g8 f8 } |
  \tuplet 3/2 { e8 f8 e8 } |
  <c g'>4 <c f>2  |
  r4 <c a'>8  <c a'>8 <c a'>8 <c a'>8|
  <c a'>4 g'8 a8 bes4 |
  r4 <d, g>8  <d g>8 <d g>8 <d g>8|
  <d g>4 f8 g8 a4 |
  r4 c,4 d4 |
}

accordionLeft = \relative c {
  \clef bass
  \time 3/4
  \key f \major
  
  r2. |
  c,4 c'4^\markup { "7" } c4 |
  e,4_\markup { "_" } c'4 c4 |
  f,4 f'4^\markup { "M" } f4 |
  a,4_\markup { "_" } f'4 f4 |
  c,4 c'4^\markup { "7" } c4 |
  e,4_\markup { "_" } c'4 c4 |
  f,4 f'4^\markup { "M" } f4 |
  a,4_\markup { "_" } f'4 f4 |

}

\score {
  <<
    
    \new PianoStaff \with {
      instrumentName = "Accordion"
    } <<
      \new Staff = "right" \accordionRight
      \new Staff = "left" \accordionLeft
    >>
  >>
  
  \layout { }
  \midi {
    \tempo 4 = 90
  }
}
