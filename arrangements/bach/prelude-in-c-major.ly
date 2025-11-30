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
  r1 |
  r1 |
  r1 | 
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
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
    { c'2 c2 }
    \\
    { r16 e8._\markup { "_" }( e16) r4 e8._\markup { "_" }( e16) r8 }
  >>
  
  
  
  % THIS IS THE ONLY CORRECT ONE ^
  
  
  
  
  
  <<
    { c2 c2 }
    \\
    { r16 d8.( d8) r8. d8.( d4) }
  >>
  <<
    { b2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 d8.( d8) r8. d8.( d4) }
  >>  
  <<
    { c2 c2 }
    \\
    { r16 e8._\markup { "_" }( e8) r8. e8._\markup { "_" }( e4) }
  >>
  <<
    { c2 c2 }
    \\
    { r8 e8_\markup { "_" }( e4) r8 e8_\markup { "_" }( e4) }
  >>
  <<
    { c2 c2 }
    \\
    { r8 d( d4) r8 d( d4) }
  >>
  <<
    { b2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r8 d( d4) r8 d( d4) }
  >>  
  <<
    { b2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r8 c( c4) r8 c( c4) }
  >>  
  <<
    { a2_\markup { "_" } a2_\markup { "_" } }
    \\
    { r8 c( c4) r8 c( c4) }
  >>
  <<
    { d,2 d2 }
    \\
    { r8 a'( a4) r8 a( a4) }
  >>
  <<
    { g2 g2 }
    \\
    { r8 b_\markup { "_" }( b4) r8 b_\markup { "_" }( b4) }
  >>
  <<
    { g2 g2 }
    \\
    { r8 bes_\markup { "_" }( bes4) r8 bes_\markup { "_" }( bes4) }
  >>
  <<
    { f2 f2 }
    \\
    { r8 a_\markup { "_" }( a4) r8 a_\markup { "_" }( a4) }
  >>
  % take a break here
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
