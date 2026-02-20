\version "2.24.1"

\header {
  title = "Waltz Exercise WIP"
  composer  = "Isaac Boyd"
}

accordionRight = \relative c' {
  \clef treble
  \time 3/4
  \key f \major
  
  \tuplet 3/2 { c8[ e g] } \tuplet 3/2 { c,8[ e g] } \tuplet 3/2 { c,8[ e g] } |
  \tuplet 3/2 { e8[ g c] } \tuplet 3/2 { e,8[ g c] } \tuplet 3/2 { e,8[ g c] } |
  \tuplet 3/2 { g8[ c e] } \tuplet 3/2 { g,8[ c e] } \tuplet 3/2 { g,8[ c e] } |
  \tuplet 3/2 { e,8[ g c] } \tuplet 3/2 { e,8[ g c] } \tuplet 3/2 { e,8[ g c] } |
  \tuplet 3/2 { d,8[ f a] } \tuplet 3/2 { d,8[ f a] } \tuplet 3/2 { d,8[ f a] } |
  \tuplet 3/2 { f8[ a d] } \tuplet 3/2 { f,8[ a d] } \tuplet 3/2 { f,8[ a d] } |
  \tuplet 3/2 { a8[ d f] } \tuplet 3/2 { a,8[ d f] } \tuplet 3/2 { a,8[ d f] } |
  \tuplet 3/2 { f,8[ a d] } \tuplet 3/2 { f,8[ a d] } \tuplet 3/2 { f,8[ a d] } |


}

accordionLeft = \relative c {
  \clef bass
  \time 3/4
  \key f \major
  
  c4^\markup { "CM" } c' c4 |
  c,4^\markup { "CM" } c' c4 |
  c,4^\markup { "CM" } c' c4 |
  c,4^\markup { "CM" } c' c4 |
  d,,4^\markup { "Dm" } d'4 d4 |
  d,4^\markup { "Dm" } d'4 d4 |
  d,4^\markup { "Dm" } d'4 d4 |
  d,4^\markup { "Dm" } d'4 d4 |

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
