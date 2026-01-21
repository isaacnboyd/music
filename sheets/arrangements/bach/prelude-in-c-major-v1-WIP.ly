\version "2.24.1"

\header {
  title = "Prelude in C Major V1"
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
    { r16 d8.( d16) r4 d8.( d16) r8 }
  >>
  <<
    { b2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 d8.( d16) r4 d8.( d16) r8 }
  >>  
  <<
    { c2 c2 }
    \\
    { r16 e8._\markup { "_" }( e16) r4 e8._\markup { "_" }( e16) r8 }
  >>
  <<
    { c2 c2 }
    \\
    { r16 e8._\markup { "_" }( e16) r4 e8._\markup { "_" }( e16) r8 }
  >>
  <<
    { c2 c2 }
    \\
    { r16 d8.( d16) r4 d8.( d16) r8 }
  >>
  <<
    { b2_\markup { "_" } b2_\markup { "_" } }
    \\
    { r16 d8.( d16) r4 d8.( d16) r8}
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
