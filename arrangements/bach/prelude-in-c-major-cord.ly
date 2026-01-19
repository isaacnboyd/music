\version "2.24.1"

\header {
  title = "Prelude in C Major"
  composer = "Johann Sebastian Bach"
  arranger = "Arrangement by Isaac Boyd"
  tagline = ##f
}

accordionRight = \relative c' {
  \clef treble
  \numericTimeSignature
  \time 4/4
  \key c \major
  
  r8 g'16 c16 e16 g,16 c16 e16 r8 g,16 c16 e16 g,16 c16 e16 |
  r8 a,16 d16 f16 a,16 d16 f16 r8 a,16 d16 f16 a,16 d16 f16 |
  r8 g,16 d'16 f16 g,16 d'16 f16 r8 g,16 d'16 f16 g,16 d'16 f16 |
  r8 g,16 c16 e16 g,16 c16 e16 r8 g,16 c16 e16 g,16 c16 e16 |
  r8 a,16 e'16 a16 a,16 e'16 a16 r8 a,16 e'16 a16 a,16 e'16 a16 |
  r8 fis,16 a16 d16 fis,16 a16 d16 r8 fis,16 a16 d16 fis,16 a16 d16 |
  r8 g,16 d'16 g16 g,16 d'16 g16 r8 g,16 d'16 g16 g,16 d'16 g16 |
  r8 e,16 g16 c16 e,16 g16 c16 r8 e,16 g16 c16 e,16 g16 c16 |
  r8 e,16 g16 c16 e,16 g16 c16 r8 e,16 g16 c16 e,16 g16 c16 |
  r8 d,16 fis16 c'16 d,16 fis16 c'16 r8 d,16 fis16 c'16 d,16 fis16 c'16 |
  r8 d,16 g16 b16 d,16 g16 b16 r8 d,16 g16 b16 d,16 g16 b16 |
  r8 e,16 g16 des'16 e,16 g16 des'16 r8 e,16 g16 des'16 e,16 g16 des'16 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
}

accordionLeft = \relative c {
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key c \major
  
   % This piece uses polyphonic notation.
  
  <<
    { c2 c2 }
    \\
    { r16 c'8.^\markup { "M" }( c16) r4 c8.( c16) r8 }
  >>
  <<
    { c,2 c2 }
    \\
    { r16 d'8.^\markup { "m" }( d16) r4 d8.( d16) r8 }
  >>
  <<
    { b,2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 g'8.^\markup { "7" }( g16) r4 g8.( g16) r8 }
  >>  
  <<
    { c,2 c2 }
    \\
    { r16 c'8.^\markup { "M" }( c16) r4 c8.( c16) r8 }
  >>
  <<
    { c,2 c2 }
    \\
    { r16 a'8.^\markup { "m" }( a16) r4 a8.( a16) r8 }
  >>
  <<
    { c,2 c2 }
    \\
    { r16 d'8.^\markup { "M" }( d16) r4 d8.( d16) r8 }
  >>
  <<
    { b,2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 g'8.^\markup { "M" }( g16) r4 g8.( g16) r8 }
  >>  
  <<
    { b,2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 c'8.^\markup { "M" }( c16) r4 c8.( c16) r8 }
  >>  
  <<
    { a,2 a2 }
    \\
    { r16 a'8.^\markup { "m" }( a16) r4 a8.( a16) r8 }
  >>    
  <<
    { d,2 d2 }
    \\
    { r16 d'8.^\markup { "7" }( d16) r4 d8.( d16) r8 }
  >> 
  <<
    { g,,2 g2 }
    \\
    { r16 g'8.^\markup { "M" }( g16) r4 g8.( g16) r8 }
  >> 
  <<
    { g,2 g2 }
    \\
    { r16 g'8.^\markup { "m" }( g16) r4 g8.( g16) r8 }
  >> 
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |

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
    \tempo 4 = 70
  }
}
